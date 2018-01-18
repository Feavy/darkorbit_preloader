package net.bigpoint.as3toolbox.filecollection.event
{
   import flash.events.Event;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   
   public class FileCollectionFinishEvent extends Event
   {
      
      public static const FILE_FINISH:String = "FileCollectionFinishEvent.FILE_FINISH";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            FILE_FINISH = "FileCollectionFinishEvent.FILE_FINISH";
         }
      }
      
      public var finisher:FileCollectionFinisher;
      
      public function FileCollectionFinishEvent(param1:String, param2:FileCollectionFinisher)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.finisher = param2;
            if(_loc4_)
            {
               super(param1,false,false);
            }
         }
      }
   }
}
