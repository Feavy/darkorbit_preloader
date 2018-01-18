package net.bigpoint.as3toolbox.filecollection
{
   import flash.display.LoaderInfo;
   
   public function getDefinitionNames(param1:LoaderInfo) : Array
   {
      var _loc2_:uint = param1.bytes.position;
      var _loc3_:Finder = new Finder(param1.bytes);
      param1.bytes.position = _loc2_;
      return _loc3_.getDefinitionNames();
   }
}

import flash.utils.ByteArray;

class Finder
{
    
   
   private var _data:SWFByteArray;
   
   private var _stringTable:Array;
   
   private var _namespaceTable:Array;
   
   private var _multinameTable:Array;
   
   function Finder(param1:ByteArray)
   {
      super();
      this._data = new SWFByteArray(param1);
   }
   
   public function getDefinitionNames() : Array
   {
      var _loc3_:uint = 0;
      var _loc1_:Array = new Array();
      var _loc2_:uint = this.findTag();
      while(_loc2_)
      {
         _loc3_ = this._data.position;
         _loc1_.push.apply(_loc1_,this.getDefinitionNamesInTag());
         this._data.position = _loc3_ + _loc2_;
         _loc2_ = this.findTag();
      }
      return _loc1_;
   }
   
   private function findTag() : uint
   {
      var _loc1_:uint = 0;
      var _loc2_:uint = 0;
      var _loc3_:uint = 0;
      var _loc4_:uint = 0;
      var _loc5_:uint = 0;
      loop0:
      while(true)
      {
         if(this._data.bytesAvailable <= 1)
         {
            return 0;
         }
         _loc1_ = this._data.readUnsignedShort();
         _loc2_ = _loc1_ >> 6;
         _loc3_ = _loc1_ & 63;
         _loc3_ = _loc3_ == 63?uint(this._data.readUnsignedInt()):uint(_loc3_);
         switch(_loc2_)
         {
            case 72:
            case 82:
               if(_loc2_ == 82)
               {
                  this._data.position = this._data.position + 4;
                  this._data.readString();
               }
               _loc4_ = this._data.readUnsignedShort();
               _loc5_ = this._data.readUnsignedShort();
               if(_loc4_ == 16 && _loc5_ == 46)
               {
                  break loop0;
               }
               this._data.position = this._data.position + _loc3_;
               continue;
            default:
               this._data.position = this._data.position + _loc3_;
               continue;
         }
      }
      return _loc3_;
   }
   
   private function getDefinitionNamesInTag() : Array
   {
      var _loc1_:int = 0;
      var _loc2_:uint = 0;
      var _loc3_:uint = 0;
      var _loc4_:uint = 0;
      var _loc5_:uint = 0;
      var _loc6_:uint = 0;
      var _loc8_:uint = 0;
      var _loc9_:int = 0;
      var _loc10_:uint = 0;
      var _loc11_:String = null;
      var _loc12_:uint = 0;
      var _loc13_:uint = 0;
      var _loc7_:Array = new Array();
      this._stringTable = new Array();
      this._namespaceTable = new Array();
      this._multinameTable = new Array();
      _loc1_ = this._data.readASInt() - 1;
      while(_loc1_ > 0 && _loc1_--)
      {
         this._data.readASInt();
      }
      _loc1_ = this._data.readASInt() - 1;
      while(_loc1_ > 0 && _loc1_--)
      {
         this._data.readASInt();
      }
      _loc1_ = this._data.readASInt() - 1;
      while(_loc1_ > 0 && _loc1_--)
      {
         this._data.readDouble();
      }
      _loc1_ = this._data.readASInt() - 1;
      _loc3_ = 1;
      while(_loc1_ > 0 && _loc1_--)
      {
         this._stringTable[_loc3_] = this._data.readUTFBytes(this._data.readASInt());
         _loc3_++;
      }
      _loc1_ = this._data.readASInt() - 1;
      _loc3_ = 1;
      while(_loc1_ > 0 && _loc1_--)
      {
         this._data.readUnsignedByte();
         this._namespaceTable[_loc3_] = this._data.readASInt();
         _loc3_++;
      }
      _loc1_ = this._data.readASInt() - 1;
      while(_loc1_ > 0 && _loc1_--)
      {
         _loc5_ = this._data.readUnsignedByte();
         while(_loc5_--)
         {
            this._data.readASInt();
         }
      }
      _loc1_ = this._data.readASInt() - 1;
      _loc3_ = 1;
      while(_loc1_ > 0 && _loc1_--)
      {
         _loc2_ = this._data.readASInt();
         switch(_loc2_)
         {
            case 7:
            case 13:
               _loc6_ = this._data.readASInt();
               this._multinameTable[_loc3_] = [_loc6_,this._data.readASInt()];
               break;
            case 15:
            case 16:
               this._multinameTable[_loc3_] = [0,this._stringTable[this._data.readASInt()]];
               break;
            case 17:
            case 18:
               break;
            case 9:
            case 14:
               this._multinameTable[_loc3_] = [0,this._stringTable[this._data.readASInt()]];
               this._data.readASInt();
               break;
            case 27:
            case 28:
               this._data.readASInt();
         }
         _loc3_++;
      }
      _loc1_ = this._data.readASInt();
      while(_loc1_ > 0 && _loc1_--)
      {
         _loc9_ = this._data.readASInt();
         _loc5_ = _loc9_;
         this._data.readASInt();
         while(_loc5_--)
         {
            this._data.readASInt();
         }
         this._data.readASInt();
         _loc4_ = this._data.readUnsignedByte();
         if(_loc4_ & 8)
         {
            _loc5_ = this._data.readASInt();
            while(_loc5_--)
            {
               this._data.readASInt();
               this._data.readASInt();
            }
         }
         if(_loc4_ & 128)
         {
            _loc5_ = _loc9_;
            while(_loc5_--)
            {
               this._data.readASInt();
            }
            continue;
         }
      }
      _loc1_ = this._data.readASInt();
      while(_loc1_ > 0 && _loc1_--)
      {
         this._data.readASInt();
         _loc5_ = this._data.readASInt();
         while(_loc5_--)
         {
            this._data.readASInt();
            this._data.readASInt();
         }
      }
      _loc1_ = this._data.readASInt();
      while(_loc1_ > 0 && _loc1_--)
      {
         _loc3_ = this._data.readASInt();
         this._data.readASInt();
         _loc4_ = this._data.readUnsignedByte();
         if(_loc4_ & 8)
         {
            _loc8_ = this._data.readASInt();
         }
         _loc5_ = this._data.readASInt();
         while(_loc5_--)
         {
            this._data.readASInt();
         }
         this._data.readASInt();
         _loc10_ = this._data.readASInt();
         while(_loc10_--)
         {
            this._data.readASInt();
            _loc2_ = this._data.readUnsignedByte();
            _loc12_ = _loc2_ >> 4;
            _loc13_ = _loc2_ & 15;
            switch(_loc13_)
            {
               case 0:
               case 6:
                  this._data.readASInt();
                  this._data.readASInt();
                  if(this._data.readASInt())
                  {
                     this._data.readUnsignedByte();
                  }
                  break;
               default:
                  this._data.readASInt();
                  this._data.readASInt();
            }
            if(_loc12_ & 4)
            {
               _loc5_ = this._data.readASInt();
               while(_loc5_--)
               {
                  this._data.readASInt();
               }
               continue;
            }
         }
         _loc6_ = this._multinameTable[_loc3_][0];
         _loc11_ = this._stringTable[this._namespaceTable[_loc6_]] || "";
         if(_loc11_.indexOf(".as$") < 0)
         {
            _loc7_.push((!!_loc11_?_loc11_ + "::":"") + this._stringTable[this._multinameTable[_loc3_][1]]);
         }
      }
      return _loc7_;
   }
}

import flash.geom.Rectangle;
import flash.utils.ByteArray;
import flash.utils.Endian;

class SWFByteArray extends ByteArray
{
   
   private static const TAG_SWF:String = "FWS";
   
   private static const TAG_SWF_COMPRESSED:String = "CWS";
    
   
   private var _bitIndex:uint;
   
   private var _version:uint;
   
   private var _frameRate:Number;
   
   private var _rect:Rectangle;
   
   function SWFByteArray(param1:ByteArray = null)
   {
      var _loc2_:String = null;
      var _loc3_:String = null;
      super();
      super.endian = Endian.LITTLE_ENDIAN;
      if(param1)
      {
         _loc2_ = param1.endian;
         param1.endian = Endian.LITTLE_ENDIAN;
         if(param1.bytesAvailable > 26)
         {
            _loc3_ = param1.readUTFBytes(3);
            if(_loc3_ == SWFByteArray.TAG_SWF || _loc3_ == SWFByteArray.TAG_SWF_COMPRESSED)
            {
               this._version = param1.readUnsignedByte();
               param1.readUnsignedInt();
               param1.readBytes(this);
               if(_loc3_ == SWFByteArray.TAG_SWF_COMPRESSED)
               {
                  super.uncompress();
               }
               this.readHeader();
            }
            else
            {
               throw new ArgumentError("Error #2124: Loaded file is an unknown type.");
            }
         }
         param1.endian = _loc2_;
      }
   }
   
   public function get version() : uint
   {
      return this._version;
   }
   
   public function get frameRate() : Number
   {
      return this._frameRate;
   }
   
   public function get rect() : Rectangle
   {
      return this._rect;
   }
   
   public function writeBytesFromString(param1:String) : void
   {
      var _loc4_:String = null;
      var _loc5_:uint = 0;
      var _loc2_:uint = param1.length;
      var _loc3_:uint = 0;
      while(_loc3_ < _loc2_)
      {
         _loc4_ = param1.substr(_loc3_,2);
         _loc5_ = parseInt(_loc4_,16);
         writeByte(_loc5_);
         _loc3_ = _loc3_ + 2;
      }
   }
   
   public function readRect() : Rectangle
   {
      var _loc1_:uint = super.position;
      var _loc2_:uint = this[_loc1_];
      var _loc3_:uint = _loc2_ >> 3;
      var _loc4_:Number = this.readBits(_loc3_,5) / 20;
      var _loc5_:Number = this.readBits(_loc3_) / 20;
      var _loc6_:Number = this.readBits(_loc3_) / 20;
      var _loc7_:Number = this.readBits(_loc3_) / 20;
      super.position = _loc1_ + Math.ceil((_loc3_ * 4 - 3) / 8) + 1;
      return new Rectangle(_loc4_,_loc6_,_loc5_ - _loc4_,_loc7_ - _loc6_);
   }
   
   public function readBits(param1:uint, param2:int = -1) : Number
   {
      if(param2 < 0)
      {
         param2 = this._bitIndex;
      }
      this._bitIndex = param2;
      var _loc3_:uint = this[super.position];
      var _loc4_:Number = 0;
      var _loc5_:Number = 0;
      var _loc6_:uint = 8 - param2;
      var _loc7_:Number = param1 - _loc6_;
      if(_loc7_ > 0)
      {
         _loc8_.super.position = super.position + 1;
         _loc4_ = this.readBits(_loc7_,0) | (_loc3_ & 1 << _loc6_ - 1) << _loc7_;
      }
      else
      {
         _loc4_ = _loc3_ >> 8 - param1 - param2 & 1 << param1 - 1;
         this._bitIndex = (param2 + param1) % 8;
         if(param2 + param1 > 7)
         {
            _loc8_.super.position = super.position + 1;
         }
      }
      return _loc4_;
   }
   
   public function readASInt() : int
   {
      var _loc3_:uint = 0;
      var _loc1_:uint = 0;
      var _loc2_:uint = 0;
      do
      {
         _loc3_ = super.readUnsignedByte();
         _loc1_ = _loc1_ | (_loc3_ & 127) << _loc2_ * 7;
         _loc2_ = _loc2_ + 1;
      }
      while(_loc3_ & 1 << 7);
      
      return _loc1_;
   }
   
   public function readString() : String
   {
      var _loc1_:uint = super.position;
      while(this[_loc1_] && (_loc1_ = _loc1_ + 1))
      {
      }
      var _loc2_:String = super.readUTFBytes(_loc1_ - super.position);
      super.position = _loc1_ + 1;
      return _loc2_;
   }
   
   public function traceArray(param1:ByteArray) : String
   {
      var _loc5_:String = null;
      var _loc2_:String = "";
      var _loc3_:uint = param1.position;
      var _loc4_:uint = 0;
      param1.position = 0;
      while(param1.bytesAvailable)
      {
         _loc5_ = param1.readUnsignedByte().toString(16).toUpperCase();
         _loc5_ = _loc5_.length < 2?"0" + _loc5_:_loc5_;
         _loc2_ = _loc2_ + (_loc5_ + " ");
      }
      param1.position = _loc3_;
      return _loc2_;
   }
   
   private function readFrameRate() : void
   {
      var _loc1_:Number = NaN;
      if(this._version < 8)
      {
         this._frameRate = super.readUnsignedShort();
      }
      else
      {
         _loc1_ = super.readUnsignedByte() / 255;
         this._frameRate = super.readUnsignedByte() + _loc1_;
      }
   }
   
   private function readHeader() : void
   {
      this._rect = this.readRect();
      this.readFrameRate();
      super.readShort();
   }
}
