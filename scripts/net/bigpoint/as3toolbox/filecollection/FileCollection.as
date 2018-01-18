package net.bigpoint.as3toolbox.filecollection
{
   import §----_§.§-_______§;
   import §-_-_--__§.§-_--_-_§;
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
      
      private static const logger:ILogger;
      
      public static var logging:Boolean = false;
      
      public static var fileLoaderClass:Class;
      
      {
         if(!_loc1_)
         {
            logger = Log.getLogger("FileCollection");
            if(!_loc1_)
            {
               if(_loc1_)
               {
                  addr50:
                  while(true)
                  {
                     fileLoaderClass = FileCollectionLoader;
                     if(_loc1_)
                     {
                     }
                  }
               }
               addr78:
               while(true)
               {
                  logging = false;
               }
            }
            while(true)
            {
               if(!_loc2_)
               {
                  break;
               }
               §§goto(addr50);
            }
            return;
         }
         while(true)
         {
            if(!_loc2_)
            {
               §§goto(addr78);
            }
            §§goto(addr92);
         }
      }
      
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
         if(!_loc3_)
         {
            this._linearLoadList = new Array();
            if(!_loc3_)
            {
               if(_loc3_)
               {
                  addr39:
                  loop0:
                  while(true)
                  {
                     super();
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                        }
                        addr177:
                        loop1:
                        while(true)
                        {
                           this.useHash = param2;
                           loop2:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 addr191:
                                 while(true)
                                 {
                                    this.paramKeyList = new Object();
                                    if(!_loc4_)
                                    {
                                    }
                                    break loop0;
                                 }
                              }
                              loop15:
                              while(true)
                              {
                                 this.m_sBasePath = param1;
                                 loop16:
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       loop13:
                                       while(true)
                                       {
                                          this.fileList = new Object();
                                          addr287:
                                          loop10:
                                          while(true)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr76:
                                                while(true)
                                                {
                                                   this.fileLoaderList = new Object();
                                                   if(!_loc3_)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                         }
                                                         this.finisherList = new Object();
                                                         if(!_loc3_)
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  loop7:
                                                                  while(true)
                                                                  {
                                                                     §§push(this);
                                                                     §§push(0);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push((§§pop() * 103 * 92 - 1 - 54) * 119);
                                                                     }
                                                                     §§pop()._numOfFiles = §§pop();
                                                                     if(_loc4_)
                                                                     {
                                                                        if(_loc4_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              addr149:
                                                                              do
                                                                              {
                                                                                 logger.debug("init FileCollection");
                                                                              }
                                                                              while(_loc3_);
                                                                              
                                                                           }
                                                                           else
                                                                           {
                                                                              addr210:
                                                                              while(true)
                                                                              {
                                                                                 this.addDefaultFinisherClasses();
                                                                              }
                                                                           }
                                                                           while(!_loc3_)
                                                                           {
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    break loop0;
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           return;
                                                                        }
                                                                        break;
                                                                     }
                                                                  }
                                                                  continue loop2;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               continue loop16;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               continue loop1;
                                                            }
                                                            §§goto(addr344);
                                                         }
                                                      }
                                                      addr258:
                                                      while(true)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            continue loop15;
                                                         }
                                                         continue loop13;
                                                      }
                                                   }
                                                   addr243:
                                                   while(true)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         addr254:
                                                         while(true)
                                                         {
                                                            this.locationList = new Object();
                                                            §§goto(addr258);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         addr323:
                                                         while(true)
                                                         {
                                                            §§push(this);
                                                            §§push(0);
                                                            if(!_loc4_)
                                                            {
                                                               §§push((§§pop() - 1) * 98 + 71);
                                                            }
                                                            §§pop()._numOfFilesLoaded = §§pop();
                                                            §§goto(addr333);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                this.finisherClassList = new Object();
                                                break loop0;
                                             }
                                          }
                                          §§goto(addr191);
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr191);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     break;
                  }
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        §§goto(addr323);
                     }
                     addr232:
                     while(true)
                     {
                        §§push(this);
                        §§push(0);
                        if(!_loc4_)
                        {
                           §§push(-(§§pop() - 1 + 21) + 1);
                        }
                        §§pop().queueSize = §§pop();
                        §§goto(addr243);
                     }
                  }
               }
               while(true)
               {
                  this._hashFilesList = new Vector.<String>();
                  if(_loc4_)
                  {
                     if(_loc3_)
                     {
                        §§goto(addr76);
                     }
                     else
                     {
                        §§goto(addr39);
                     }
                     §§goto(addr177);
                  }
                  break;
               }
               §§goto(addr287);
            }
            while(true)
            {
               if(_loc3_)
               {
                  §§goto(addr210);
               }
               §§goto(addr254);
            }
         }
         while(true)
         {
            if(!_loc4_)
            {
               §§goto(addr232);
            }
            §§goto(addr149);
         }
      }
      
      private function addDefaultFinisherClasses() : void
      {
         if(_loc2_)
         {
            this.addFinisherClass("swf",SWFFinisher);
            if(_loc1_)
            {
            }
            loop0:
            while(!_loc2_)
            {
               while(true)
               {
                  this.addFinisherClass("xml",XMLFinisher);
                  loop1:
                  while(true)
                  {
                     if(!_loc1_)
                     {
                     }
                     this.addFinisherClass("png",ImageFinisher);
                     loop2:
                     while(_loc2_)
                     {
                        loop3:
                        while(true)
                        {
                           this.addFinisherClass("jpg",ImageFinisher);
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    addr40:
                                    while(true)
                                    {
                                       this.addFinisherClass("js",JSONFinisher);
                                       if(!_loc1_)
                                       {
                                          if(_loc2_)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop3;
                                             }
                                          }
                                          else
                                          {
                                             continue loop1;
                                          }
                                       }
                                       else
                                       {
                                          break loop3;
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    this.addFinisherClass("txt",StringFinisher);
                                    break loop3;
                                 }
                              }
                              else
                              {
                                 continue loop2;
                              }
                           }
                           else
                           {
                              break;
                           }
                        }
                        continue loop0;
                     }
                     break loop0;
                  }
               }
            }
            return;
         }
         if(_loc1_)
         {
            §§goto(addr40);
         }
         §§goto(addr108);
      }
      
      public function addFinisherClass(param1:String, param2:Class) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.finisherClassList[param1] = param2;
         }
      }
      
      public function loadResourceFile(param1:String) : void
      {
         if(!_loc2_)
         {
            this.xmlLoader = new URLLoader();
            if(_loc3_)
            {
               if(!_loc3_)
               {
                  loop0:
                  while(true)
                  {
                     this.xmlLoader.load(new URLRequest(this.m_sBasePath + param1));
                     if(_loc3_)
                     {
                        if(_loc3_)
                        {
                           if(_loc2_)
                           {
                           }
                           addr84:
                           while(true)
                           {
                              if(_loc3_)
                              {
                              }
                              this.xmlLoader.addEventListener(Event.COMPLETE,this.handleXMLLoad);
                              if(!_loc2_)
                              {
                                 if(_loc3_)
                                 {
                                 }
                                 this.xmlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.handleXMLSecurityError);
                              }
                           }
                        }
                     }
                     addr149:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                     return;
                  }
                  §§goto(addr160);
               }
               addr67:
               while(true)
               {
                  this.xmlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.handleIOError);
                  §§goto(addr84);
               }
            }
            while(true)
            {
               if(_loc2_)
               {
                  §§goto(addr67);
               }
               §§goto(addr160);
            }
         }
         while(true)
         {
            if(_loc3_)
            {
            }
            this.xmlLoader.dataFormat = URLLoaderDataFormat.BINARY;
            §§goto(addr149);
         }
      }
      
      public function set hashFilesList(param1:Vector.<String>) : void
      {
         this._hashFilesList = param1;
      }
      
      private function handleXMLLoad(param1:Event) : void
      {
         if(_loc5_)
         {
            var xmlParsedEvent:FileCollectionEvent = null;
            if(_loc5_)
            {
               var contents:String = null;
               if(!_loc4_)
               {
                  var event:Event = param1;
               }
            }
         }
         try
         {
            xmlParsedEvent = new FileCollectionEvent(FileCollectionEvent.RESOURCE_XML_PARSED);
            if(!_loc4_)
            {
               contents = event.target.data;
               if(!_loc4_)
               {
                  if(_loc4_)
                  {
                     addr72:
                     while(true)
                     {
                        this.xml = new XML(this.preParseXML(contents));
                        if(!_loc4_)
                        {
                           if(!_loc5_)
                           {
                              loop1:
                              while(true)
                              {
                                 dispatchEvent(xmlParsedEvent);
                                 if(_loc5_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                       }
                                       addr163:
                                       while(true)
                                       {
                                          this.extractLocationsFromXML();
                                          if(!_loc5_)
                                          {
                                          }
                                          addr181:
                                          loop3:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                addr143:
                                                while(true)
                                                {
                                                   this.xml = undefined;
                                                   if(_loc4_)
                                                   {
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                break loop1;
                                             }
                                             continue loop1;
                                          }
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    if(_loc5_)
                                    {
                                       if(_loc4_)
                                       {
                                          §§goto(addr163);
                                       }
                                    }
                                    §§goto(addr197);
                                 }
                              }
                           }
                           while(true)
                           {
                              xmlParsedEvent.xml = this.xml;
                              §§goto(addr197);
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     this._resourceFileHash = §-_______§.hash(contents);
                  }
               }
               addr168:
               while(true)
               {
                  if(_loc5_)
                  {
                  }
                  this.extractFilesFromXML();
                  §§goto(addr181);
               }
            }
            while(true)
            {
               if(!_loc5_)
               {
                  §§goto(addr143);
               }
               else
               {
                  §§goto(addr72);
               }
               §§goto(addr168);
            }
         }
         catch(e:TypeError)
         {
            if(_loc5_)
            {
               e.message;
               if(!_loc4_)
               {
                  dispatchEvent(new FileCollectionEvent(FileCollectionEvent.RESOURCE_FILE_FORMAT_ERROR));
               }
            }
            return;
         }
         dispatchEvent(new FileCollectionEvent(FileCollectionEvent.RESOURCE_FILE_LOADED));
      }
      
      private function extractLocationsFromXML() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:XML = null;
         if(_loc5_)
         {
            §§push(0);
            if(_loc4_)
            {
               §§push(((§§pop() + 1) * 7 - 1) * 73);
            }
            if(!_loc4_)
            {
               if(!_loc4_)
               {
                  for each(_loc1_ in this.xml.location)
                  {
                     if(!_loc4_)
                     {
                        this.locationList[_loc1_.@id] = new LocationVO(_loc1_.@id,this._filePrefix + _loc1_.@path);
                        if(!_loc4_)
                        {
                           if(logging)
                           {
                              if(!_loc5_)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              continue;
                           }
                        }
                        else
                        {
                           continue;
                        }
                     }
                     §§push("FileCollection.extractLocationsFromXML() -> add location node: ");
                     if(_loc5_)
                     {
                        §§push(§§pop() + _loc1_.@id);
                     }
                     §§pop();
                  }
               }
            }
         }
      }
      
      private function extractFilesFromXML() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc1_:FileVO = null;
         var _loc2_:XML = null;
         if(_loc7_)
         {
            §§push(0);
            if(!_loc7_)
            {
               §§push((-§§pop() + 112) * 86 * 62 + 1 + 60 - 94);
            }
            if(!_loc8_)
            {
               if(!_loc8_)
               {
                  for each(_loc2_ in this.xml.file)
                  {
                     if(!_loc8_)
                     {
                        §§push(_loc5_._numOfFiles);
                        if(!_loc8_)
                        {
                           §§push(§§pop() + 1);
                        }
                        if(_loc7_)
                        {
                           _loc5_._numOfFiles = _loc6_;
                        }
                     }
                     _loc1_ = new FileVO(_loc2_.@id,this.locationList[_loc2_.@location],_loc2_.@name,_loc2_.@type,_loc2_.@version,_loc2_);
                     if(!_loc8_)
                     {
                        _loc1_.cdnHash = _loc2_.@hash;
                        if(!_loc8_)
                        {
                           this.fileList[_loc2_.@id] = _loc1_;
                           if(_loc8_)
                           {
                              continue;
                           }
                        }
                     }
                     if(logging)
                     {
                        if(_loc7_)
                        {
                           §§push("FileCollection.extractFilesFromXML() -> add file node: ");
                           if(!_loc8_)
                           {
                              §§push(§§pop() + _loc2_.@id);
                           }
                           §§pop();
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function preParseXML(param1:String) : String
      {
         var _loc4_:RegExp = null;
         §§push(param1);
         if(!_loc8_)
         {
            §§push(§§pop());
         }
         if(!_loc8_)
         {
            §§push(0);
            if(_loc8_)
            {
               §§push(-((§§pop() + 11) * 80) * 78);
            }
            if(_loc7_)
            {
               if(_loc7_)
               {
                  loop0:
                  for(var _loc3_ in this.paramKeyList)
                  {
                     if(!_loc8_)
                     {
                        if(logging)
                        {
                           if(!_loc7_)
                           {
                           }
                           addr99:
                           if(!_loc7_)
                           {
                              loop1:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop().replace(_loc4_,this.paramKeyList[_loc3_]));
                                 }
                                 if(_loc7_)
                                 {
                                    if(_loc7_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 addr157:
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       break loop1;
                                    }
                                    continue loop1;
                                 }
                              }
                              continue;
                           }
                        }
                        while(true)
                        {
                           _loc4_ = new RegExp("%" + _loc3_ + "%","sg");
                           §§goto(addr157);
                        }
                     }
                     §§push("FileCollection.preParseXML() -> replace %");
                     if(!_loc8_)
                     {
                        §§push(§§pop() + _loc3_);
                        if(!_loc8_)
                        {
                           §§push("% with \'");
                           if(_loc7_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!_loc7_)
                              {
                              }
                           }
                           addr97:
                           §§pop() + §§pop();
                           §§goto(addr99);
                        }
                        addr96:
                        §§goto(addr97);
                        §§push("\'");
                     }
                     §§push(§§pop() + this.paramKeyList[_loc3_]);
                     if(!_loc8_)
                     {
                        §§goto(addr96);
                     }
                     §§goto(addr97);
                  }
               }
               if(_loc7_)
               {
               }
            }
         }
         return _loc2_;
      }
      
      private function handleIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new FileCollectionEvent(FileCollectionEvent.RESOURCE_FILE_NOT_FOUND));
         }
         throw new Error("resource file not found!");
      }
      
      private function handleXMLSecurityError(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            dispatchEvent(new FileCollectionEvent(FileCollectionEvent.RESOURCE_FILE_SECURITY_BREACH));
         }
         throw new Error("resource file security breach!");
      }
      
      public function clearCollection() : void
      {
         if(_loc1_)
         {
            if(logging)
            {
               if(!_loc1_)
               {
               }
               loop0:
               while(true)
               {
                  if(!_loc1_)
                  {
                     addr77:
                     while(true)
                     {
                        this.locationList = new Object();
                        if(_loc2_)
                        {
                        }
                        loop1:
                        while(!_loc1_)
                        {
                           while(true)
                           {
                              this.paramKeyList = new Object();
                              loop2:
                              while(!_loc2_)
                              {
                                 while(true)
                                 {
                                    §§push(this);
                                    §§push(0);
                                    if(!_loc1_)
                                    {
                                       §§push(§§pop() + 1 - 1 - 15 - 97);
                                    }
                                    §§pop().queueSize = §§pop();
                                    if(!_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    addr97:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                              break loop1;
                           }
                        }
                        return;
                     }
                  }
                  addr94:
                  while(true)
                  {
                     this.xml = undefined;
                     §§goto(addr97);
                  }
               }
            }
            this.fileList = new Object();
            if(_loc1_)
            {
               if(!_loc1_)
               {
                  §§goto(addr42);
               }
               §§goto(addr77);
            }
         }
         while(true)
         {
            if(!_loc1_)
            {
               §§goto(addr94);
            }
            §§goto(addr120);
         }
      }
      
      public function load(param1:String = null, param2:Function = null, param3:Function = null) : void
      {
         if(!_loc8_)
         {
            var fileNode:FileVO = null;
            if(!_loc8_)
            {
               if(!_loc8_)
               {
               }
               var fileLoader:FileCollectionLoader = null;
               if(_loc7_)
               {
                  if(_loc8_)
                  {
                     addr59:
                     while(true)
                     {
                        var key:String = param1;
                        if(_loc8_)
                        {
                        }
                        break;
                     }
                  }
                  addr93:
                  while(true)
                  {
                     var linearLoad:LoadVO = null;
                     if(!_loc8_)
                     {
                        if(!_loc7_)
                        {
                           addr110:
                           var callbackError:Function = param3;
                        }
                        else
                        {
                           §§goto(addr59);
                        }
                     }
                  }
               }
               while(true)
               {
                  if(_loc7_)
                  {
                  }
                  var callbackComplete:Function = param2;
                  if(_loc8_)
                  {
                  }
               }
            }
            while(!_loc7_)
            {
               §§goto(addr93);
            }
            §§goto(addr110);
         }
         if(_loc7_)
         {
         }
         try
         {
            §§push(this.loadLinear);
            if(_loc7_)
            {
               if(§§pop())
               {
                  if(!_loc8_)
                  {
                     §§push(key);
                     if(!_loc8_)
                     {
                        §§push(null);
                        if(!_loc8_)
                        {
                           if(§§pop() != §§pop())
                           {
                              if(!_loc7_)
                              {
                              }
                              addr823:
                              loop4:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    addr834:
                                    while(true)
                                    {
                                       fileLoader = new fileLoaderClass();
                                       addr839:
                                       loop5:
                                       while(true)
                                       {
                                          if(!_loc7_)
                                          {
                                             break;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             fileLoader.addEventListener(Event.COMPLETE,this.handleFileLoad);
                                             addr802:
                                             loop7:
                                             while(true)
                                             {
                                                if(_loc8_)
                                                {
                                                   addr813:
                                                   while(true)
                                                   {
                                                      this.fileLoaderList[key] = fileLoader;
                                                      if(!_loc8_)
                                                      {
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   loop8:
                                                   while(true)
                                                   {
                                                      fileLoader.addEventListener(IOErrorEvent.IO_ERROR,this.handleFileLoadError);
                                                      loop9:
                                                      while(true)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            addr764:
                                                            while(true)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  addr689:
                                                                  while(true)
                                                                  {
                                                                     fileLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.securityErrorHandler);
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr700:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                           }
                                                                           fileLoader.addEventListener(HTTPStatusEvent.HTTP_STATUS,this.httpStatusHandler);
                                                                           if(_loc7_)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr722:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                    }
                                                                                    fileLoader.dataFormat = URLLoaderDataFormat.BINARY;
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          addr743:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                continue loop8;
                                                                                             }
                                                                                             §§goto(addr813);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          continue loop9;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                           }
                                                                           break loop7;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        break loop9;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            continue loop5;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         break loop5;
                                                      }
                                                   }
                                                }
                                                addr859:
                                                if(!_loc8_)
                                                {
                                                }
                                                §§push(this.queueSize);
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop() + 1);
                                                }
                                                if(!_loc8_)
                                                {
                                                   _loc5_.queueSize = _loc6_;
                                                }
                                                break;
                                             }
                                          }
                                       }
                                       fileLoader.loadFile(this.useHash,this.m_sBasePath);
                                       if(!_loc8_)
                                       {
                                          §§goto(addr859);
                                       }
                                    }
                                 }
                                 while(true)
                                 {
                                    fileLoader.fileVO = fileNode;
                                    if(!_loc8_)
                                    {
                                       §§goto(addr783);
                                    }
                                    §§goto(addr859);
                                 }
                              }
                           }
                           addr229:
                           if(this._currentLinearLoad != null)
                           {
                              if(_loc7_)
                              {
                                 if(_loc7_)
                                 {
                                 }
                                 return;
                              }
                              addr466:
                              §§push("FileCollection.load() -> already loaded \'");
                              if(!_loc8_)
                              {
                                 §§push(key);
                                 if(_loc7_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc8_)
                                    {
                                       §§push("\'");
                                       if(!_loc8_)
                                       {
                                          addr481:
                                          §§push(§§pop() + §§pop());
                                          if(_loc7_)
                                          {
                                             addr484:
                                             §§pop();
                                             if(_loc7_)
                                             {
                                                addr487:
                                                §§push(callbackComplete);
                                                if(_loc7_)
                                                {
                                                   addr492:
                                                   if(§§pop() != null)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§push(callbackComplete);
                                                      }
                                                      §§goto(addr859);
                                                   }
                                                   addr510:
                                                   return;
                                                }
                                                addr499:
                                                §§pop()(this.finisherList[key]);
                                                if(_loc7_)
                                                {
                                                   §§goto(addr510);
                                                }
                                                else
                                                {
                                                   §§goto(addr823);
                                                }
                                             }
                                             else
                                             {
                                                addr660:
                                                if(!_loc8_)
                                                {
                                                }
                                                §§push("FileCollection.load() -> \'");
                                                if(!_loc7_)
                                                {
                                                }
                                                addr672:
                                                §§push("\'");
                                             }
                                             §§goto(addr700);
                                          }
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    addr674:
                                    §§pop();
                                    if(!_loc8_)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§goto(addr689);
                                       }
                                       §§goto(addr834);
                                    }
                                    §§goto(addr700);
                                 }
                                 addr668:
                                 §§push(§§pop() + §§pop());
                                 if(_loc7_)
                                 {
                                    §§goto(addr672);
                                 }
                                 §§goto(addr674);
                              }
                              addr666:
                              §§goto(addr668);
                              §§push(key);
                           }
                           else
                           {
                              addr241:
                              §§push(this._linearLoadList.length);
                              §§push(1);
                              if(!_loc7_)
                              {
                                 §§push(-(-(§§pop() + 102) + 1) - 1);
                              }
                              if(§§pop() < §§pop())
                              {
                                 if(!_loc8_)
                                 {
                                    return;
                                 }
                                 loop21:
                                 while(_loc8_)
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       §§push(this._currentLinearLoad.callbackComplete);
                                       if(!_loc8_)
                                       {
                                          §§push(§§pop());
                                       }
                                       var /*UnknownSlot*/:* = §§pop();
                                       if(!_loc8_)
                                       {
                                          if(!_loc7_)
                                          {
                                             addr328:
                                             while(true)
                                             {
                                                §§push(_loc4_);
                                                §§push(this._currentLinearLoad.key);
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop());
                                                }
                                                var /*UnknownSlot*/:* = §§pop();
                                                if(!_loc8_)
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      break loop21;
                                                   }
                                                   continue loop13;
                                                }
                                                break;
                                             }
                                             if(_loc7_)
                                             {
                                             }
                                             if(FileCollectionLoader(this.fileLoaderList[key]).isLoading)
                                             {
                                                if(!_loc8_)
                                                {
                                                   return;
                                                }
                                             }
                                             else
                                             {
                                                FileCollectionLoader(this.fileLoaderList[key]).fileVO = fileNode;
                                                if(!_loc8_)
                                                {
                                                   addr606:
                                                   if(!_loc8_)
                                                   {
                                                      FileCollectionLoader(this.fileLoaderList[key]).loadFile(this.useHash,this.m_sBasePath);
                                                      if(_loc7_)
                                                      {
                                                         addr645:
                                                         if(_loc8_)
                                                         {
                                                            addr656:
                                                            if(logging)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                               }
                                                               §§goto(addr722);
                                                            }
                                                            §§goto(addr834);
                                                         }
                                                      }
                                                      §§goto(addr660);
                                                   }
                                                   return;
                                                }
                                             }
                                             §§goto(addr783);
                                          }
                                          else
                                          {
                                             §§push(_loc4_);
                                             §§push(this._currentLinearLoad.callbackError);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop());
                                             }
                                             var /*UnknownSlot*/:* = §§pop();
                                             if(!_loc8_)
                                             {
                                                continue loop21;
                                             }
                                             addr403:
                                             §§push(callbackError);
                                             if(!_loc8_)
                                             {
                                                §§push(null);
                                                if(!_loc8_)
                                                {
                                                   if(§§pop() != §§pop())
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         §§push(callbackError);
                                                         if(!_loc8_)
                                                         {
                                                            §§pop()(key);
                                                            if(!_loc7_)
                                                            {
                                                               §§goto(addr743);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr499);
                                                         }
                                                         §§goto(addr823);
                                                      }
                                                      break;
                                                   }
                                                   return;
                                                }
                                                §§goto(addr510);
                                             }
                                             else
                                             {
                                                §§goto(addr492);
                                             }
                                             §§goto(addr492);
                                          }
                                          §§goto(addr859);
                                       }
                                       break;
                                    }
                                    §§goto(addr764);
                                 }
                              }
                              else
                              {
                                 this._currentLinearLoad = this._linearLoadList.shift();
                                 if(!_loc8_)
                                 {
                                    if(this._currentLinearLoad == null)
                                    {
                                       if(_loc7_)
                                       {
                                          return;
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr328);
                                    }
                                    §§goto(addr783);
                                 }
                              }
                              addr523:
                              if(_loc8_)
                              {
                                 addr535:
                                 this.addCallbacks(fileNode,callbackComplete,callbackError);
                                 if(!_loc8_)
                                 {
                                    addr546:
                                    if(!_loc8_)
                                    {
                                       if(this.fileLoaderList[key] != null)
                                       {
                                          if(!_loc8_)
                                          {
                                             §§goto(addr578);
                                          }
                                          §§goto(addr802);
                                       }
                                       §§goto(addr656);
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr839);
                        }
                        addr353:
                        if(§§pop() == §§pop())
                        {
                           if(_loc7_)
                           {
                              addr356:
                              if(_loc7_)
                              {
                              }
                              return;
                           }
                           §§goto(addr487);
                        }
                        else
                        {
                           fileNode = this.fileList[key];
                           if(_loc7_)
                           {
                              if(fileNode == null)
                              {
                                 if(_loc7_)
                                 {
                                    §§push(logging);
                                    if(!_loc8_)
                                    {
                                       if(§§pop())
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push("FileCollection.load() -> no file-node found with key \'");
                                             if(!_loc8_)
                                             {
                                                §§push(key);
                                                if(!_loc8_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc8_)
                                                   {
                                                      §§push("\'");
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc8_)
                                                         {
                                                         }
                                                         §§goto(addr660);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr481);
                                                      }
                                                      §§goto(addr666);
                                                   }
                                                   §§pop();
                                                   if(_loc8_)
                                                   {
                                                   }
                                                }
                                                §§goto(addr668);
                                             }
                                             §§goto(addr484);
                                          }
                                          §§goto(addr802);
                                       }
                                       §§goto(addr403);
                                    }
                                    §§goto(addr487);
                                 }
                                 §§goto(addr466);
                              }
                              else
                              {
                                 if(this.finisherList[key] != null)
                                 {
                                    if(_loc7_)
                                    {
                                       if(FileCollectionFinisher(this.finisherList[key]).isFinished == true)
                                       {
                                          if(!_loc8_)
                                          {
                                             §§push(logging);
                                             if(_loc8_)
                                             {
                                             }
                                             §§goto(addr834);
                                          }
                                       }
                                       else
                                       {
                                          this.addCallbacks(fileNode,callbackComplete,callbackError);
                                          if(_loc7_)
                                          {
                                             §§goto(addr523);
                                          }
                                          §§goto(addr546);
                                       }
                                       §§goto(addr656);
                                    }
                                    §§goto(addr859);
                                 }
                                 §§goto(addr535);
                              }
                              §§goto(addr839);
                           }
                           §§goto(addr606);
                        }
                        §§goto(addr700);
                     }
                     addr352:
                     §§goto(addr353);
                     §§push(null);
                  }
                  linearLoad = new LoadVO();
                  if(_loc7_)
                  {
                     if(!_loc7_)
                     {
                        addr153:
                        while(true)
                        {
                           linearLoad.callbackError = callbackError;
                           if(!_loc8_)
                           {
                              if(_loc7_)
                              {
                              }
                              addr209:
                              §§push(this._linearLoadList);
                              if(!_loc8_)
                              {
                                 §§pop().push(linearLoad);
                                 if(!_loc8_)
                                 {
                                    if(_loc7_)
                                    {
                                    }
                                    §§goto(addr229);
                                 }
                                 §§goto(addr764);
                              }
                              §§goto(addr241);
                           }
                           break;
                        }
                        §§goto(addr645);
                     }
                     while(true)
                     {
                        linearLoad.key = key;
                        if(!_loc8_)
                        {
                           if(!_loc8_)
                           {
                           }
                           linearLoad.callbackComplete = callbackComplete;
                           if(_loc7_)
                           {
                              if(!_loc8_)
                              {
                                 §§goto(addr153);
                              }
                              §§goto(addr209);
                           }
                           §§goto(addr645);
                        }
                        break;
                     }
                     §§goto(addr356);
                  }
                  §§goto(addr606);
               }
               §§goto(addr352);
               §§push(key);
            }
            if(§§pop())
            {
               if(_loc7_)
               {
                  §§goto(addr466);
               }
               §§goto(addr722);
            }
            §§goto(addr487);
            return;
         }
         catch(e:Error)
         {
            if(_loc7_)
            {
               §§push(logger);
               §§push("ERROR LOAD - ");
               if(!_loc8_)
               {
                  §§push(§§pop() + key);
               }
               §§pop().error(§§pop());
            }
            return;
         }
      }
      
      private function addCallbacks(param1:FileVO, param2:Function, param3:Function) : *
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            if(param1)
            {
               if(!_loc4_)
               {
               }
               addr47:
               if(param3)
               {
                  if(!_loc5_)
                  {
                     param1.callbackError.push(param3);
                  }
               }
            }
            addr56:
            return;
         }
         §§push(param2);
         if(_loc4_)
         {
            if(§§pop())
            {
               if(!_loc5_)
               {
                  param1.callbackComplete.push(param2);
                  if(_loc5_)
                  {
                  }
                  §§goto(addr56);
               }
            }
            §§goto(addr47);
         }
         §§goto(addr47);
      }
      
      public function hasLoader(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         return this.fileLoaderList.hasOwnProperty(param1);
      }
      
      public function isInLinearLoadList(param1:String) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(0);
         if(_loc6_)
         {
            §§push((-§§pop() + 1) * 40 - 60 + 24 + 94);
         }
         var _loc2_:* = uint(§§pop());
         var _loc3_:uint = this._linearLoadList.length;
         var _loc4_:* = false;
         if(!_loc6_)
         {
            §§push(0);
            if(!_loc5_)
            {
               §§push(-(-(§§pop() - 82) - 1 - 1 - 18 - 86));
            }
            §§push(uint(§§pop()));
            if(!_loc6_)
            {
               _loc2_ = §§pop();
               if(_loc5_)
               {
                  addr109:
                  while(true)
                  {
                  }
               }
            }
            while(§§pop() < _loc3_)
            {
               if(this._linearLoadList[_loc2_].key == param1)
               {
                  if(!_loc6_)
                  {
                     §§push(true);
                     if(!_loc6_)
                     {
                        _loc4_ = §§pop();
                        if(!_loc6_)
                        {
                           break;
                        }
                     }
                     addr113:
                     return §§pop();
                  }
               }
               else
               {
                  §§push(_loc2_);
                  if(!_loc6_)
                  {
                     §§push(uint(§§pop() + 1));
                  }
                  _loc2_ = §§pop();
               }
               §§goto(addr109);
            }
         }
         §§goto(addr113);
      }
      
      private function httpStatusHandler(param1:HTTPStatusEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
      }
      
      private function securityErrorHandler(param1:SecurityErrorEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
      }
      
      private function handleFileLoad(param1:Event) : void
      {
         if(!_loc5_)
         {
            if(logging)
            {
               if(_loc5_)
               {
               }
            }
            addr36:
            if(_loc6_)
            {
               §§push(_loc2_);
               §§push(_loc3_.data);
               §§push(_loc3_.bytesTotal);
               §§push(this._hashFilesList.indexOf(_loc2_.id));
               §§push(-1);
               if(_loc5_)
               {
                  §§push(§§pop() - 1 + 79 + 117 - 9);
               }
               §§pop().setData(§§pop(),§§pop(),§§pop() != §§pop());
            }
            if(!_loc6_)
            {
               loop0:
               while(true)
               {
                  _loc4_.addEventListener(FileCollectionFinishEvent.FILE_FINISH,this.handleFileFinish);
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                     }
                     _loc4_.start(_loc2_);
                  }
                  if(_loc6_)
                  {
                     if(!_loc6_)
                     {
                        addr133:
                        while(true)
                        {
                           this.addFinisher(_loc2_.id,_loc4_);
                        }
                     }
                     addr187:
                     return;
                  }
                  loop2:
                  while(true)
                  {
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           continue loop0;
                        }
                     }
                     addr176:
                     while(true)
                     {
                        if(_loc5_)
                        {
                           break loop2;
                        }
                        §§goto(addr133);
                     }
                  }
                  §§goto(addr187);
               }
            }
            while(true)
            {
               new this.finisherClassList[_loc2_.type]().addEventListener(FileCollectionEvent.RESOURCE_CLEARED,this.handleResourceCleared);
               §§goto(addr176);
            }
         }
         §§push("FileCollection.handleFileLoad() -> target: ");
         if(!_loc5_)
         {
            §§push(§§pop() + param1.target);
         }
         §§pop();
         §§goto(addr36);
      }
      
      private function handleResourceCleared(param1:FileCollectionEvent) : void
      {
         var _loc2_:FileCollectionFinisher = param1.currentTarget as FileCollectionFinisher;
         if(_loc3_)
         {
            _loc2_.removeEventListener(FileCollectionFinishEvent.FILE_FINISH,this.handleFileFinish);
            if(_loc4_)
            {
            }
            loop0:
            while(true)
            {
               if(!_loc3_)
               {
                  break;
               }
               addr56:
               while(true)
               {
                  §§push(delete this.finisherList[param1.text]);
                  if(_loc3_)
                  {
                     §§pop();
                     if(_loc3_)
                     {
                        if(_loc4_)
                        {
                           addr89:
                           while(true)
                           {
                           }
                        }
                        else
                        {
                           break loop0;
                        }
                     }
                     else
                     {
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            return;
         }
         if(!_loc3_)
         {
            §§goto(addr56);
         }
         §§goto(addr89);
      }
      
      private function handleFileFinish(param1:FileCollectionFinishEvent) : void
      {
         var _loc3_:Vector.<Function> = null;
         §§push(0);
         if(_loc10_)
         {
            §§push((-(§§pop() - 95 + 30 - 40) - 30) * 93 + 92);
         }
         var _loc6_:FileCollectionFinisher = null;
         §§push(0);
         if(_loc10_)
         {
            §§push((§§pop() + 62 - 114 - 63) * 79 * 62 + 1);
         }
         if(!_loc10_)
         {
            _loc2_.loaded = true;
            if(!_loc10_)
            {
               param1.finisher.isFinished = true;
               if(_loc11_)
               {
                  §§push(_loc8_._numOfFilesLoaded);
                  if(!_loc10_)
                  {
                     §§push(§§pop() + 1);
                  }
                  if(!_loc10_)
                  {
                     _loc8_._numOfFilesLoaded = _loc9_;
                  }
                  if(_loc11_)
                  {
                     dispatchEvent(new FileCollectionFileLoadEvent(FileCollectionFileLoadEvent.FILE_LOADED,_loc2_));
                     if(_loc10_)
                     {
                     }
                  }
                  addr319:
                  dispatchEvent(new FileCollectionEvent(FileCollectionEvent.ALL_FILES_LOADED));
                  addr330:
                  if(!_loc11_)
                  {
                  }
                  return;
               }
               addr291:
               §§push(this._linearLoadList.length);
               §§push(0);
               if(_loc10_)
               {
                  §§push(-(§§pop() - 65 + 90) - 1 + 1 - 7);
               }
               if(§§pop() == §§pop())
               {
                  if(!_loc10_)
                  {
                     §§goto(addr319);
                  }
               }
               else
               {
                  this.load();
               }
               §§goto(addr330);
            }
            if(_loc2_.callbackComplete != null)
            {
               if(!_loc10_)
               {
                  _loc3_ = _loc2_.callbackComplete;
                  if(_loc11_)
                  {
                     if(!_loc11_)
                     {
                        addr131:
                        while(true)
                        {
                           _loc6_ = param1.finisher;
                           if(_loc11_)
                           {
                              if(_loc11_)
                              {
                              }
                              §§push(0);
                              if(_loc10_)
                              {
                                 §§push(§§pop() * 75 - 25 - 1);
                              }
                              if(_loc11_)
                              {
                                 if(!_loc11_)
                                 {
                                 }
                                 addr239:
                                 §§push(_loc2_.callbackComplete);
                                 §§push(0);
                                 if(!_loc11_)
                                 {
                                    §§push(-((§§pop() + 1 - 1) * 63 * 74 + 1));
                                 }
                                 §§pop().length = §§pop();
                              }
                              loop1:
                              while(§§pop() < _loc4_)
                              {
                                 §§push(_loc3_[_loc7_]);
                                 if(!_loc10_)
                                 {
                                    §§push(§§pop());
                                    if(_loc10_)
                                    {
                                    }
                                    addr218:
                                    if(§§pop() != null)
                                    {
                                       if(!_loc10_)
                                       {
                                          addr224:
                                          _loc5_(_loc6_);
                                          if(_loc10_)
                                          {
                                          }
                                       }
                                       addr233:
                                       while(true)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    _loc7_++;
                                    §§goto(addr233);
                                 }
                                 if(_loc11_)
                                 {
                                    §§goto(addr218);
                                 }
                                 §§goto(addr224);
                              }
                              if(_loc11_)
                              {
                                 §§goto(addr239);
                              }
                           }
                           if(!_loc10_)
                           {
                           }
                           break;
                        }
                        §§goto(addr233);
                     }
                     while(true)
                     {
                     }
                  }
                  while(true)
                  {
                     if(_loc11_)
                     {
                        §§goto(addr131);
                     }
                     §§goto(addr201);
                  }
               }
               §§goto(addr319);
            }
            this._currentLinearLoad = null;
            if(_loc11_)
            {
               §§push(this.queueSize);
               if(_loc11_)
               {
                  §§push(§§pop() - 1);
                  if(_loc10_)
                  {
                  }
                  addr278:
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push(§§pop() * 88 * 93 - 53);
                  }
                  if(§§pop() <= §§pop())
                  {
                     if(!_loc10_)
                     {
                        §§goto(addr291);
                     }
                  }
                  §§goto(addr330);
               }
               if(_loc11_)
               {
                  _loc8_.queueSize = _loc9_;
               }
               §§goto(addr278);
            }
            §§goto(addr319);
         }
         §§goto(addr330);
      }
      
      private function addFinisher(param1:String, param2:FileCollectionFinisher) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.finisherList[param1] = param2;
         }
      }
      
      private function handleFileLoadError(param1:IOErrorEvent) : void
      {
         if(_loc4_)
         {
            var xF:FileVO = null;
            if(!_loc3_)
            {
               var event:IOErrorEvent = param1;
               if(_loc4_)
               {
                  §§push(logging);
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                        }
                        addr57:
                        if(!_loc4_)
                        {
                           addr68:
                           while(true)
                           {
                              xF = FileCollectionLoader(event.target).fileVO;
                              if(!_loc4_)
                              {
                              }
                              break;
                           }
                           loop1:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              reloadTimer.addEventListener(TimerEvent.TIMER_COMPLETE,function(param1:Event):void
                              {
                                 var _loc2_:Boolean = true;
                                 var _loc3_:Boolean = false;
                                 load(xF.id);
                              });
                              loop2:
                              while(_loc4_)
                              {
                                 while(true)
                                 {
                                    reloadTimer.start();
                                    if(!_loc3_)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr193:
                                          if(_loc3_)
                                          {
                                             addr204:
                                             return;
                                          }
                                          break loop1;
                                       }
                                       continue loop1;
                                    }
                                    continue loop2;
                                 }
                              }
                              while(true)
                              {
                                 §§push(_loc2_);
                                 §§push();
                                 §§push(5000);
                                 if(!_loc4_)
                                 {
                                    §§push(-(-§§pop() * 53 - 1 - 48 - 7) - 20);
                                 }
                                 var /*UnknownSlot*/:* = new §§pop().Timer(§§pop(),1);
                                 continue loop1;
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       xF.callbackError.forEach(function(param1:Function, param2:int, param3:Vector.<Function>):void
                                       {
                                          var _loc4_:Boolean = false;
                                          var _loc5_:Boolean = true;
                                          param1(xF.id);
                                       });
                                       if(_loc4_)
                                       {
                                          addr173:
                                          if(!_loc4_)
                                          {
                                             §§goto(addr184);
                                          }
                                          §§goto(addr204);
                                       }
                                       §§goto(addr193);
                                    }
                                    else
                                    {
                                       continue loop1;
                                    }
                                 }
                                 else
                                 {
                                    continue;
                                 }
                              }
                           }
                           return;
                        }
                     }
                     addr92:
                     while(true)
                     {
                        dispatchEvent(new FileCollectionFileLoadEvent(FileCollectionFileLoadEvent.FILE_LOAD_ERROR,FileCollectionLoader(event.target).fileVO));
                        if(_loc3_)
                        {
                        }
                        break;
                     }
                     §§goto(addr193);
                  }
                  §§goto(addr161);
               }
               while(true)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr68);
               }
               §§push(this.maxTries);
               if(_loc4_)
               {
                  §§push(0);
                  if(_loc3_)
                  {
                     §§push(-(§§pop() - 1 - 1 + 1));
                  }
                  if(_loc4_)
                  {
                     §§push(§§pop() > §§pop());
                     if(!_loc3_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                           }
                        }
                        §§goto(addr161);
                     }
                     §§pop();
                     if(_loc4_)
                     {
                        if(_loc4_)
                        {
                        }
                        §§push(xF.numTries);
                     }
                     §§goto(addr173);
                  }
                  addr160:
                  §§goto(addr161);
                  §§push(§§pop() >= §§pop());
               }
               §§goto(addr160);
               §§push(this.maxTries);
            }
            while(true)
            {
               if(_loc3_)
               {
                  §§goto(addr92);
               }
               §§goto(addr117);
            }
         }
         §§push("FileCollection.handleFileLoadError() -> target: ");
         if(_loc4_)
         {
            §§push(§§pop() + event.target);
         }
         §§pop();
         if(_loc4_)
         {
            §§goto(addr57);
         }
         §§goto(addr264);
      }
      
      public function loadAll() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:* = null;
         if(!_loc5_)
         {
            §§push(0);
            if(_loc5_)
            {
               §§push(§§pop() - 1 + 113 + 114);
            }
            if(!_loc5_)
            {
               if(_loc4_)
               {
                  for(_loc1_ in this.fileList)
                  {
                     if(!_loc5_)
                     {
                        this.load(FileVO(this.fileList[_loc1_]).id);
                     }
                  }
               }
            }
         }
      }
      
      public function setParam(param1:String, param2:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(logging)
            {
               if(!_loc3_)
               {
                  §§push("FileCollection.setParam() -> key: ");
                  if(!_loc3_)
                  {
                     §§push(param1);
                     if(_loc4_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc3_)
                        {
                           §§push(§§pop() + " value:");
                           if(_loc3_)
                           {
                           }
                        }
                        §§push(param2);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop();
                  if(_loc3_)
                  {
                  }
               }
            }
            this.paramKeyList[param1] = param2;
         }
      }
      
      public function isLoaded(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            var result:Boolean = false;
            if(_loc4_)
            {
            }
            try
            {
               addr44:
               result = FileCollectionFinisher(this.finisherList[id]).isFinished;
            }
            catch(e:Error)
            {
               return false;
            }
            return result;
         }
         var id:String = param1;
         §§goto(addr44);
      }
      
      public function getFinisher(param1:String) : FileCollectionFinisher
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
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
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:FileCollectionFinisher = null;
         if(_loc5_)
         {
            §§push(0);
            if(!_loc5_)
            {
               §§push(-(-§§pop() + 1 - 113) + 1);
            }
            if(!_loc4_)
            {
               if(!_loc4_)
               {
                  for each(_loc1_ in this.finisherList)
                  {
                     if(!_loc4_)
                     {
                        _loc1_.clear();
                     }
                  }
               }
            }
            if(!_loc4_)
            {
               this.finisherList = new Object();
               if(_loc5_)
               {
                  this.fileLoaderList = new Object();
               }
            }
         }
      }
      
      public function get resourceFileHash() : String
      {
         return this._resourceFileHash;
      }
   }
}
