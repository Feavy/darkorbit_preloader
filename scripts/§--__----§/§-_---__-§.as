package §--__----§
{
   public class §-_---__-§
   {
       
      
      private var ch:String;
      
      private var §--____--§:int;
      
      private var §-_--_-__§:String;
      
      private var §-____--__§:Boolean;
      
      private var §-_-___-§:RegExp;
      
      private var §----____§:Object;
      
      public function §-_---__-§(param1:String, param2:Boolean)
      {
         this.§-_-___-§ = /[\x00-\x1F]/;
         super();
         this.§-_--_-__§ = param1;
         this.§-____--__§ = param2;
         this.§--____--§ = 0;
         this.§---__---§();
      }
      
      private function §-_-_--_-§() : void
      {
         if(this.ch == "/")
         {
            this.§---__---§();
            switch(this.ch)
            {
               case "/":
                  do
                  {
                     this.§---__---§();
                  }
                  while(this.ch != "\n" && this.ch != "");
                  
                  this.§---__---§();
                  break;
               case "*":
                  this.§---__---§();
                  while(true)
                  {
                     if(this.ch == "*")
                     {
                        this.§---__---§();
                        if(this.ch == "/")
                        {
                           break;
                        }
                     }
                     else
                     {
                        this.§---__---§();
                     }
                     if(this.ch == "")
                     {
                        this.§-__--_--§("Multi-line comment not closed");
                     }
                  }
                  this.§---__---§();
                  break;
               default:
                  this.§-__--_--§("Unexpected " + this.ch + " encountered (expecting \'/\' or \'*\' )");
            }
         }
      }
      
      private function §--_--_--§(param1:String) : Boolean
      {
         return param1 >= "0" && param1 <= "9";
      }
      
      private function §-_--_-_-§() : §-_____--_§
      {
         var _loc3_:§-_____--_§ = null;
         var _loc1_:* = "";
         if(this.ch == "-")
         {
            _loc1_ = _loc1_ + "-";
            this.§---__---§();
         }
         if(!this.§--_--_--§(this.ch))
         {
            this.§-__--_--§("Expecting a digit");
         }
         if(this.ch == "0")
         {
            _loc1_ = _loc1_ + this.ch;
            this.§---__---§();
            if(this.§--_--_--§(this.ch))
            {
               this.§-__--_--§("A digit cannot immediately follow 0");
            }
            else if(!this.§-____--__§ && this.ch == "x")
            {
               _loc1_ = _loc1_ + this.ch;
               this.§---__---§();
               if(this.§--_--_-_§(this.ch))
               {
                  _loc1_ = _loc1_ + this.ch;
                  this.§---__---§();
               }
               else
               {
                  this.§-__--_--§("Number in hex format require at least one hex digit after \"0x\"");
               }
               while(this.§--_--_-_§(this.ch))
               {
                  _loc1_ = _loc1_ + this.ch;
                  this.§---__---§();
               }
            }
         }
         else
         {
            while(this.§--_--_--§(this.ch))
            {
               _loc1_ = _loc1_ + this.ch;
               this.§---__---§();
            }
         }
         if(this.ch == ".")
         {
            _loc1_ = _loc1_ + ".";
            this.§---__---§();
            if(!this.§--_--_--§(this.ch))
            {
               this.§-__--_--§("Expecting a digit");
            }
            while(this.§--_--_--§(this.ch))
            {
               _loc1_ = _loc1_ + this.ch;
               this.§---__---§();
            }
         }
         if(this.ch == "e" || this.ch == "E")
         {
            _loc1_ = _loc1_ + "e";
            this.§---__---§();
            if(this.ch == "+" || this.ch == "-")
            {
               _loc1_ = _loc1_ + this.ch;
               this.§---__---§();
            }
            if(!this.§--_--_--§(this.ch))
            {
               this.§-__--_--§("Scientific notation number needs exponent value");
            }
            while(this.§--_--_--§(this.ch))
            {
               _loc1_ = _loc1_ + this.ch;
               this.§---__---§();
            }
         }
         var _loc2_:Number = Number(_loc1_);
         if(isFinite(_loc2_) && !isNaN(_loc2_))
         {
            _loc3_ = new §-_____--_§();
            _loc3_.type = §-_----_-§.§---_----§;
            _loc3_.value = _loc2_;
            return _loc3_;
         }
         this.§-__--_--§("Number " + _loc2_ + " is not valid!");
         return null;
      }
      
      public function §-_____-_-§(param1:String) : String
      {
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         if(this.§-____--__§ && this.§-_-___-§.test(param1))
         {
            this.§-__--_--§("String contains unescaped control character (0x00-0x1F)");
         }
         var _loc2_:* = "";
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = param1.length;
         while(true)
         {
            _loc3_ = param1.indexOf("\\",_loc4_);
            if(_loc3_ >= 0)
            {
               _loc2_ = _loc2_ + param1.substr(_loc4_,_loc3_ - _loc4_);
               _loc4_ = _loc3_ + 2;
               _loc6_ = _loc3_ + 1;
               _loc7_ = param1.charAt(_loc6_);
               switch(_loc7_)
               {
                  case "\"":
                     _loc2_ = _loc2_ + "\"";
                     break;
                  case "\\":
                     _loc2_ = _loc2_ + "\\";
                     break;
                  case "n":
                     _loc2_ = _loc2_ + "\n";
                     break;
                  case "r":
                     _loc2_ = _loc2_ + "\r";
                     break;
                  case "t":
                     _loc2_ = _loc2_ + "\t";
                     break;
                  case "u":
                     _loc8_ = "";
                     if(_loc4_ + 4 > _loc5_)
                     {
                        this.§-__--_--§("Unexpected end of input.  Expecting 4 hex digits after \\u.");
                     }
                     _loc9_ = _loc4_;
                     while(_loc9_ < _loc4_ + 4)
                     {
                        _loc10_ = param1.charAt(_loc9_);
                        if(!this.§--_--_-_§(_loc10_))
                        {
                           this.§-__--_--§("Excepted a hex digit, but found: " + _loc10_);
                        }
                        _loc8_ = _loc8_ + _loc10_;
                        _loc9_++;
                     }
                     _loc2_ = _loc2_ + String.fromCharCode(parseInt(_loc8_,16));
                     _loc4_ = _loc4_ + 4;
                     break;
                  case "f":
                     _loc2_ = _loc2_ + "\f";
                     break;
                  case "/":
                     _loc2_ = _loc2_ + "/";
                     break;
                  case "b":
                     _loc2_ = _loc2_ + "\b";
                     break;
                  default:
                     _loc2_ = _loc2_ + ("\\" + _loc7_);
               }
               if(_loc4_ >= _loc5_)
               {
                  break;
               }
               continue;
            }
            _loc2_ = _loc2_ + param1.substr(_loc4_);
            break;
         }
         return _loc2_;
      }
      
      private function §--_-----§() : void
      {
         while(this.§--_--___§(this.ch))
         {
            this.§---__---§();
         }
      }
      
      private function §--_--___§(param1:String) : Boolean
      {
         if(param1 == " " || param1 == "\t" || param1 == "\n" || param1 == "\r")
         {
            return true;
         }
         if(!this.§-____--__§ && param1.charCodeAt(0) == 160)
         {
            return true;
         }
         return false;
      }
      
      public function §-__--_--§(param1:String) : void
      {
         throw new JSONParseError(param1,this.§--____--§,this.§-_--_-__§);
      }
      
      private function readString() : §-_____--_§
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc1_:int = this.§--____--§;
         while(true)
         {
            _loc1_ = this.§-_--_-__§.indexOf("\"",_loc1_);
            if(_loc1_ >= 0)
            {
               _loc3_ = 0;
               _loc4_ = _loc1_ - 1;
               while(this.§-_--_-__§.charAt(_loc4_) == "\\")
               {
                  _loc3_++;
                  _loc4_--;
               }
               if(_loc3_ % 2 == 0)
               {
                  break;
               }
               _loc1_++;
            }
            else
            {
               this.§-__--_--§("Unterminated string literal");
            }
         }
         var _loc2_:§-_____--_§ = new §-_____--_§();
         _loc2_.type = §-_----_-§.§---_-_-§;
         _loc2_.value = this.§-_____-_-§(this.§-_--_-__§.substr(this.§--____--§,_loc1_ - this.§--____--§));
         this.§--____--§ = _loc1_ + 1;
         this.§---__---§();
         return _loc2_;
      }
      
      private function §---__---§() : String
      {
         return this.ch = this.§-_--_-__§.charAt(this.§--____--§++);
      }
      
      private function §--§() : void
      {
         var _loc1_:int = 0;
         do
         {
            _loc1_ = this.§--____--§;
            this.§--_-----§();
            this.§-_-_--_-§();
         }
         while(_loc1_ != this.§--____--§);
         
      }
      
      private function §--_--_-_§(param1:String) : Boolean
      {
         return this.§--_--_--§(param1) || param1 >= "A" && param1 <= "F" || param1 >= "a" && param1 <= "f";
      }
      
      public function §--_---_-§() : §-_____--_§
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:* = null;
         var _loc5_:String = null;
         var _loc1_:§-_____--_§ = new §-_____--_§();
         this.§--§();
         switch(this.ch)
         {
            case "{":
               _loc1_.type = §-_----_-§.§--_-_-§;
               _loc1_.value = "{";
               this.§---__---§();
               break;
            case "}":
               _loc1_.type = §-_----_-§.§-____--§;
               _loc1_.value = "}";
               this.§---__---§();
               break;
            case "[":
               _loc1_.type = §-_----_-§.§-----___§;
               _loc1_.value = "[";
               this.§---__---§();
               break;
            case "]":
               _loc1_.type = §-_----_-§.§-_--__-§;
               _loc1_.value = "]";
               this.§---__---§();
               break;
            case ",":
               _loc1_.type = §-_----_-§.§-____-_§;
               _loc1_.value = ",";
               this.§---__---§();
               break;
            case ":":
               _loc1_.type = §-_----_-§.§-______--§;
               _loc1_.value = ":";
               this.§---__---§();
               break;
            case "t":
               _loc2_ = "t" + this.§---__---§() + this.§---__---§() + this.§---__---§();
               if(_loc2_ == "true")
               {
                  _loc1_.type = §-_----_-§.§--_--_-§;
                  _loc1_.value = true;
                  this.§---__---§();
                  break;
               }
               this.§-__--_--§("Expecting \'true\' but found " + _loc2_);
               break;
            case "f":
               _loc3_ = "f" + this.§---__---§() + this.§---__---§() + this.§---__---§() + this.§---__---§();
               if(_loc3_ == "false")
               {
                  _loc1_.type = §-_----_-§.§-_-_-_-_§;
                  _loc1_.value = false;
                  this.§---__---§();
                  break;
               }
               this.§-__--_--§("Expecting \'false\' but found " + _loc3_);
               break;
            case "n":
               _loc4_ = "n" + this.§---__---§() + this.§---__---§() + this.§---__---§();
               if("n" + this.§---__---§() + this.§---__---§() + this.§---__---§() == "null")
               {
                  _loc1_.type = §-_----_-§.§--___§;
                  _loc1_.value = null;
                  this.§---__---§();
                  break;
               }
               this.§-__--_--§("Expecting \'null\' but found " + _loc4_);
               break;
            case "N":
               _loc5_ = "N" + this.§---__---§() + this.§---__---§();
               if(_loc5_ == "NaN")
               {
                  _loc1_.type = §-_----_-§.§---_--§;
                  _loc1_.value = NaN;
                  this.§---__---§();
                  break;
               }
               this.§-__--_--§("Expecting \'NaN\' but found " + _loc5_);
               break;
            case "\"":
               _loc1_ = this.readString();
               break;
            default:
               if(this.§--_--_--§(this.ch) || this.ch == "-")
               {
                  _loc1_ = this.§-_--_-_-§();
                  break;
               }
               if(this.ch == "")
               {
                  return null;
               }
               this.§-__--_--§("Unexpected " + this.ch + " encountered");
               break;
         }
         return _loc1_;
      }
   }
}
