package net.bigpoint.as3toolbox.filecollection.finish
{
   import §--__----§.§---___-_§;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   
   public class JSONFinisher extends FileCollectionFinisher
   {
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
      }
      
      public function JSONFinisher()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function start(param1:FileVO) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.start(param1);
            if(!_loc2_)
            {
               finish();
            }
         }
      }
      
      public function getJSON() : Object
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         return §---___-_§.§-__-__-_§(fileVO.getData(),false);
      }
   }
}
