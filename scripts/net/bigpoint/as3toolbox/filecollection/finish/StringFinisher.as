package net.bigpoint.as3toolbox.filecollection.finish
{
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   
   public class StringFinisher extends FileCollectionFinisher
   {
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
      }
      
      public function StringFinisher()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
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
            if(!_loc3_)
            {
            }
            addr29:
            return;
         }
         finish();
         §§goto(addr29);
      }
      
      public function getString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         return fileVO.getData();
      }
   }
}
