package net.bigpoint.as3toolbox.filecollection.finish
{
   import flash.display.Bitmap;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   
   public class ImageFinisher extends FileCollectionFinisher
   {
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
      }
      
      private var loader:Loader;
      
      public function ImageFinisher()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function getBitmap() : Bitmap
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         return Bitmap(this.loader.content);
      }
      
      override public function start(param1:FileVO) : void
      {
         if(_loc4_)
         {
            var fileVO:FileVO = param1;
            if(!_loc4_)
            {
            }
            try
            {
               addr35:
               this.loader = new Loader();
               if(!_loc5_)
               {
                  this.loader.contentLoaderInfo.addEventListener(Event.INIT,this.handleLoaderInit);
                  if(!_loc5_)
                  {
                     if(!_loc5_)
                     {
                     }
                     this.loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.handleLoadComplete);
                     if(!_loc4_)
                     {
                     }
                     addr106:
                     if(_loc4_)
                     {
                     }
                     this.loader.loadBytes(fileVO.getData());
                  }
                  if(_loc4_)
                  {
                  }
                  this.loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.handleLoaderError);
                  if(_loc4_)
                  {
                     §§goto(addr106);
                  }
               }
               if(!_loc5_)
               {
               }
               return;
            }
            catch(e:Error)
            {
               if(!_loc5_)
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
            return;
         }
         super.start(fileVO);
         §§goto(addr35);
      }
      
      override public function clear() : void
      {
         if(_loc2_)
         {
            super.clear();
            if(!_loc1_)
            {
               if(this.loader)
               {
                  if(!_loc1_)
                  {
                     this.loader.contentLoaderInfo.removeEventListener(Event.INIT,this.handleLoaderInit);
                     if(!_loc2_)
                     {
                     }
                  }
                  addr42:
                  addr113:
                  if(!_loc2_)
                  {
                     addr64:
                     while(true)
                     {
                        this.loader = null;
                        if(_loc2_)
                        {
                           if(!_loc2_)
                           {
                              addr80:
                              while(true)
                              {
                                 this.loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.handleLoaderError);
                              }
                           }
                           break;
                        }
                        addr89:
                        while(true)
                        {
                           if(_loc1_)
                           {
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     this.loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.handleLoadComplete);
                     §§goto(addr42);
                  }
               }
               addr132:
               return;
            }
            while(true)
            {
               if(!_loc2_)
               {
                  §§goto(addr113);
               }
               else
               {
                  §§goto(addr64);
               }
               §§goto(addr89);
            }
         }
         while(true)
         {
            if(!_loc1_)
            {
               §§goto(addr80);
            }
            §§goto(addr132);
         }
      }
      
      private function handleLoaderInit(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
      }
      
      private function handleLoaderError(param1:IOErrorEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
      }
      
      protected function handleLoadComplete(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            fileVO.disposeData();
            if(_loc3_)
            {
            }
            addr28:
            return;
         }
         finish();
         §§goto(addr28);
      }
   }
}
