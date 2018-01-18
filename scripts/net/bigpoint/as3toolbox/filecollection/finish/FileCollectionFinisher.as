package net.bigpoint.as3toolbox.filecollection.finish
{
   import flash.events.EventDispatcher;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   
   public class FileCollectionFinisher extends EventDispatcher
   {
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
      }
      
      public var fileVO:FileVO;
      
      public var isFinished:Boolean = false;
      
      public function FileCollectionFinisher()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function start(param1:FileVO) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.fileVO = param1;
         }
      }
      
      public function clear() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.fileVO.disposeData();
            if(!_loc2_)
            {
               this.fileVO.loaded = false;
               if(!_loc3_)
               {
               }
            }
            this.isFinished = false;
         }
         var _loc1_:FileCollectionEvent = new FileCollectionEvent(FileCollectionEvent.RESOURCE_CLEARED);
         if(!_loc2_)
         {
            _loc1_.text = this.fileVO.id;
            if(_loc3_)
            {
               dispatchEvent(_loc1_);
            }
         }
      }
      
      public function finish() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            dispatchEvent(new FileCollectionFinishEvent(FileCollectionFinishEvent.FILE_FINISH,this));
         }
      }
   }
}
