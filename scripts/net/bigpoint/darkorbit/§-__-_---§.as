package net.bigpoint.darkorbit
{
   import flash.external.ExternalInterface;
   
   public class §-__-_---§
   {
       
      
      public function §-__-_---§()
      {
         super();
      }
      
      public static function §-____----§(param1:String, param2:Object = null) : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.call("BpEventStream.track",param1,param2 || {});
         }
      }
   }
}
