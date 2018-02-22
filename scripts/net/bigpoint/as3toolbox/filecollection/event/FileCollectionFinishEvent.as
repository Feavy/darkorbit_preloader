package net.bigpoint.as3toolbox.filecollection.event
{
   import flash.events.Event;
   import net.bigpoint.as3toolbox.filecollection.finish.FileCollectionFinisher;
   
   public class FileCollectionFinishEvent extends Event
   {
      
      public static const FILE_FINISH:String = "FileCollectionFinishEvent.FILE_FINISH";
       
      
      public var finisher:FileCollectionFinisher;
      
      public function FileCollectionFinishEvent(param1:String, param2:FileCollectionFinisher)
      {
         this.finisher = param2;
         super(param1,false,false);
      }
   }
}
