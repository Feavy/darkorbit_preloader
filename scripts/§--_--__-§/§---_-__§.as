package §--_--__-§
{
   import §-___--_§.§-_____---§;
   import flash.net.LocalConnection;
   import flash.utils.ByteArray;
   
   public class §---_-__§ implements §-____--_§
   {
       
      
      protected var §-___-_§:§-_____---§;
      
      public function §---_-__§()
      {
         super();
      }
      
      public function set hash(param1:§-_____---§) : void
      {
         this.§-___-_§ = param1;
      }
      
      public function decrypt(param1:ByteArray) : void
      {
      }
      
      public function §-______-§() : void
      {
      }
      
      public function gc() : void
      {
         try
         {
            new LocalConnection().connect("foo");
            new LocalConnection().connect("foo");
            return;
         }
         catch(e:*)
         {
            return;
         }
      }
      
      protected function §--___-__§(param1:Vector.<uint>) : ByteArray
      {
         var _loc4_:uint = 0;
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:uint = 0;
         while(_loc3_ < param1.length)
         {
            _loc4_ = param1[_loc3_];
            _loc2_.writeByte(_loc4_);
            _loc3_++;
         }
         return _loc2_;
      }
      
      protected function §--___--_§(param1:ByteArray) : Vector.<uint>
      {
         var _loc4_:uint = 0;
         var _loc2_:Vector.<uint> = new Vector.<uint>();
         var _loc3_:uint = param1.length;
         param1.position = 0;
         while(param1.position < _loc3_)
         {
            _loc4_ = param1.readUnsignedByte();
            _loc2_.push(_loc4_);
         }
         return _loc2_;
      }
      
      public function §---_--_-§(param1:ByteArray, param2:int) : ByteArray
      {
         var _loc3_:ByteArray = null;
         var _loc4_:ByteArray = null;
         var _loc5_:int = 0;
         if(this.§-___-_§ != null)
         {
            _loc3_ = this.§-___-_§.hash(param1);
            if(param2 < _loc3_.length)
            {
               _loc4_ = new ByteArray();
               _loc4_.length = param2;
               _loc5_ = 0;
               while(_loc5_ < _loc4_.length)
               {
                  _loc4_[_loc5_] = _loc3_[_loc5_];
                  _loc5_++;
               }
               _loc3_ = _loc4_;
            }
            return _loc3_;
         }
         return param1;
      }
   }
}
