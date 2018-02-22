package §-_-_--__§
{
   public class §-________§ extends §-_--_-_§
   {
       
      
      public var §--___-_-§:Boolean;
      
      protected var §-_--_---§:§-_--_-_§;
      
      protected var §--_-_§:§-_--_-_§;
      
      public function §-________§(param1:Object = null)
      {
         super(0,param1);
      }
      
      public function get §-_-__-_§() : Number
      {
         return this.§--__-§;
      }
      
      public function §--_-_---§(param1:§-_--_-_§, param2:* = 0) : §-_--_-_§
      {
         if(!param1.§--__-_--§ && param1.timeline)
         {
            param1.timeline.remove(param1,true);
         }
         param1.timeline = this;
         param1.§--_--_§ = Number(param2) + param1.delay;
         if(param1.gc)
         {
            param1.§-__-____§(true,true);
         }
         if(param1.§-____-___§)
         {
            param1.§-_---_-§ = param1.§--_--_§ + (this.§-_-__-_§ - param1.§--_--_§) / param1.§--__-__§;
         }
         if(§-_--_---§)
         {
            §-_--_---§.§-___-_-§ = param1;
         }
         else
         {
            §--_-_§ = param1;
         }
         param1.§--_-___§ = §-_--_---§;
         §-_--_---§ = param1;
         param1.§-___-_-§ = null;
         param1.§--__-_--§ = false;
         return param1;
      }
      
      override public function §---_-_--§(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:§-_--_-_§ = null;
         var _loc4_:§-_--_-_§ = §--_-_§;
         this.§--__-§ = param1;
         this.§-_-__-_-§ = param1;
         while(_loc4_)
         {
            _loc6_ = _loc4_.§-___-_-§;
            if(_loc4_.§-_---_-_§ || param1 >= _loc4_.§--_--_§ && !_loc4_.§-____-___§ && !_loc4_.gc)
            {
               if(!_loc4_.§--_----_§)
               {
                  _loc4_.§---_-_--§((param1 - _loc4_.§--_--_§) * _loc4_.§--__-__§,param2,false);
               }
               else
               {
                  _loc5_ = !!_loc4_.§---__-_-§?Number(_loc4_.§----§):Number(_loc4_.§-__-_§);
                  _loc4_.§---_-_--§(_loc5_ - (param1 - _loc4_.§--_--_§) * _loc4_.§--__-__§,param2,false);
               }
            }
            _loc4_ = _loc6_;
         }
      }
      
      public function remove(param1:§-_--_-_§, param2:Boolean = false) : void
      {
         if(param1.§--__-_--§)
         {
            return;
         }
         if(!param2)
         {
            param1.§-__-____§(false,true);
         }
         if(param1.§-___-_-§)
         {
            param1.§-___-_-§.§--_-___§ = param1.§--_-___§;
         }
         else if(§-_--_---§ == param1)
         {
            §-_--_---§ = param1.§--_-___§;
         }
         if(param1.§--_-___§)
         {
            param1.§--_-___§.§-___-_-§ = param1.§-___-_-§;
         }
         else if(§--_-_§ == param1)
         {
            §--_-_§ = param1.§-___-_-§;
         }
         param1.§--__-_--§ = true;
      }
   }
}
