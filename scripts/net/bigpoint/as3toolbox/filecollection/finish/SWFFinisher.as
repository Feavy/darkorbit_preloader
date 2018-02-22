package net.bigpoint.as3toolbox.filecollection.finish
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.media.Sound;
   import flash.system.LoaderContext;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.utils.Dictionary;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.getDefinitionNames;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   
   public class SWFFinisher extends FileCollectionFinisher
   {
       
      
      protected var loader:Loader;
      
      private var readOnlyObjectCache:Dictionary;
      
      public function SWFFinisher()
      {
         this.readOnlyObjectCache = new Dictionary();
         super();
      }
      
      override public function start(param1:FileVO) : void
      {
         var lc:LoaderContext = null;
         var fileVO:FileVO = param1;
         super.start(fileVO);
         try
         {
            this.loader = new Loader();
            this.loader.contentLoaderInfo.addEventListener(Event.INIT,this.onInit);
            this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.handleLoadComplete);
            this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
            lc = new LoaderContext();
            lc.allowCodeImport = true;
            this.loader.loadBytes(fileVO.getData(),lc);
            return;
         }
         catch(e:Error)
         {
            "ERROR : " + e.message;
            return;
         }
      }
      
      override public function clear() : void
      {
         super.clear();
         this.loader = null;
      }
      
      private function onInit(param1:Event) : void
      {
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
      
      protected function handleLoadComplete(param1:Event) : void
      {
         fileVO.disposeData();
         finish();
         this.stopAnimation(this.loader.content);
      }
      
      private function stopAnimation(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObjectContainer = null;
         var _loc3_:int = 0;
         var _loc4_:DisplayObjectContainer = null;
         if(param1 is DisplayObjectContainer)
         {
            if(param1 is MovieClip)
            {
               (param1 as MovieClip).stop();
            }
            _loc2_ = param1 as DisplayObjectContainer;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.numChildren)
            {
               _loc4_ = _loc2_.getChildAt(_loc3_) as DisplayObjectContainer;
               if(_loc4_ != null)
               {
                  if(_loc4_ is MovieClip)
                  {
                     (_loc4_ as MovieClip).stop();
                  }
                  if(_loc4_.numChildren > 0)
                  {
                     this.stopAnimation(_loc4_ as DisplayObject);
                  }
               }
               _loc3_++;
            }
         }
      }
      
      public function getDefinitions() : Array
      {
         return getDefinitionNames(this.loader.contentLoaderInfo);
      }
      
      public function getClassRefeference(param1:String) : Class
      {
         return this.loader.contentLoaderInfo.applicationDomain.getDefinition(param1) as Class;
      }
      
      public function getEmbeddedSprite(param1:String, param2:Boolean = false) : Sprite
      {
         return this.getEmbeddedObject(param1,param2) as Sprite;
      }
      
      public function getEmbededMovieClip(param1:String, param2:Boolean = false) : MovieClip
      {
         var _loc3_:MovieClip = this.getEmbeddedObject(param1,param2) as MovieClip;
         return _loc3_;
      }
      
      public function getEmbeddedMovieClip(param1:String, param2:Boolean = false) : MovieClip
      {
         var _loc3_:MovieClip = this.getEmbeddedObject(param1,param2) as MovieClip;
         return _loc3_;
      }
      
      public function getEmbededObject(param1:String, param2:Boolean = false) : Object
      {
         var cachedReadonlyObject:Object = null;
         var classRef:Class = null;
         var id:String = param1;
         var readOnly:Boolean = param2;
         if(readOnly)
         {
            cachedReadonlyObject = this.readOnlyObjectCache[id];
            if(cachedReadonlyObject != null)
            {
               return cachedReadonlyObject;
            }
         }
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            embeddedObjectNotFound(id);
         }
         if(readOnly)
         {
            cachedReadonlyObject = new classRef() as Object;
            this.readOnlyObjectCache[id] = cachedReadonlyObject;
         }
         else
         {
            cachedReadonlyObject = new classRef() as Object;
         }
         return cachedReadonlyObject;
      }
      
      public function getEmbeddedObject(param1:String, param2:Boolean = false) : Object
      {
         var cachedReadonlyObject:Object = null;
         var classRef:Class = null;
         var id:String = param1;
         var readOnly:Boolean = param2;
         if(readOnly)
         {
            cachedReadonlyObject = this.readOnlyObjectCache[id];
            if(cachedReadonlyObject != null)
            {
               return cachedReadonlyObject;
            }
         }
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            embeddedObjectNotFound(id);
         }
         if(readOnly)
         {
            cachedReadonlyObject = new classRef() as Object;
            this.readOnlyObjectCache[id] = cachedReadonlyObject;
         }
         else
         {
            cachedReadonlyObject = new classRef() as Object;
         }
         return cachedReadonlyObject;
      }
      
      private function embeddedObjectNotFound(param1:String) : void
      {
         var _loc2_:FileCollectionEvent = new FileCollectionEvent(FileCollectionEvent.EMBEDDED_OBJECT_NOT_FOUND);
         var _loc3_:* = "embeded object \'" + param1 + "\' not found in \'" + fileVO.id + "\'";
         _loc2_.text = _loc3_;
         dispatchEvent(_loc2_);
         throw new Error(_loc3_);
      }
      
      public function getEmbededBitmapData(param1:String, param2:Boolean = false) : BitmapData
      {
         var cachedReadonlyObject:Object = null;
         var classRef:Class = null;
         var id:String = param1;
         var readOnly:Boolean = param2;
         if(readOnly)
         {
            cachedReadonlyObject = this.readOnlyObjectCache[id];
            if(cachedReadonlyObject != null)
            {
               return BitmapData(cachedReadonlyObject);
            }
         }
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            embeddedObjectNotFound(id);
         }
         if(readOnly)
         {
            cachedReadonlyObject = new classRef(0,0);
            this.readOnlyObjectCache[id] = cachedReadonlyObject;
         }
         else
         {
            cachedReadonlyObject = new classRef(0,0);
         }
         return BitmapData(cachedReadonlyObject);
      }
      
      public function getEmbeddedBitmapData(param1:String, param2:Boolean = false) : BitmapData
      {
         var cachedReadonlyObject:Object = null;
         var classRef:Class = null;
         var id:String = param1;
         var readOnly:Boolean = param2;
         if(readOnly)
         {
            cachedReadonlyObject = this.readOnlyObjectCache[id];
            if(cachedReadonlyObject != null)
            {
               return BitmapData(cachedReadonlyObject);
            }
         }
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            embeddedObjectNotFound(id);
         }
         if(readOnly)
         {
            cachedReadonlyObject = new classRef(0,0);
            this.readOnlyObjectCache[id] = cachedReadonlyObject;
         }
         else
         {
            cachedReadonlyObject = new classRef(0,0);
         }
         return BitmapData(cachedReadonlyObject);
      }
      
      public function getEmbededSound(param1:String) : Sound
      {
         var classRef:Class = null;
         var id:String = param1;
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            embeddedObjectNotFound(id);
         }
         return new classRef();
      }
      
      public function getEmbeddedSound(param1:String) : Sound
      {
         var classRef:Class = null;
         var id:String = param1;
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            embeddedObjectNotFound(id);
         }
         return new classRef();
      }
      
      public function getAsDisplayObject() : DisplayObject
      {
         return this.loader.content;
      }
      
      public function getEmbededBitmap(param1:String, param2:Boolean = false) : Bitmap
      {
         return new Bitmap(this.getEmbeddedBitmapData(param1,param2));
      }
      
      public function getEmbeddedBitmap(param1:String, param2:Boolean = false) : Bitmap
      {
         return new Bitmap(this.getEmbeddedBitmapData(param1,param2));
      }
      
      private function createDebugView(param1:DisplayObject) : void
      {
         var _loc2_:TextField = new TextField();
         _loc2_.selectable = false;
         _loc2_.background = true;
         _loc2_.backgroundColor = 7829367;
         _loc2_.autoSize = TextFieldAutoSize.LEFT;
         _loc2_.multiline = false;
         _loc2_.text = fileVO.id + ":" + fileVO.cdnHash;
         _loc2_.setTextFormat(new TextFormat("Verdana",10,16777215,true));
         _loc2_.y = DisplayObjectContainer(param1).height;
         DisplayObjectContainer(param1).addChild(_loc2_);
      }
      
      public function hasEmbeddedObject(param1:String) : Boolean
      {
         var classRef:Class = null;
         var id:String = param1;
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            return false;
         }
         return true;
      }
   }
}
