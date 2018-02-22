package net.bigpoint.as3toolbox.filecollection.finish
{
   import §--__----§.§---___-_§;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   
   public class JSONFinisher extends FileCollectionFinisher
   {
       
      
      public function JSONFinisher()
      {
         super();
      }
      
      override public function start(param1:FileVO) : void
      {
         super.start(param1);
         finish();
      }
      
      public function getJSON() : Object
      {
         return §---___-_§.§-__-__-_§(fileVO.getData(),false);
      }
   }
}
