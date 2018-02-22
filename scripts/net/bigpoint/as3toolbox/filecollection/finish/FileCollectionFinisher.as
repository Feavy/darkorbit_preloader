package net.bigpoint.as3toolbox.filecollection.finish
{
   import flash.events.EventDispatcher;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionEvent;
   import net.bigpoint.as3toolbox.filecollection.event.FileCollectionFinishEvent;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   
   public class FileCollectionFinisher extends EventDispatcher
   {
       
      
      public var fileVO:FileVO;
      
      public var isFinished:Boolean = false;
      
      public function FileCollectionFinisher()
      {
         super();
      }
      
      public function start(param1:FileVO) : void
      {
         this.fileVO = param1;
      }
      
      public function clear() : void
      {
         this.fileVO.disposeData();
         this.fileVO.loaded = false;
         this.isFinished = false;
         var _loc1_:FileCollectionEvent = new FileCollectionEvent(FileCollectionEvent.RESOURCE_CLEARED);
         _loc1_.text = this.fileVO.id;
         dispatchEvent(_loc1_);
      }
      
      public function finish() : void
      {
         dispatchEvent(new FileCollectionFinishEvent(FileCollectionFinishEvent.FILE_FINISH,this));
      }
   }
}
