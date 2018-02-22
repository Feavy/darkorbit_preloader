package net.bigpoint.as3toolbox.filecollection.finish
{
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   
   public class StringFinisher extends FileCollectionFinisher
   {
       
      
      public function StringFinisher()
      {
         super();
      }
      
      override public function start(param1:FileVO) : void
      {
         super.start(param1);
         finish();
      }
      
      public function getString() : String
      {
         return fileVO.getData();
      }
   }
}
