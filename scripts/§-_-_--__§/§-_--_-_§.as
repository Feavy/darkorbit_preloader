package §-_-_--__§
{
   import com.greensock.§----_-__§;
   
   public class §-_--_-_§
   {
      
      public static const version:Number = 1.64;
      
      protected static var §-__----§:Boolean;
       
      
      public var §-_-____-§:Boolean;
      
      protected var §---___-§:Boolean;
      
      public var §-_---_-_§:Boolean;
      
      protected var §--_§:Number;
      
      public var §--_----_§:Boolean;
      
      public var §-___-_-§:§-_--_-_§;
      
      public var §-_-__-_-§:Number;
      
      protected var §-_-§:Number = -1;
      
      public var vars:Object;
      
      public var §--__-§:Number;
      
      public var data;
      
      public var timeline:§-________§;
      
      public var §--__-_--§:Boolean;
      
      public var §--_--_§:Number;
      
      public var §--_-___§:§-_--_-_§;
      
      public var §--__---§:Number;
      
      public var gc:Boolean;
      
      public var §-_---_-§:Number;
      
      public var §---__-_-§:Boolean;
      
      public var §-____-___§:Boolean;
      
      public var §--__-__§:Number;
      
      public var §-__-_§:Number;
      
      public function §-_--_-_§(param1:Number = 0, param2:Object = null)
      {
         super();
         this.vars = param2 != null?param2:{};
         if(this.vars.isGSVars)
         {
            this.vars = this.vars.vars;
         }
         this.§--__---§ = this.§-__-_§ = param1;
         §--_§ = !!this.vars.delay?Number(Number(this.vars.delay)):Number(0);
         this.§--__-__§ = !!this.vars.timeScale?Number(Number(this.vars.timeScale)):Number(1);
         this.§-_---_-_§ = Boolean(param1 == 0 && §--_§ == 0 && this.vars.immediateRender != false);
         this.§--__-§ = this.§-_-__-_-§ = 0;
         this.data = this.vars.data;
         if(!§-__----§)
         {
            if(isNaN(§----_-__§.§--__-_-_§))
            {
               §----_-__§.§----_--_§();
               §-__----§ = true;
            }
            else
            {
               return;
            }
         }
         var _loc3_:§-________§ = this.vars.timeline is §-________§?this.vars.timeline:!!this.vars.useFrames?§----_-__§.§------_-§:§----_-__§.§-----§;
         _loc3_.§--_-_---§(this,_loc3_.§--__-§);
         if(this.vars.reversed)
         {
            this.§--_----_§ = true;
         }
         if(this.vars.paused)
         {
            this.paused = true;
         }
      }
      
      public function §---_-_--§(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
      }
      
      public function get delay() : Number
      {
         return §--_§;
      }
      
      public function get §-_--__--§() : Number
      {
         return this.§--__---§;
      }
      
      public function set reversed(param1:Boolean) : void
      {
         if(param1 != this.§--_----_§)
         {
            this.§--_----_§ = param1;
            §---_---_§(this.§--__-§,true);
         }
      }
      
      public function set §-_--_-§(param1:Number) : void
      {
         if(this.timeline != null && (param1 != this.§--_--_§ || this.gc))
         {
            this.timeline.§--_-_---§(this,param1 - §--_§);
         }
         else
         {
            this.§--_--_§ = param1;
         }
      }
      
      public function §-____-__§(param1:Boolean = false, param2:Boolean = true) : void
      {
         this.reversed = false;
         this.paused = false;
         this.§---_---_§(!!param1?Number(-§--_§):Number(0),param2);
      }
      
      public function set delay(param1:Number) : void
      {
         this.§-_--_-§ = this.§-_--_-§ + (param1 - §--_§);
         §--_§ = param1;
      }
      
      public function §-__-_-_-§() : void
      {
         this.paused = false;
      }
      
      public function get paused() : Boolean
      {
         return this.§-____-___§;
      }
      
      public function §-____-_--§() : void
      {
         this.reversed = false;
         this.paused = false;
      }
      
      public function set §-_--__--§(param1:Number) : void
      {
         var _loc2_:Number = param1 / this.§--__---§;
         this.§--__---§ = this.§-__-_§ = param1;
         if(this.§-_---_-_§ && !this.§-____-___§ && param1 != 0)
         {
            this.§---_---_§(this.§--__-§ * _loc2_,true);
         }
         §-__-_--_§(false);
      }
      
      public function §--_-_-__§() : void
      {
      }
      
      public function complete(param1:Boolean = false, param2:Boolean = false) : void
      {
         if(!param1)
         {
            §---_-_--§(this.§----§,param2,false);
            return;
         }
         if(this.timeline.§--___-_-§)
         {
            this.§-__-____§(false,false);
         }
         else
         {
            this.§-_---_-_§ = false;
         }
         if(!param2)
         {
            if(this.vars.onComplete && this.§--__-§ >= this.§-__-_§ && !this.§--_----_§)
            {
               this.vars.onComplete.apply(null,this.vars.onCompleteParams);
            }
            else if(this.§--_----_§ && this.§--__-§ == 0 && this.vars.onReverseComplete)
            {
               this.vars.onReverseComplete.apply(null,this.vars.onReverseCompleteParams);
            }
         }
      }
      
      public function get §-___--__§() : Number
      {
         return this.§--__-§;
      }
      
      public function get §-_--_-§() : Number
      {
         return this.§--_--_§;
      }
      
      public function get reversed() : Boolean
      {
         return this.§--_----_§;
      }
      
      public function set §-___-___-§(param1:Number) : void
      {
         §---_---_§(param1,false);
      }
      
      protected function §-__-_--_§(param1:Boolean = true) : void
      {
         var _loc2_:§-_--_-_§ = !!param1?this:this.timeline;
         while(_loc2_)
         {
            _loc2_.§---__-_-§ = true;
            _loc2_ = _loc2_.timeline;
         }
      }
      
      public function §-___§(param1:Boolean = true) : void
      {
         this.reversed = true;
         if(param1)
         {
            this.paused = false;
         }
         else if(this.gc)
         {
            this.§-__-____§(true,false);
         }
      }
      
      public function set paused(param1:Boolean) : void
      {
         if(param1 != this.§-____-___§ && this.timeline)
         {
            if(param1)
            {
               this.§-_---_-§ = this.timeline.§-_-__-_§;
            }
            else
            {
               this.§--_--_§ = this.§--_--_§ + (this.timeline.§-_-__-_§ - this.§-_---_-§);
               this.§-_---_-§ = NaN;
               §-__-_--_§(false);
            }
            this.§-____-___§ = param1;
            this.§-_---_-_§ = Boolean(!this.§-____-___§ && this.§--__-§ > 0 && this.§--__-§ < this.§-__-_§);
         }
         if(!param1 && this.gc)
         {
            this.§---_---_§(this.§--__-§,false);
            this.§-__-____§(true,false);
         }
      }
      
      public function §--______§() : void
      {
         §-__-____§(false,false);
      }
      
      public function set §-___--__§(param1:Number) : void
      {
         §---_---_§(param1,false);
      }
      
      public function get §-___-___-§() : Number
      {
         return this.§-_-__-_-§;
      }
      
      protected function §---_---_§(param1:Number, param2:Boolean = false) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.timeline)
         {
            _loc3_ = !!this.§-____-___§?Number(this.§-_---_-§):Number(this.timeline.§--__-§);
            if(this.§--_----_§)
            {
               _loc4_ = !!this.§---__-_-§?Number(this.§----§):Number(this.§-__-_§);
               this.§--_--_§ = _loc3_ - (_loc4_ - param1) / this.§--__-__§;
            }
            else
            {
               this.§--_--_§ = _loc3_ - param1 / this.§--__-__§;
            }
            if(!this.timeline.§---__-_-§)
            {
               §-__-_--_§(false);
            }
            if(this.§--__-§ != param1)
            {
               §---_-_--§(param1,param2,false);
            }
         }
      }
      
      public function §--_____§() : void
      {
         this.paused = true;
      }
      
      public function set §----§(param1:Number) : void
      {
         this.§-_--__--§ = param1;
      }
      
      public function get §----§() : Number
      {
         return this.§-__-_§;
      }
      
      public function §-__-____§(param1:Boolean, param2:Boolean = false) : Boolean
      {
         this.gc = !param1;
         if(param1)
         {
            this.§-_---_-_§ = Boolean(!this.§-____-___§ && this.§--__-§ > 0 && this.§--__-§ < this.§-__-_§);
            if(!param2 && this.§--__-_--§)
            {
               this.timeline.§--_-_---§(this,this.§--_--_§ - §--_§);
            }
         }
         else
         {
            this.§-_---_-_§ = false;
            if(!param2 && !this.§--__-_--§)
            {
               this.timeline.remove(this,true);
            }
         }
         return false;
      }
   }
}
