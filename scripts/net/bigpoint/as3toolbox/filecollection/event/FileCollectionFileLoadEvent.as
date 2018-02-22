package net.bigpoint.as3toolbox.filecollection.event
{
   import flash.events.Event;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   
   public class FileCollectionFileLoadEvent extends Event
   {
      
      public static const FILE_LOADED:String = "FileCollectionFileLoadEvent.FILE_LOADED";
      
      public static const FILE_LOAD_ERROR:String = "FileCollectionFileLoadEvent.FILE_LOAD_ERROR";
       
      
      public var fileVO:FileVO;
      
      public function FileCollectionFileLoadEvent(param1:String, param2:FileVO, param3:Boolean = false, param4:Boolean = false)
      {
         this.fileVO = param2;
         super(param1,param3,param4);
      }
   }
}
