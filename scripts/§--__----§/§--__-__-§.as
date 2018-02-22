package §--__----§
{
   import flash.utils.describeType;
   
   public class §--__-__-§
   {
       
      
      private var §-_--_-__§:String;
      
      public function §--__-__-§(param1:*)
      {
         super();
         this.§-_--_-__§ = this.§-_-_-_§(param1);
      }
      
      private function §-_____§(param1:String) : String
      {
         var _loc3_:String = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc2_:* = "";
         var _loc4_:Number = param1.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc3_ = param1.charAt(_loc5_);
            switch(_loc3_)
            {
               case "\"":
                  _loc2_ = _loc2_ + "\\\"";
                  break;
               case "\\":
                  _loc2_ = _loc2_ + "\\\\";
                  break;
               case "\b":
                  _loc2_ = _loc2_ + "\\b";
                  break;
               case "\f":
                  _loc2_ = _loc2_ + "\\f";
                  break;
               case "\n":
                  _loc2_ = _loc2_ + "\\n";
                  break;
               case "\r":
                  _loc2_ = _loc2_ + "\\r";
                  break;
               case "\t":
                  _loc2_ = _loc2_ + "\\t";
                  break;
               default:
                  if(_loc3_ < " ")
                  {
                     _loc6_ = _loc3_.charCodeAt(0).toString(16);
                     _loc7_ = _loc3_.charCodeAt(0).toString(16).length == 2?"00":"000";
                     _loc2_ = _loc2_ + ("\\u" + _loc7_ + _loc6_);
                     break;
                  }
                  _loc2_ = _loc2_ + _loc3_;
                  break;
            }
            _loc5_++;
         }
         return "\"" + _loc2_ + "\"";
      }
      
      private function §------__§(param1:Array) : String
      {
         var _loc2_:* = "";
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            if(_loc2_.length > 0)
            {
               _loc2_ = _loc2_ + ",";
            }
            _loc2_ = _loc2_ + this.§-_-_-_§(param1[_loc3_]);
            _loc3_++;
         }
         return "[" + _loc2_ + "]";
      }
      
      public function getString() : String
      {
         return this.§-_--_-__§;
      }
      
      private function §-_--__-_§(param1:Object) : String
      {
         var §---_-__-§:Object = null;
         var §-_-_--§:String = null;
         var §--_-__-_§:XML = null;
         var §--__--§:Object = param1;
         var §-_______-§:String = "";
         var §--___--§:XML = describeType(§--__--§);
         if(§--___--§.@name.toString() == "Object")
         {
            for(§-_-_--§ in §--__--§)
            {
               §---_-__-§ = §--__--§[§-_-_--§];
               if(!(§---_-__-§ is Function))
               {
                  if(§-_______-§.length > 0)
                  {
                     §-_______-§ = §-_______-§ + ",";
                  }
                  §-_______-§ = §-_______-§ + (this.§-_____§(§-_-_--§) + ":" + this.§-_-_-_§(§---_-__-§));
               }
            }
         }
         else
         {
            for each(§--_-__-_§ in §--___--§..§*§.(name() == "variable" || name() == "accessor" && attribute("access").charAt(0) == "r"))
            {
               if(!(§--_-__-_§.metadata && §--_-__-_§.metadata.(@name == "Transient").length() > 0))
               {
                  if(§-_______-§.length > 0)
                  {
                     §-_______-§ = §-_______-§ + ",";
                  }
                  §-_______-§ = §-_______-§ + (this.§-_____§(§--_-__-_§.@name.toString()) + ":" + this.§-_-_-_§(§--__--§[§--_-__-_§.@name]));
               }
            }
         }
         return "{" + §-_______-§ + "}";
      }
      
      private function §-_-_-_§(param1:*) : String
      {
         if(param1 is String)
         {
            return this.§-_____§(param1 as String);
         }
         if(param1 is Number)
         {
            return !!isFinite(param1 as Number)?param1.toString():"null";
         }
         if(param1 is Boolean)
         {
            return !!param1?"true":"false";
         }
         if(param1 is Array)
         {
            return this.§------__§(param1 as Array);
         }
         if(param1 is Object && param1 != null)
         {
            return this.§-_--__-_§(param1);
         }
         return "null";
      }
   }
}
