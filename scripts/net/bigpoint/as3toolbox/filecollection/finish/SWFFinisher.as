package net.bigpoint.as3toolbox.filecollection.finish
{
   import §--__----§.§-_----_-§;
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
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
      }
      
      protected var loader:Loader;
      
      private var readOnlyObjectCache:Dictionary;
      
      public function SWFFinisher()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.readOnlyObjectCache = new Dictionary();
            if(!_loc2_)
            {
               super();
            }
         }
      }
      
      override public function start(param1:FileVO) : void
      {
         if(!_loc5_)
         {
            var lc:LoaderContext = null;
            if(!_loc5_)
            {
               var fileVO:FileVO = param1;
               if(_loc5_)
               {
               }
            }
            super.start(fileVO);
         }
         try
         {
            this.loader = new Loader();
            if(!_loc5_)
            {
               this.loader.contentLoaderInfo.addEventListener(Event.INIT,this.onInit);
               if(_loc4_)
               {
                  if(!_loc4_)
                  {
                     addr70:
                     while(true)
                     {
                        lc = new LoaderContext();
                        if(!_loc5_)
                        {
                           if(!_loc5_)
                           {
                              if(!_loc5_)
                              {
                              }
                              lc.allowCodeImport = true;
                              if(_loc5_)
                              {
                              }
                              break;
                           }
                           addr129:
                           while(true)
                           {
                              if(!_loc5_)
                              {
                              }
                              this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
                           }
                        }
                        addr108:
                        if(!_loc4_)
                        {
                        }
                     }
                     if(!_loc5_)
                     {
                     }
                  }
                  addr121:
                  while(true)
                  {
                     this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.handleLoadComplete);
                     §§goto(addr129);
                  }
               }
               while(true)
               {
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr70);
               }
               this.loader.loadBytes(fileVO.getData(),lc);
               §§goto(addr167);
            }
            while(true)
            {
               if(_loc5_)
               {
                  §§goto(addr121);
               }
               §§goto(addr159);
               §§goto(addr108);
            }
            return;
         }
         catch(e:Error)
         {
            if(_loc4_)
            {
               §§push("ERROR : ");
               if(!_loc5_)
               {
                  §§push(§§pop() + e.message);
               }
               §§pop();
            }
            return;
         }
      }
      
      override public function clear() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.clear();
            if(!_loc1_)
            {
            }
            addr27:
            return;
         }
         this.loader = null;
         §§goto(addr27);
      }
      
      private function onInit(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
      }
      
      protected function handleLoadComplete(param1:Event) : void
      {
         if(!_loc2_)
         {
            fileVO.disposeData();
            if(_loc3_)
            {
               if(_loc2_)
               {
                  addr47:
                  while(true)
                  {
                     this.stopAnimation(this.loader.content);
                     if(_loc2_)
                     {
                     }
                  }
               }
               addr76:
               while(true)
               {
                  finish();
               }
            }
            while(true)
            {
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr47);
            }
            return;
         }
         while(true)
         {
            if(_loc2_)
            {
               §§goto(addr76);
            }
            §§goto(addr89);
         }
      }
      
      private function stopAnimation(param1:DisplayObject) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:DisplayObjectContainer = null;
         §§push(0);
         if(!_loc6_)
         {
            §§push(((§§pop() - 5) * 108 + 26) * 78 * 54 * 72);
         }
         var _loc3_:* = §§pop();
         var _loc4_:DisplayObjectContainer = null;
         if(!_loc5_)
         {
            §§push(param1 is DisplayObjectContainer);
            if(!_loc5_)
            {
               if(§§pop())
               {
                  if(!_loc6_)
                  {
                  }
                  addr63:
                  _loc2_ = param1 as DisplayObjectContainer;
                  if(!_loc5_)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                        §§push(§§pop() - 1 - 1 - 1 - 79 - 1);
                     }
                     addr89:
                     loop0:
                     for(; §§pop() < _loc2_.numChildren; §§goto(addr89))
                     {
                        _loc4_ = _loc2_.getChildAt(_loc3_) as DisplayObjectContainer;
                        if(_loc4_ != null)
                        {
                           if(!_loc5_)
                           {
                              if(_loc4_ is MovieClip)
                              {
                                 if(!_loc5_)
                                 {
                                    (_loc4_ as MovieClip).stop();
                                    if(_loc5_)
                                    {
                                    }
                                 }
                                 addr149:
                                 this.stopAnimation(_loc4_ as DisplayObject);
                                 addr157:
                                 if(_loc5_)
                                 {
                                 }
                                 while(true)
                                 {
                                    continue loop0;
                                 }
                              }
                           }
                           §§push(_loc4_.numChildren);
                           §§push(0);
                           if(!_loc6_)
                           {
                              §§push(§§pop() + 62 - 106 + 1 - 108 + 1);
                           }
                           if(§§pop() > §§pop())
                           {
                              if(!_loc5_)
                              {
                                 §§goto(addr149);
                              }
                           }
                        }
                        _loc3_++;
                        §§goto(addr157);
                     }
                     if(!_loc5_)
                     {
                        _loc3_ = §§pop();
                        if(!_loc6_)
                        {
                        }
                     }
                  }
                  §§goto(addr157);
               }
               return;
            }
            addr56:
            if(§§pop())
            {
               if(!_loc5_)
               {
                  (param1 as MovieClip).stop();
               }
            }
            §§goto(addr63);
         }
         §§goto(addr56);
      }
      
      public function getDefinitions() : Array
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         return getDefinitionNames(this.loader.contentLoaderInfo);
      }
      
      public function getClassRefeference(param1:String) : Class
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         return this.loader.contentLoaderInfo.applicationDomain.getDefinition(param1) as Class;
      }
      
      public function getEmbeddedSprite(param1:String, param2:Boolean = false) : Sprite
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         return this.getEmbeddedObject(param1,param2) as Sprite;
      }
      
      public function getEmbededMovieClip(param1:String, param2:Boolean = false) : MovieClip
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:MovieClip = this.getEmbeddedObject(param1,param2) as MovieClip;
         return _loc3_;
      }
      
      public function getEmbeddedMovieClip(param1:String, param2:Boolean = false) : MovieClip
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:MovieClip = this.getEmbeddedObject(param1,param2) as MovieClip;
         return _loc3_;
      }
      
      public function getEmbededObject(param1:String, param2:Boolean = false) : Object
      {
         if(_loc6_)
         {
            var cachedReadonlyObject:Object = null;
            if(_loc6_)
            {
               if(!_loc6_)
               {
                  addr44:
                  while(true)
                  {
                     var id:String = param1;
                     if(_loc6_)
                     {
                        if(!_loc5_)
                        {
                        }
                        addr79:
                        var readOnly:Boolean = param2;
                        if(_loc5_)
                        {
                        }
                        break;
                     }
                     break;
                  }
                  cachedReadonlyObject = this.readOnlyObjectCache[id];
                  if(_loc6_)
                  {
                     addr112:
                     if(cachedReadonlyObject == null)
                     {
                        try
                        {
                           addr119:
                           var classRef:Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
                        }
                        catch(error:Error)
                        {
                           if(_loc6_)
                           {
                              embeddedObjectNotFound(id);
                           }
                        }
                        if(readOnly)
                        {
                           if(!_loc5_)
                           {
                              cachedReadonlyObject = new classRef() as Object;
                              if(_loc6_)
                              {
                                 this.readOnlyObjectCache[id] = cachedReadonlyObject;
                                 if(_loc5_)
                                 {
                                 }
                              }
                           }
                        }
                        else
                        {
                           cachedReadonlyObject = new classRef() as Object;
                        }
                        return cachedReadonlyObject;
                     }
                  }
               }
               while(true)
               {
                  classRef = null;
                  if(!_loc5_)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr44);
                     }
                     §§goto(addr79);
                  }
                  break;
               }
            }
            return cachedReadonlyObject;
         }
         if(!_loc5_)
         {
         }
         if(readOnly)
         {
            if(!_loc5_)
            {
               §§goto(addr102);
            }
            §§goto(addr112);
         }
         §§goto(addr119);
      }
      
      public function getEmbeddedObject(param1:String, param2:Boolean = false) : Object
      {
         if(_loc6_)
         {
            var cachedReadonlyObject:Object = null;
            if(!_loc5_)
            {
               if(_loc5_)
               {
                  addr44:
                  while(true)
                  {
                     var id:String = param1;
                     if(!_loc5_)
                     {
                        if(_loc6_)
                        {
                        }
                        addr78:
                        var readOnly:Boolean = param2;
                        if(!_loc5_)
                        {
                           if(_loc6_)
                           {
                           }
                           if(readOnly)
                           {
                              if(!_loc6_)
                              {
                              }
                              break;
                           }
                           try
                           {
                              addr119:
                              var classRef:Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
                           }
                           catch(error:Error)
                           {
                              if(!_loc5_)
                              {
                                 embeddedObjectNotFound(id);
                              }
                           }
                           if(readOnly)
                           {
                              if(_loc6_)
                              {
                                 cachedReadonlyObject = new classRef() as Object;
                                 if(!_loc5_)
                                 {
                                    this.readOnlyObjectCache[id] = cachedReadonlyObject;
                                    if(!_loc6_)
                                    {
                                    }
                                 }
                              }
                           }
                           else
                           {
                              cachedReadonlyObject = new classRef() as Object;
                           }
                           return cachedReadonlyObject;
                        }
                     }
                     break;
                  }
                  return cachedReadonlyObject;
               }
               while(true)
               {
                  classRef = null;
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                        §§goto(addr44);
                     }
                     §§goto(addr78);
                  }
                  break;
               }
            }
            cachedReadonlyObject = this.readOnlyObjectCache[id];
            if(_loc5_)
            {
            }
            §§goto(addr116);
         }
         if(cachedReadonlyObject != null)
         {
            §§goto(addr116);
         }
         else
         {
            §§goto(addr119);
         }
      }
      
      private function embeddedObjectNotFound(param1:String) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:FileCollectionEvent = new FileCollectionEvent(FileCollectionEvent.EMBEDDED_OBJECT_NOT_FOUND);
         §§push("embeded object \'");
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(§§pop() + §§pop());
               if(!_loc4_)
               {
                  §§push("\' not found in \'");
                  if(_loc5_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!_loc4_)
                     {
                        §§push(fileVO.id);
                     }
                     addr69:
                     var _loc3_:* = §§pop();
                     if(!_loc4_)
                     {
                        _loc2_.text = _loc3_;
                        if(!_loc5_)
                        {
                        }
                        addr80:
                        throw new Error(_loc3_);
                     }
                     dispatchEvent(_loc2_);
                     §§goto(addr80);
                  }
                  addr68:
                  §§goto(addr69);
                  §§push(§§pop() + §§pop());
               }
            }
            §§push(§§pop() + §§pop());
            if(_loc4_)
            {
            }
            §§goto(addr69);
         }
         §§goto(addr68);
      }
      
      public function getEmbededBitmapData(param1:String, param2:Boolean = false) : BitmapData
      {
         if(!_loc5_)
         {
            var cachedReadonlyObject:Object = null;
            if(_loc6_)
            {
               if(!_loc6_)
               {
                  addr42:
                  while(true)
                  {
                     var id:String = param1;
                     if(_loc5_)
                     {
                     }
                     break;
                  }
               }
               addr60:
               while(true)
               {
                  var classRef:Class = null;
                  if(!_loc5_)
                  {
                     if(_loc6_)
                     {
                        §§goto(addr42);
                     }
                     addr77:
                     var readOnly:Boolean = param2;
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                        }
                        if(readOnly)
                        {
                           if(_loc5_)
                           {
                           }
                           addr115:
                           return BitmapData(cachedReadonlyObject);
                        }
                        try
                        {
                           addr120:
                           classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
                        }
                        catch(error:Error)
                        {
                           if(!_loc5_)
                           {
                              embeddedObjectNotFound(id);
                           }
                        }
                        if(readOnly)
                        {
                           if(_loc6_)
                           {
                              §§push(_loc3_);
                              §§push(classRef);
                              §§push(0);
                              if(!_loc6_)
                              {
                                 §§push((((§§pop() + 101) * 37 - 46) * 69 + 114) * 52 + 82);
                              }
                              var /*UnknownSlot*/:* = new §§pop()(§§pop(),§§pop());
                              if(!_loc6_)
                              {
                              }
                              addr203:
                           }
                           this.readOnlyObjectCache[id] = cachedReadonlyObject;
                           if(_loc6_)
                           {
                              §§goto(addr203);
                           }
                        }
                        else
                        {
                           §§push(_loc3_);
                           §§push(classRef);
                           §§push(0);
                           if(!_loc6_)
                           {
                              §§push(-(--§§pop() * 44) - 1);
                           }
                           var /*UnknownSlot*/:* = new §§pop()(§§pop(),§§pop());
                        }
                        return BitmapData(cachedReadonlyObject);
                     }
                     cachedReadonlyObject = this.readOnlyObjectCache[id];
                     if(!_loc6_)
                     {
                     }
                     §§goto(addr115);
                  }
               }
            }
            if(cachedReadonlyObject != null)
            {
               §§goto(addr115);
            }
            else
            {
               §§goto(addr120);
            }
         }
         while(_loc5_)
         {
            §§goto(addr60);
         }
         §§goto(addr77);
      }
      
      public function getEmbeddedBitmapData(param1:String, param2:Boolean = false) : BitmapData
      {
         if(_loc5_)
         {
            var cachedReadonlyObject:Object = null;
            if(!_loc6_)
            {
               if(!_loc5_)
               {
                  addr43:
                  while(true)
                  {
                     var id:String = param1;
                     if(!_loc6_)
                     {
                        if(!_loc5_)
                        {
                        }
                     }
                     break;
                  }
                  if(_loc5_)
                  {
                  }
                  if(readOnly)
                  {
                     if(_loc5_)
                     {
                        cachedReadonlyObject = this.readOnlyObjectCache[id];
                        if(!_loc5_)
                        {
                        }
                        addr117:
                        return BitmapData(cachedReadonlyObject);
                     }
                     if(cachedReadonlyObject != null)
                     {
                        §§goto(addr117);
                     }
                  }
                  try
                  {
                     var classRef:Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
                  }
                  catch(error:Error)
                  {
                     if(!_loc6_)
                     {
                        embeddedObjectNotFound(id);
                     }
                  }
                  if(readOnly)
                  {
                     if(_loc5_)
                     {
                        §§push(_loc3_);
                        §§push(classRef);
                        §§push(0);
                        if(_loc6_)
                        {
                           §§push(-(((§§pop() - 95 + 1) * 52 - 113) * 107));
                        }
                        var /*UnknownSlot*/:* = new §§pop()(§§pop(),§§pop());
                        if(_loc5_)
                        {
                           this.readOnlyObjectCache[id] = cachedReadonlyObject;
                           if(!_loc5_)
                           {
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(_loc3_);
                     §§push(classRef);
                     §§push(0);
                     if(!_loc5_)
                     {
                        §§push(-(§§pop() + 1 - 1 + 1) + 71 - 102);
                     }
                     var /*UnknownSlot*/:* = new §§pop()(§§pop(),§§pop());
                  }
                  return BitmapData(cachedReadonlyObject);
               }
               addr63:
               while(true)
               {
                  classRef = null;
               }
            }
            while(!_loc5_)
            {
               §§goto(addr63);
            }
            var readOnly:Boolean = param2;
            if(!_loc6_)
            {
               §§goto(addr84);
            }
            §§goto(addr117);
         }
         while(true)
         {
            if(!_loc6_)
            {
               §§goto(addr43);
            }
            §§goto(addr78);
         }
      }
      
      public function getEmbededSound(param1:String) : Sound
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            var classRef:Class = null;
            if(!_loc4_)
            {
            }
            try
            {
               addr43:
               classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
            }
            catch(error:Error)
            {
               if(!_loc5_)
               {
                  embeddedObjectNotFound(id);
               }
            }
            return new classRef();
         }
         var id:String = param1;
         §§goto(addr43);
      }
      
      public function getEmbeddedSound(param1:String) : Sound
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            var classRef:Class = null;
            if(!_loc4_)
            {
               var id:String = param1;
            }
         }
         try
         {
            classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
         }
         catch(error:Error)
         {
            if(_loc5_)
            {
               embeddedObjectNotFound(id);
            }
         }
         return new classRef();
      }
      
      public function getAsDisplayObject() : DisplayObject
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         return this.loader.content;
      }
      
      public function getEmbededBitmap(param1:String, param2:Boolean = false) : Bitmap
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         return new Bitmap(this.getEmbeddedBitmapData(param1,param2));
      }
      
      public function getEmbeddedBitmap(param1:String, param2:Boolean = false) : Bitmap
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         return new Bitmap(this.getEmbeddedBitmapData(param1,param2));
      }
      
      private function createDebugView(param1:DisplayObject) : void
      {
         if(_loc3_)
         {
            _loc2_.selectable = false;
            if(_loc3_)
            {
               if(!_loc3_)
               {
                  addr42:
                  while(true)
                  {
                     §§push(_loc2_);
                     §§push();
                     §§push("Verdana");
                     §§push(10);
                     if(_loc4_)
                     {
                        §§push(-(§§pop() + 51 - 36 - 1 + 1));
                     }
                     §§pop().setTextFormat(new §§pop().TextFormat(§§pop(),§§pop(),16777215,true));
                     if(!_loc3_)
                     {
                     }
                     addr208:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           _loc2_.multiline = false;
                        }
                     }
                     return;
                  }
               }
               loop3:
               while(true)
               {
                  _loc2_.background = true;
                  loop4:
                  while(true)
                  {
                     if(_loc4_)
                     {
                        addr193:
                        while(true)
                        {
                           DisplayObjectContainer(param1).addChild(_loc2_);
                           §§goto(addr208);
                        }
                     }
                     while(true)
                     {
                        §§push(_loc2_);
                        §§push(7829367);
                        if(!_loc3_)
                        {
                           §§push(-(-(§§pop() + 1) - 42) * 47 + 27);
                        }
                        §§pop().backgroundColor = §§pop();
                        if(!_loc4_)
                        {
                           if(_loc4_)
                           {
                              addr131:
                              while(true)
                              {
                                 _loc2_.y = DisplayObjectContainer(param1).height;
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!_loc3_)
                                       {
                                          addr153:
                                          while(true)
                                          {
                                             _loc2_.text = fileVO.id + ":" + fileVO.cdnHash;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr193);
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                       }
                                    }
                                 }
                                 §§goto(addr208);
                              }
                           }
                           addr73:
                           while(true)
                           {
                              _loc2_.autoSize = TextFieldAutoSize.LEFT;
                              if(!_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    break;
                                 }
                                 §§goto(addr219);
                              }
                           }
                           continue;
                        }
                        while(!_loc4_)
                        {
                           if(!_loc3_)
                           {
                              continue loop3;
                           }
                           §§goto(addr42);
                        }
                        continue loop4;
                     }
                  }
               }
            }
            while(true)
            {
               if(_loc3_)
               {
                  §§goto(addr153);
               }
               §§goto(addr233);
            }
         }
         while(true)
         {
            if(_loc4_)
            {
               §§goto(addr73);
            }
            §§goto(addr131);
         }
      }
      
      public function hasEmbeddedObject(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            var classRef:Class = null;
            if(_loc4_)
            {
            }
            try
            {
               addr45:
               classRef = this.loader.contentLoaderInfo.applicationDomain.getDefinition(id) as Class;
            }
            catch(error:Error)
            {
               return false;
            }
            return true;
         }
         var id:String = param1;
         §§goto(addr45);
      }
   }
}
