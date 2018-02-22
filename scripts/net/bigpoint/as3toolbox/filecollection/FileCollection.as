package net.bigpoint.as3toolbox.filecollection
{
   import §----_§.§-_______§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.utils.Timer;
   import mx.logging.ILogger;
   import mx.logging.Log;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFileLoadEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.ImageFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.JSONFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.SWFFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.StringFinisher;
   import net.bigpoint.as3toolbox.filecollection.finish.XMLFinisher;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.as3toolbox.filecollection.vo.LoadVO;
   import net.bigpoint.as3toolbox.filecollection.vo.LocationVO;
   
   public class FileCollection extends EventDispatcher
   {
      
      private static const logger:ILogger = Log.getLogger("FileCollection");
      
      public static var logging:Boolean = false;
      
      public static var fileLoaderClass:Class = FileCollectionLoader;
       
      
      private var xmlLoader:URLLoader;
      
      private var xml:XML;
      
      private var paramKeyList:Object;
      
      private var locationList:Object;
      
      private var fileList:Object;
      
      private var queueSize:int;
      
      private var finisherClassList:Object;
      
      private var finisherList:Object;
      
      private var fileLoaderList:Object;
      
      private var m_sBasePath:String;
      
      public var maxTries:int = 5;
      
      private var _numOfFiles:int;
      
      private var _numOfFilesLoaded:int;
      
      private var _filePrefix:String = "";
      
      public var loadLinear:Boolean = false;
      
      private var _linearLoadList:Array;
      
      private var _currentLinearLoad:LoadVO;
      
      private var useHash:Boolean = false;
      
      private var _hashFilesList:Vector.<String>;
      
      private var _resourceFileHash:String;
      
      public function FileCollection(param1:String = "", param2:Boolean = false)
      {
         this._linearLoadList = new Array();
         this._hashFilesList = new Vector.<String>();
         super();
         this.useHash = param2;
         this.m_sBasePath = param1;
         this.paramKeyList = new Object();
         this.locationList = new Object();
         this.fileList = new Object();
         this.fileLoaderList = new Object();
         this.finisherList = new Object();
         this.finisherClassList = new Object();
         this.queueSize = 0;
         this._numOfFilesLoaded = 0;
         this._numOfFiles = 0;
         this.addDefaultFinisherClasses();
         logger.debug("init FileCollection");
      }
      
      private function addDefaultFinisherClasses() : void
      {
         this.addFinisherClass("swf",SWFFinisher);
         this.addFinisherClass("xml",XMLFinisher);
         this.addFinisherClass("png",ImageFinisher);
         this.addFinisherClass("jpg",ImageFinisher);
         this.addFinisherClass("js",JSONFinisher);
         this.addFinisherClass("txt",StringFinisher);
      }
      
      public function addFinisherClass(param1:String, param2:Class) : void
      {
         this.finisherClassList[param1] = param2;
      }
      
      public function loadResourceFile(param1:String) : void
      {
         this.xmlLoader = new URLLoader();
         this.xmlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.handleIOError);
         this.xmlLoader.addEventListener(Event.COMPLETE,this.handleXMLLoad);
         this.xmlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.handleXMLSecurityError);
         this.xmlLoader.dataFormat = URLLoaderDataFormat.BINARY;
         this.xmlLoader.load(new URLRequest(this.m_sBasePath + param1));
      }
      
      public function set hashFilesList(param1:Vector.<String>) : void
      {
         this._hashFilesList = param1;
      }
      
      private function handleXMLLoad(param1:Event) : void
      {
         var xmlParsedEvent:FileCollectionEvent = null;
         var contents:String = null;
         var event:Event = param1;
         try
         {
            xmlParsedEvent = new FileCollectionEvent(FileCollectionEvent.RESOURCE_XML_PARSED);
            contents = event.target.data;
            this._resourceFileHash = §-_______§.hash(contents);
            this.xml = new XML(this.preParseXML(contents));
            xmlParsedEvent.xml = this.xml;
            dispatchEvent(xmlParsedEvent);
            this.extractLocationsFromXML();
            this.extractFilesFromXML();
            this.xml = undefined;
         }
         catch(e:TypeError)
         {
            e.message;
            dispatchEvent(new FileCollectionEvent(FileCollectionEvent.RESOURCE_FILE_FORMAT_ERROR));
            return;
         }
         dispatchEvent(new FileCollectionEvent(FileCollectionEvent.RESOURCE_FILE_LOADED));
      }
      
      private function extractLocationsFromXML() : void
      {
         var _loc1_:XML = null;
         for each(_loc1_ in this.xml.location)
         {
            this.locationList[_loc1_.@id] = new LocationVO(_loc1_.@id,this._filePrefix + _loc1_.@path);
            if(logging)
            {
               "FileCollection.extractLocationsFromXML() -> add location node: " + _loc1_.@id;
            }
         }
      }
      
      private function extractFilesFromXML() : void
      {
         var _loc1_:FileVO = null;
         var _loc2_:XML = null;
         for each(_loc2_ in this.xml.file)
         {
            this._numOfFiles++;
            _loc1_ = new FileVO(_loc2_.@id,this.locationList[_loc2_.@location],_loc2_.@name,_loc2_.@type,_loc2_.@version,_loc2_);
            _loc1_.cdnHash = _loc2_.@hash;
            this.fileList[_loc2_.@id] = _loc1_;
            if(logging)
            {
               "FileCollection.extractFilesFromXML() -> add file node: " + _loc2_.@id;
            }
         }
      }
      
      private function preParseXML(param1:String) : String
      {
         var _loc3_:* = null;
         var _loc4_:RegExp = null;
         var _loc2_:String = param1;
         for(_loc3_ in this.paramKeyList)
         {
            if(logging)
            {
               "FileCollection.preParseXML() -> replace %" + _loc3_ + "% with \'" + this.paramKeyList[_loc3_] + "\'";
            }
            _loc4_ = new RegExp("%" + _loc3_ + "%","sg");
            _loc2_ = _loc2_.replace(_loc4_,this.paramKeyList[_loc3_]);
         }
         return _loc2_;
      }
      
      private function handleIOError(param1:IOErrorEvent) : void
      {
         dispatchEvent(new FileCollectionEvent(FileCollectionEvent.RESOURCE_FILE_NOT_FOUND));
         throw new Error("resource file not found!");
      }
      
      private function handleXMLSecurityError(param1:SecurityErrorEvent) : void
      {
         dispatchEvent(new FileCollectionEvent(FileCollectionEvent.RESOURCE_FILE_SECURITY_BREACH));
         throw new Error("resource file security breach!");
      }
      
      public function clearCollection() : void
      {
         if(!logging)
         {
         }
         this.fileList = new Object();
         this.locationList = new Object();
         this.paramKeyList = new Object();
         this.queueSize = 0;
         this.xml = undefined;
      }
      
      public function load(param1:String = null, param2:Function = null, param3:Function = null) : void
      {
         var fileNode:FileVO = null;
         var fileLoader:FileCollectionLoader = null;
         var linearLoad:LoadVO = null;
         var key:String = param1;
         var callbackComplete:Function = param2;
         var callbackError:Function = param3;
         try
         {
            if(this.loadLinear)
            {
               if(key != null)
               {
                  linearLoad = new LoadVO();
                  linearLoad.key = key;
                  linearLoad.callbackComplete = callbackComplete;
                  linearLoad.callbackError = callbackError;
                  this._linearLoadList.push(linearLoad);
               }
               if(this._currentLinearLoad != null)
               {
                  return;
               }
               if(this._linearLoadList.length < 1)
               {
                  return;
               }
               this._currentLinearLoad = this._linearLoadList.shift();
               if(this._currentLinearLoad == null)
               {
                  return;
               }
               key = this._currentLinearLoad.key;
               callbackComplete = this._currentLinearLoad.callbackComplete;
               callbackError = this._currentLinearLoad.callbackError;
            }
            if(key == null)
            {
               return;
            }
            fileNode = this.fileList[key];
            if(fileNode == null)
            {
               if(logging)
               {
                  "FileCollection.load() -> no file-node found with key \'" + key + "\'";
               }
               if(callbackError != null)
               {
                  callbackError(key);
               }
               return;
            }
            if(this.finisherList[key] != null)
            {
               if(FileCollectionFinisher(this.finisherList[key]).isFinished == true)
               {
                  if(logging)
                  {
                     "FileCollection.load() -> already loaded \'" + key + "\'";
                  }
                  if(callbackComplete != null)
                  {
                     callbackComplete(this.finisherList[key]);
                  }
                  return;
               }
               this.addCallbacks(fileNode,callbackComplete,callbackError);
               return;
            }
            this.addCallbacks(fileNode,callbackComplete,callbackError);
            if(this.fileLoaderList[key] != null)
            {
               if(FileCollectionLoader(this.fileLoaderList[key]).isLoading)
               {
                  return;
               }
               FileCollectionLoader(this.fileLoaderList[key]).fileVO = fileNode;
               FileCollectionLoader(this.fileLoaderList[key]).loadFile(this.useHash,this.m_sBasePath);
               return;
            }
            if(logging)
            {
               "FileCollection.load() -> \'" + key + "\'";
            }
            fileLoader = new fileLoaderClass();
            fileLoader.addEventListener(Event.COMPLETE,this.handleFileLoad);
            fileLoader.addEventListener(IOErrorEvent.IO_ERROR,this.handleFileLoadError);
            fileLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
            fileLoader.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.httpStatusHandler);
            fileLoader.dataFormat = URLLoaderDataFormat.BINARY;
            this.fileLoaderList[key] = fileLoader;
            fileLoader.fileVO = fileNode;
            fileLoader.loadFile(this.useHash,this.m_sBasePath);
            this.queueSize++;
            return;
         }
         catch(e:Error)
         {
            logger.error("ERROR LOAD - " + key);
            return;
         }
      }
      
      private function addCallbacks(param1:FileVO, param2:Function, param3:Function) : *
      {
         if(param1)
         {
            if(param2)
            {
               param1.callbackComplete.push(param2);
            }
            if(param3)
            {
               param1.callbackError.push(param3);
            }
         }
      }
      
      public function hasLoader(param1:String) : Boolean
      {
         return this.fileLoaderList.hasOwnProperty(param1);
      }
      
      public function isInLinearLoadList(param1:String) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = this._linearLoadList.length;
         var _loc4_:Boolean = false;
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            if(this._linearLoadList[_loc2_].key == param1)
            {
               _loc4_ = true;
               break;
            }
            _loc2_++;
         }
         return _loc4_;
      }
      
      private function httpStatusHandler(param1:HTTPStatusEvent) : void
      {
      }
      
      private function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
      }
      
      private function handleFileLoad(param1:Event) : void
      {
         var _loc4_:FileCollectionFinisher = null;
         if(logging)
         {
            "FileCollection.handleFileLoad() -> target: " + param1.target;
         }
         var _loc2_:FileVO = FileCollectionLoader(param1.target).fileVO;
         var _loc3_:FileCollectionLoader = FileCollectionLoader(param1.target);
         _loc2_.setData(_loc3_.data,_loc3_.bytesTotal,this._hashFilesList.indexOf(_loc2_.id) != -1);
         _loc4_ = new this.finisherClassList[_loc2_.type]();
         _loc4_.addEventListener(FileCollectionEvent.RESOURCE_CLEARED,this.handleResourceCleared);
         this.addFinisher(_loc2_.id,_loc4_);
         _loc4_.addEventListener(FileCollectionFinishEvent.FILE_FINISH,this.handleFileFinish);
         _loc4_.start(_loc2_);
      }
      
      private function handleResourceCleared(param1:FileCollectionEvent) : void
      {
         var _loc2_:FileCollectionFinisher = param1.currentTarget as FileCollectionFinisher;
         _loc2_.removeEventListener(FileCollectionFinishEvent.FILE_FINISH,this.handleFileFinish);
         delete this.fileLoaderList[param1.text];
         delete this.finisherList[param1.text];
      }
      
      private function handleFileFinish(param1:FileCollectionFinishEvent) : void
      {
         var _loc3_:Vector.<Function> = null;
         var _loc4_:int = 0;
         var _loc5_:Function = null;
         var _loc6_:FileCollectionFinisher = null;
         var _loc7_:int = 0;
         var _loc2_:FileVO = param1.finisher.fileVO;
         _loc2_.loaded = true;
         param1.finisher.isFinished = true;
         this._numOfFilesLoaded++;
         dispatchEvent(new FileCollectionFileLoadEvent(FileCollectionFileLoadEvent.FILE_LOADED,_loc2_));
         if(_loc2_.callbackComplete != null)
         {
            _loc3_ = _loc2_.callbackComplete;
            _loc4_ = _loc3_.length;
            _loc6_ = param1.finisher;
            _loc7_ = 0;
            while(_loc7_ < _loc4_)
            {
               _loc5_ = _loc3_[_loc7_];
               if(_loc5_ != null)
               {
                  _loc5_(_loc6_);
               }
               _loc7_++;
            }
            _loc2_.callbackComplete.length = 0;
         }
         this._currentLinearLoad = null;
         if(--this.queueSize <= 0)
         {
            if(this._linearLoadList.length == 0)
            {
               dispatchEvent(new FileCollectionEvent(FileCollectionEvent.ALL_FILES_LOADED));
            }
            else
            {
               this.load();
            }
         }
      }
      
      private function addFinisher(param1:String, param2:FileCollectionFinisher) : void
      {
         this.finisherList[param1] = param2;
      }
      
      private function handleFileLoadError(param1:IOErrorEvent) : void
      {
         var xF:FileVO = null;
         var event:IOErrorEvent = param1;
         if(logging)
         {
            "FileCollection.handleFileLoadError() -> target: " + event.target;
         }
         dispatchEvent(new FileCollectionFileLoadEvent(FileCollectionFileLoadEvent.FILE_LOAD_ERROR,FileCollectionLoader(event.target).fileVO));
         xF = FileCollectionLoader(event.target).fileVO;
         if(this.maxTries > 0 && xF.numTries >= this.maxTries)
         {
            xF.callbackError.forEach(function(param1:Function, param2:int, param3:Vector.<Function>):void
            {
               var _loc4_:Boolean = false;
               var _loc5_:Boolean = true;
               param1(xF.id);
            });
            return;
         }
         var reloadTimer:Timer = new Timer(5000,1);
         reloadTimer.addEventListener(TimerEvent.TIMER_COMPLETE,function(param1:Event):void
         {
            var _loc2_:Boolean = true;
            var _loc3_:Boolean = false;
            load(xF.id);
         });
         reloadTimer.start();
      }
      
      public function loadAll() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.fileList)
         {
            this.load(FileVO(this.fileList[_loc1_]).id);
         }
      }
      
      public function setParam(param1:String, param2:String) : void
      {
         if(logging)
         {
            "FileCollection.setParam() -> key: " + param1 + " value:" + param2;
         }
         this.paramKeyList[param1] = param2;
      }
      
      public function isLoaded(param1:String) : Boolean
      {
         var result:Boolean = false;
         var id:String = param1;
         try
         {
            result = FileCollectionFinisher(this.finisherList[id]).isFinished;
         }
         catch(e:Error)
         {
            return false;
         }
         return result;
      }
      
      public function getFinisher(param1:String) : FileCollectionFinisher
      {
         return this.finisherList[param1];
      }
      
      public function get numOfFiles() : int
      {
         return this._numOfFiles;
      }
      
      public function get numOfFilesLoaded() : int
      {
         return this._numOfFilesLoaded;
      }
      
      public function get filePrefix() : String
      {
         return this._filePrefix;
      }
      
      public function set filePrefix(param1:String) : void
      {
         this._filePrefix = param1;
      }
      
      public function get byteLoaded() : int
      {
         var _loc2_:FileCollectionLoader = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this.fileLoaderList)
         {
            _loc1_ = _loc1_ + _loc2_.bytesLoaded;
         }
         return _loc1_;
      }
      
      public function get listOfFiles() : Object
      {
         return this.fileList;
      }
      
      public function cleanUpAllFinishers() : void
      {
         var _loc1_:FileCollectionFinisher = null;
         for each(_loc1_ in this.finisherList)
         {
            _loc1_.clear();
         }
         this.finisherList = new Object();
         this.fileLoaderList = new Object();
      }
      
      public function get resourceFileHash() : String
      {
         return this._resourceFileHash;
      }
   }
}
