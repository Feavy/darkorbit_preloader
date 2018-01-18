package net.bigpoint.darkorbit
{
   import flash.external.ExternalInterface;
   
   public class §-__-_---§
   {
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
      }
      
      public function §-__-_---§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public static function §-____----§(param1:String, param2:Object = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(ExternalInterface.available)
            {
               if(!_loc4_)
               {
                  ExternalInterface.call("BpEventStream.track",param1,param2 || {});
               }
            }
         }
      }
   }
}
