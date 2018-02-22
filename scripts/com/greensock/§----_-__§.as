package com.greensock
{
   import §-_-_--__§.§-_--_-_§;
   import §-_-_--__§.§-_-__--_§;
   import §-_-_--__§.§-________§;
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class §----_-__§ extends §-_--_-_§
   {
      
      public static var §-----§:§-________§;
      
      public static var §-____-__-§:Dictionary = new Dictionary(false);
      
      public static var §-___--_-§:Function;
      
      public static var §------_-§:§-________§;
      
      public static var §-----_-_§:Function = §----_-__§.§-__-___-§;
      
      public static const version:Number = 11.62;
      
      public static var plugins:Object = {};
      
      public static var §-_-----_§:Dictionary = new Dictionary(false);
      
      public static var §-_----§:Object;
      
      public static var §--__-_-_§:Number;
      
      public static var §--_-_-_§:Function = §----_-__§.§--____§;
      
      private static var §-_--_--_§:Shape = new Shape();
      
      protected static var §----_--§:Object = {
         "ease":1,
         "delay":1,
         "overwrite":1,
         "onComplete":1,
         "onCompleteParams":1,
         "useFrames":1,
         "runBackwards":1,
         "startAt":1,
         "onUpdate":1,
         "onUpdateParams":1,
         "onStart":1,
         "onStartParams":1,
         "onInit":1,
         "onInitParams":1,
         "onReverseComplete":1,
         "onReverseCompleteParams":1,
         "onRepeat":1,
         "onRepeatParams":1,
         "proxiedEase":1,
         "easeParams":1,
         "yoyo":1,
         "onCompleteListener":1,
         "onUpdateListener":1,
         "onStartListener":1,
         "onReverseCompleteListener":1,
         "onRepeatListener":1,
         "orientToBezier":1,
         "timeScale":1,
         "immediateRender":1,
         "repeat":1,
         "repeatDelay":1,
         "timeline":1,
         "data":1,
         "paused":1
      };
       
      
      protected var §---_--_§:Boolean;
      
      public var §--_-__-§:Object;
      
      public var §-_-_-__§:§-_-__--_§;
      
      protected var §---_-_-_§:int;
      
      protected var §-_-___-_§:Function;
      
      public var target:Object;
      
      public var §-__-§:Number = 0;
      
      protected var §-_-----§:Object;
      
      protected var §-_-____§:Boolean;
      
      public function §----_-__§(param1:Object, param2:Number, param3:Object)
      {
         var _loc5_:§----_-__§ = null;
         super(param2,param3);
         if(param1 == null)
         {
            throw new Error("Cannot tween a null object.");
         }
         this.target = param1;
         if(this.target is §-_--_-_§ && this.vars.timeScale)
         {
            this.§--__-__§ = 1;
         }
         §--_-__-§ = {};
         §-_-___-_§ = §-----_-_§;
         §---_-_-_§ = Number(param3.overwrite) <= -1 || !§-_----§.enabled && param3.overwrite > 1?int(§-_----§.mode):int(int(param3.overwrite));
         var _loc4_:Array = §-_-----_§[param1];
         if(!_loc4_)
         {
            §-_-----_§[param1] = [this];
         }
         else if(§---_-_-_§ == 1)
         {
            for each(_loc5_ in _loc4_)
            {
               if(!_loc5_.gc)
               {
                  _loc5_.§-__-____§(false,false);
               }
            }
            §-_-----_§[param1] = [this];
         }
         else
         {
            _loc4_[_loc4_.length] = this;
         }
         if(this.§-_---_-_§ || this.vars.immediateRender)
         {
            §---_-_--§(0,false,true);
         }
      }
      
      public static function §----_--_§() : void
      {
         §--__-_-_§ = 0;
         §-----§ = new §-________§(null);
         §------_-§ = new §-________§(null);
         §-----§.§--_--_§ = getTimer() * 0.001;
         §------_-§.§--_--_§ = §--__-_-_§;
         §-----§.§--___-_-§ = true;
         §------_-§.§--___-_-§ = true;
         §-_--_--_§.addEventListener(Event.ENTER_FRAME,§-----__§,false,0,true);
         if(§-_----§ == null)
         {
            §-_----§ = {
               "mode":1,
               "enabled":false
            };
         }
      }
      
      public static function §--____§(param1:Object, param2:Boolean = false, param3:Object = null) : void
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:§----_-__§ = null;
         if(param1 in §-_-----_§)
         {
            _loc4_ = §-_-----_§[param1];
            _loc5_ = _loc4_.length;
            while(--_loc5_ > -1)
            {
               _loc6_ = _loc4_[_loc5_];
               if(!_loc6_.gc)
               {
                  if(param2)
                  {
                     _loc6_.complete(false,false);
                  }
                  if(param3 != null)
                  {
                     _loc6_.§----___§(param3);
                  }
                  if(param3 == null || _loc6_.§-_-_-__§ == null && _loc6_.§-_-____-§)
                  {
                     _loc6_.§-__-____§(false,false);
                  }
               }
            }
            if(param3 == null)
            {
               delete §-_-----_§[param1];
            }
         }
      }
      
      public static function §--__---_§(param1:Object, param2:Number, param3:Object) : §----_-__§
      {
         param3.runBackwards = true;
         if(!("immediateRender" in param3))
         {
            param3.immediateRender = true;
         }
         return new §----_-__§(param1,param2,param3);
      }
      
      protected static function §-__-___-§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         param1 = 1 - param1 / param4;
         return 1 - _loc5_ * param1;
      }
      
      public static function §-_--___-§(param1:Number, param2:Function, param3:Array = null, param4:Boolean = false) : §----_-__§
      {
         return new §----_-__§(param2,0,{
            "delay":param1,
            "onComplete":param2,
            "onCompleteParams":param3,
            "immediateRender":false,
            "useFrames":param4,
            "overwrite":0
         });
      }
      
      protected static function §-----__§(param1:Event = null) : void
      {
         var _loc2_:Dictionary = null;
         var _loc3_:* = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         §-----§.§---_-_--§((getTimer() * 0.001 - §-----§.§--_--_§) * §-----§.§--__-__§,false,false);
         §--__-_-_§ = §--__-_-_§ + 1;
         §------_-§.§---_-_--§((§--__-_-_§ - §------_-§.§--_--_§) * §------_-§.§--__-__§,false,false);
         if(!(§--__-_-_§ % 60))
         {
            _loc2_ = §-_-----_§;
            for(_loc3_ in _loc2_)
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = _loc4_.length;
               while(--_loc5_ > -1)
               {
                  if(§----_-__§(_loc4_[_loc5_]).gc)
                  {
                     _loc4_.splice(_loc5_,1);
                  }
               }
               if(_loc4_.length == 0)
               {
                  delete _loc2_[_loc3_];
               }
            }
         }
      }
      
      public static function to(param1:Object, param2:Number, param3:Object) : §----_-__§
      {
         return new §----_-__§(param1,param2,param3);
      }
      
      protected function §-__---§(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return this.vars.proxiedEase.apply(null,arguments.concat(this.vars.easeParams));
      }
      
      override public function §---_-_--§(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Number = this.§-_-__-_-§;
         if(param1 >= this.§--__---§)
         {
            this.§--__-§ = this.§-_-__-_-§ = this.§--__---§;
            this.§-__-§ = 1;
            _loc4_ = true;
            if(this.§--__---§ == 0)
            {
               if((param1 == 0 || §-_-§ < 0) && §-_-§ != param1)
               {
                  param3 = true;
               }
               §-_-§ = param1;
            }
         }
         else if(param1 <= 0)
         {
            this.§-__-§ = 0;
            this.§--__-§ = this.§-_-__-_-§ = _loc7_;
            if(param1 < 0)
            {
               this.§-_---_-_§ = false;
               if(this.§--__---§ == 0)
               {
                  if(§-_-§ >= 0)
                  {
                     param3 = true;
                     _loc4_ = true;
                  }
                  §-_-§ = param1;
               }
            }
            if(this.§--_----_§ && _loc5_ != 0)
            {
               _loc4_ = true;
            }
         }
         else
         {
            this.§--__-§ = this.§-_-__-_-§ = param1;
            this.§-__-§ = §-_-___-_§(param1,0,1,this.§--__---§);
         }
         if(this.§-_-__-_-§ == _loc5_ && !param3)
         {
            return;
         }
         if(!this.§-_-____-§)
         {
            §-_-_---_§();
            if(!_loc4_ && this.§-_-__-_-§)
            {
               this.§-__-§ = §-_-___-_§(this.§-_-__-_-§,0,1,this.§--__---§);
            }
         }
         if(!this.§-_---_-_§ && !this.§-____-___§)
         {
            this.§-_---_-_§ = true;
         }
         if(_loc5_ == 0 && this.vars.onStart && (this.§-_-__-_-§ != 0 || this.§--__---§ == 0) && !param2)
         {
            this.vars.onStart.apply(null,this.vars.onStartParams);
         }
         var _loc6_:§-_-__--_§ = this.§-_-_-__§;
         while(_loc6_)
         {
            _loc6_.target[_loc6_.§-__--§] = _loc6_.start + this.§-__-§ * _loc6_.§-_----_§;
            _loc6_ = _loc6_.§-___-_-§;
         }
         if(§---___-§ && !param2)
         {
            this.vars.onUpdate.apply(null,this.vars.onUpdateParams);
         }
         if(_loc4_ && !this.gc)
         {
            if(§---_--_§ && this.§-_-_-__§)
            {
               §-___--_-§("onComplete",this);
            }
            complete(true,param2);
         }
      }
      
      override public function §-__-____§(param1:Boolean, param2:Boolean = false) : Boolean
      {
         var _loc3_:Array = null;
         if(param1)
         {
            _loc3_ = §----_-__§.§-_-----_§[this.target];
            if(!_loc3_)
            {
               §----_-__§.§-_-----_§[this.target] = [this];
            }
            else
            {
               _loc3_[_loc3_.length] = this;
            }
         }
         super.§-__-____§(param1,param2);
         if(§-_-____§ && this.§-_-_-__§)
         {
            return §-___--_-§(!!param1?"onEnable":"onDisable",this);
         }
         return false;
      }
      
      protected function §-_-_---_§() : void
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = undefined;
         var _loc4_:Boolean = false;
         var _loc5_:Array = null;
         var _loc6_:§-_-__--_§ = null;
         if(this.vars.onInit)
         {
            this.vars.onInit.apply(null,this.vars.onInitParams);
         }
         if(typeof this.vars.ease == "function")
         {
            §-_-___-_§ = this.vars.ease;
         }
         if(this.vars.easeParams)
         {
            this.vars.proxiedEase = §-_-___-_§;
            §-_-___-_§ = §-__---§;
         }
         this.§-_-_-__§ = null;
         this.§--_-__-§ = {};
         for(_loc1_ in this.vars)
         {
            if(!(_loc1_ in §----_--§ && !(_loc1_ == "timeScale" && this.target is §-_--_-_§)))
            {
               if(_loc1_ in plugins && (_loc3_ = new (plugins[_loc1_] as Class)()).onInitTween(this.target,this.vars[_loc1_],this))
               {
                  this.§-_-_-__§ = new §-_-__--_§(_loc3_,"changeFactor",0,1,_loc3_.overwriteProps.length == 1?_loc3_.overwriteProps[0]:"_MULTIPLE_",true,this.§-_-_-__§);
                  if(this.§-_-_-__§.name == "_MULTIPLE_")
                  {
                     _loc2_ = _loc3_.overwriteProps.length;
                     while(--_loc2_ > -1)
                     {
                        this.§--_-__-§[_loc3_.overwriteProps[_loc2_]] = this.§-_-_-__§;
                     }
                  }
                  else
                  {
                     this.§--_-__-§[this.§-_-_-__§.name] = this.§-_-_-__§;
                  }
                  if(_loc3_.priority)
                  {
                     this.§-_-_-__§.priority = _loc3_.priority;
                     _loc4_ = true;
                  }
                  if(_loc3_.onDisable || _loc3_.onEnable)
                  {
                     §-_-____§ = true;
                  }
                  §---_--_§ = true;
               }
               else
               {
                  this.§-_-_-__§ = new §-_-__--_§(this.target,_loc1_,Number(this.target[_loc1_]),typeof this.vars[_loc1_] == "number"?Number(Number(this.vars[_loc1_]) - this.target[_loc1_]):Number(Number(this.vars[_loc1_])),_loc1_,false,this.§-_-_-__§);
                  this.§--_-__-§[_loc1_] = this.§-_-_-__§;
               }
            }
         }
         if(_loc4_)
         {
            §-___--_-§("onInitAllProps",this);
         }
         if(this.vars.runBackwards)
         {
            _loc6_ = this.§-_-_-__§;
            while(_loc6_)
            {
               _loc6_.start = _loc6_.start + _loc6_.§-_----_§;
               _loc6_.§-_----_§ = -_loc6_.§-_----_§;
               _loc6_ = _loc6_.§-___-_-§;
            }
         }
         §---___-§ = Boolean(this.vars.onUpdate != null);
         if(§-_-----§)
         {
            §----___§(§-_-----§);
            if(this.§-_-_-__§ == null)
            {
               this.§-__-____§(false,false);
            }
         }
         if(§---_-_-_§ > 1 && this.§-_-_-__§ && (_loc5_ = §-_-----_§[this.target]) && _loc5_.length > 1)
         {
            if(§-_----§.manageOverwrites(this,this.§--_-__-§,_loc5_,§---_-_-_§))
            {
               §-_-_---_§();
            }
         }
         this.§-_-____-§ = true;
      }
      
      public function §----___§(param1:Object, param2:Boolean = true) : Boolean
      {
         var _loc3_:* = null;
         var _loc4_:§-_-__--_§ = null;
         var _loc5_:Boolean = false;
         if(§-_-----§ == null)
         {
            §-_-----§ = {};
         }
         for(_loc3_ in param1)
         {
            if(_loc3_ in §--_-__-§)
            {
               _loc4_ = §--_-__-§[_loc3_];
               if(_loc4_.§--__--_§ && _loc4_.name == "_MULTIPLE_")
               {
                  _loc4_.target.killProps(param1);
                  if(_loc4_.target.overwriteProps.length == 0)
                  {
                     _loc4_.name = "";
                  }
                  if(_loc3_ != _loc4_.target.propName || _loc4_.name == "")
                  {
                     delete §--_-__-§[_loc3_];
                  }
               }
               if(_loc4_.name != "_MULTIPLE_")
               {
                  if(_loc4_.§-___-_-§)
                  {
                     _loc4_.§-___-_-§.§--_-___§ = _loc4_.§--_-___§;
                  }
                  if(_loc4_.§--_-___§)
                  {
                     _loc4_.§--_-___§.§-___-_-§ = _loc4_.§-___-_-§;
                  }
                  else if(this.§-_-_-__§ == _loc4_)
                  {
                     this.§-_-_-__§ = _loc4_.§-___-_-§;
                  }
                  if(_loc4_.§--__--_§ && _loc4_.target.onDisable)
                  {
                     _loc4_.target.onDisable();
                     if(_loc4_.target.activeDisable)
                     {
                        _loc5_ = true;
                     }
                  }
                  delete §--_-__-§[_loc3_];
               }
            }
            if(param2 && param1 != §-_-----§)
            {
               §-_-----§[_loc3_] = 1;
            }
         }
         return _loc5_;
      }
      
      override public function §--_-_-__§() : void
      {
         if(§-_-____§ && this.§-_-_-__§)
         {
            §-___--_-§("onDisable",this);
         }
         this.§-_-_-__§ = null;
         §-_-----§ = null;
         §-_-____§ = false;
         this.§-_---_-_§ = _loc1_;
         §---___-§ = this.§-_-____-§ = _loc1_;
         this.§--_-__-§ = {};
      }
   }
}
