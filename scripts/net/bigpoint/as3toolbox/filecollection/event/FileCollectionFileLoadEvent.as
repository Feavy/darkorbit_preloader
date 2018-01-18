package net.bigpoint.as3toolbox.filecollection.event
{
   import flash.events.Event;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   
   public class FileCollectionFileLoadEvent extends Event
   {
      
      public static const FILE_LOADED:String = "FileCollectionFileLoadEvent.FILE_LOADED";
      
      public static const FILE_LOAD_ERROR:String = "FileCollectionFileLoadEvent.FILE_LOAD_ERROR";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            FILE_LOADED = "FileCollectionFileLoadEvent.FILE_LOADED";
            if(_loc2_)
            {
            }
            addr29:
            return;
         }
         §§goto(addr29);
      }
      
      public var fileVO:FileVO;
      
      public function FileCollectionFileLoadEvent(param1:String, param2:FileVO, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.fileVO = param2;
            if(_loc6_)
            {
            }
            addr32:
            return;
         }
         super(param1,param3,param4);
         §§goto(addr32);
      }
   }
}
