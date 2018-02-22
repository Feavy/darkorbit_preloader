package net.bigpoint.darkorbit.fooskater.embed.dolls.encryption.algorithms
{
   import §--_--__-§.§---_-__§;
   import §-___--_§.§-__----_§;
   import §-___--_§.§-_____---§;
   import flash.utils.ByteArray;
   
   public class Decrypter extends §---_-__§
   {
       
      
      public var §-___--§:Array;
      
      public var §-_-___--§:Array;
      
      private var §---§:uint = 0;
      
      private var §---__-§:uint = 0;
      
      private var key:Array;
      
      private var §-_______-§:Array;
      
      private var §-__-_-§:§-_____---§;
      
      public function Decrypter(param1:ByteArray, param2:§-__----_§ = null)
      {
         this.§-_______-§ = new Array(10);
         super();
         var _loc3_:Array = [1,2,3,4,5,6,7,8,9,10];
         this.§-__-_-§ = param2 || new §-__----_§();
         if(_loc3_ == null || _loc3_.length != 10)
         {
            return;
         }
         this.key = this.§--__--__§(param1);
         this.§--___-§(_loc3_);
      }
      
      private function §--__--__§(param1:ByteArray) : Array
      {
         if(this.§-__-_-§)
         {
            param1 = this.§-__-_-§.hash(param1);
            param1.position = 0;
         }
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_.push(param1.readByte());
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function §--___-§(param1:Array) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         this.§-_______-§[0] = this.§-_-_--_§(this.key,0);
         this.§-_______-§[1] = this.§-_-_--_§(this.key,4);
         this.§-_______-§[2] = this.key[8] & 255 | this.key[9] << 8 & 65280;
         this.§-_______-§[3] = this.§-_-_--_§(param1,0);
         this.§-_______-§[4] = this.§-_-_--_§(param1,4);
         this.§-_______-§[5] = param1[8] & 255 | param1[9] << 8 & 65280;
         this.§-_______-§[6] = 0;
         this.§-_______-§[7] = 0;
         this.§-_______-§[8] = 0;
         this.§-_______-§[9] = 28672;
         var _loc2_:uint = 0;
         while(_loc2_ < 4 * 9)
         {
            _loc3_ = (this.§-_______-§[2] << 96 - 66 | this.§-_______-§[1] >>> 66 - 64) ^ (this.§-_______-§[2] << 96 - 93 | this.§-_______-§[1] >>> 93 - 64);
            _loc4_ = (this.§-_______-§[5] << 96 - 69 | this.§-_______-§[4] >>> 69 - 64) ^ (this.§-_______-§[5] << 96 - 84 | this.§-_______-§[4] >>> 84 - 64);
            _loc5_ = (this.§-_______-§[8] << 96 - 66 | this.§-_______-§[7] >>> 66 - 64) ^ (this.§-_______-§[9] << 128 - 111 | this.§-_______-§[8] >>> 111 - 96);
            _loc3_ = _loc3_ ^ ((this.§-_______-§[2] << 96 - 91 | this.§-_______-§[1] >>> 91 - 64) & (this.§-_______-§[2] << 96 - 92 | this.§-_______-§[1] >>> 92 - 64) ^ (this.§-_______-§[5] << 96 - 78 | this.§-_______-§[4] >>> 78 - 64));
            _loc4_ = _loc4_ ^ ((this.§-_______-§[5] << 96 - 82 | this.§-_______-§[4] >>> 82 - 64) & (this.§-_______-§[5] << 96 - 83 | this.§-_______-§[4] >>> 83 - 64) ^ (this.§-_______-§[8] << 96 - 87 | this.§-_______-§[7] >>> 87 - 64));
            _loc5_ = _loc5_ ^ ((this.§-_______-§[9] << 128 - 109 | this.§-_______-§[8] >>> 109 - 96) & (this.§-_______-§[9] << 128 - 110 | this.§-_______-§[8] >>> 110 - 96) ^ (this.§-_______-§[2] << 96 - 69 | this.§-_______-§[1] >>> 69 - 64));
            this.§-_______-§[2] = this.§-_______-§[1];
            this.§-_______-§[1] = this.§-_______-§[0];
            this.§-_______-§[0] = _loc5_;
            this.§-_______-§[5] = this.§-_______-§[4];
            this.§-_______-§[4] = this.§-_______-§[3];
            this.§-_______-§[3] = _loc3_;
            this.§-_______-§[9] = this.§-_______-§[8];
            this.§-_______-§[8] = this.§-_______-§[7];
            this.§-_______-§[7] = this.§-_______-§[6];
            this.§-_______-§[6] = _loc4_;
            _loc2_++;
         }
      }
      
      private function §-_-_--_§(param1:Array, param2:uint) : int
      {
         return param1[param2 + 3] << 24 | (param1[param2 + 2] & 255) << 16 | (param1[param2 + 1] & 255) << 8 | param1[param2] & 255;
      }
      
      public function §---__-_§(param1:Vector.<uint>, param2:uint, param3:Vector.<uint>, param4:uint, param5:uint) : void
      {
         var _loc6_:uint = param4 + param5;
         while(param4 < _loc6_)
         {
            if(this.§---__-§ == 0)
            {
               this.§---§ = this.§-____---§();
               this.§---__-§ = 4;
            }
            param3[param4] = (param1[param2] ^ this.§---§) & 255;
            this.§---§ = this.§---§ >> 8;
            this.§---__-§--;
            param4 = param4 + 1;
            param2 = param2 + 1;
         }
      }
      
      private function §-____---§() : uint
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         _loc1_ = (this.§-_______-§[2] << 96 - 66 | this.§-_______-§[1] >>> 66 - 64) ^ (this.§-_______-§[2] << 96 - 93 | this.§-_______-§[1] >>> 93 - 64);
         _loc2_ = (this.§-_______-§[5] << 96 - 69 | this.§-_______-§[4] >>> 69 - 64) ^ (this.§-_______-§[5] << 96 - 84 | this.§-_______-§[4] >>> 84 - 64);
         _loc3_ = (this.§-_______-§[8] << 96 - 66 | this.§-_______-§[7] >>> 66 - 64) ^ (this.§-_______-§[9] << 128 - 111 | this.§-_______-§[8] >>> 111 - 96);
         var _loc4_:uint = _loc1_ ^ _loc2_ ^ _loc3_;
         _loc1_ = _loc1_ ^ ((this.§-_______-§[2] << 96 - 91 | this.§-_______-§[1] >>> 91 - 64) & (this.§-_______-§[2] << 96 - 92 | this.§-_______-§[1] >>> 92 - 64) ^ (this.§-_______-§[5] << 96 - 78 | this.§-_______-§[4] >>> 78 - 64));
         _loc2_ = _loc2_ ^ ((this.§-_______-§[5] << 96 - 82 | this.§-_______-§[4] >>> 82 - 64) & (this.§-_______-§[5] << 96 - 83 | this.§-_______-§[4] >>> 83 - 64) ^ (this.§-_______-§[8] << 96 - 87 | this.§-_______-§[7] >>> 87 - 64));
         _loc3_ = _loc3_ ^ ((this.§-_______-§[9] << 128 - 109 | this.§-_______-§[8] >>> 109 - 96) & (this.§-_______-§[9] << 128 - 110 | this.§-_______-§[8] >>> 110 - 96) ^ (this.§-_______-§[2] << 96 - 69 | this.§-_______-§[1] >>> 69 - 64));
         this.§-_______-§[2] = this.§-_______-§[1];
         this.§-_______-§[1] = this.§-_______-§[0];
         this.§-_______-§[0] = _loc3_;
         this.§-_______-§[5] = this.§-_______-§[4];
         this.§-_______-§[4] = this.§-_______-§[3];
         this.§-_______-§[3] = _loc1_;
         this.§-_______-§[9] = this.§-_______-§[8];
         this.§-_______-§[8] = this.§-_______-§[7];
         this.§-_______-§[7] = this.§-_______-§[6];
         this.§-_______-§[6] = _loc2_;
         return _loc4_;
      }
      
      override public function decrypt(param1:ByteArray) : void
      {
         var _loc2_:Vector.<uint> = new Vector.<uint>();
         this.§---__-_§(§--___--_§(param1),0,_loc2_,0,param1.length);
         var _loc3_:ByteArray = §--___-__§(_loc2_);
         param1.clear();
         param1.position = 0;
         param1.writeBytes(_loc3_);
      }
   }
}
