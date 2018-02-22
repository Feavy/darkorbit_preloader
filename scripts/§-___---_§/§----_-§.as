package §-___---_§
{
   public class §----_-§ implements DOFunction
   {
       
      
      protected var §----__§:DOListenerInterface;
      
      protected var §-_--_§:Boolean = true;
      
      protected var §----__--§:Function;
      
      protected var §--__-_§:Boolean = false;
      
      protected var §--___---§:int = 0;
      
      protected var §-----_--§:Array;
      
      public function §----_-§(param1:Function, param2:DOListenerInterface, param3:Boolean = false, param4:int = 0)
      {
         super();
         this.§----__--§ = param1;
         this.§--__-_§ = param3;
         this.§----__§ = param2;
         this.§--___---§ = param4;
         this.§-_---§(param1);
      }
      
      public function execute0() : void
      {
         if(!this.§-_--_§)
         {
            return;
         }
         if(this.§--__-_§)
         {
            this.remove();
         }
         if(this.§-----_--§ && this.§-----_--§.length)
         {
            this.§----__--§.apply(null,this.§-----_--§);
            return;
         }
         this.§----__--§();
      }
      
      public function execute1(param1:Object) : void
      {
         if(!this.§-_--_§)
         {
            return;
         }
         if(this.§--__-_§)
         {
            this.remove();
         }
         if(this.§-----_--§ && this.§-----_--§.length)
         {
            this.§----__--§.apply(null,[param1].concat(this.§-----_--§));
            return;
         }
         this.§----__--§(param1);
      }
      
      public function process(param1:Array) : void
      {
         if(!this.§-_--_§)
         {
            return;
         }
         if(this.§--__-_§)
         {
            this.remove();
         }
         if(this.§-----_--§ && this.§-----_--§.length)
         {
            param1 = param1.concat(this.§-----_--§);
         }
         var _loc2_:int = param1.length;
         if(_loc2_ == 0)
         {
            this.§----__--§();
         }
         else if(_loc2_ == 1)
         {
            this.§----__--§(param1[0]);
         }
         else if(_loc2_ == 2)
         {
            this.§----__--§(param1[0],param1[1]);
         }
         else if(_loc2_ == 3)
         {
            this.§----__--§(param1[0],param1[1],param1[2]);
         }
         else
         {
            this.§----__--§.apply(null,param1);
         }
      }
      
      public function get listener() : Function
      {
         return this.§----__--§;
      }
      
      public function set listener(param1:Function) : void
      {
         if(null == param1)
         {
            throw new ArgumentError("Given listener is null.\nDid you want to set enabled to false instead?");
         }
         this.§-_---§(param1);
         this.§----__--§ = param1;
      }
      
      public function get once() : Boolean
      {
         return this.§--__-_§;
      }
      
      public function get priority() : int
      {
         return this.§--___---§;
      }
      
      public function toString() : String
      {
         return "[Slot listener: " + this.§----__--§ + ", once: " + this.§--__-_§ + ", priority: " + this.§--___---§ + ", enabled: " + this.§-_--_§ + "]";
      }
      
      public function get enabled() : Boolean
      {
         return this.§-_--_§;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.§-_--_§ = param1;
      }
      
      public function get params() : Array
      {
         return this.§-----_--§;
      }
      
      public function set params(param1:Array) : void
      {
         this.§-----_--§ = param1;
      }
      
      public function remove() : void
      {
         this.§----__§.remove(this.§----__--§);
      }
      
      protected function §-_---§(param1:Function) : void
      {
         if(null == param1)
         {
            throw new ArgumentError("Given listener is null.");
         }
         if(null == this.§----__§)
         {
            throw new Error("Internal signal reference has not been set yet.");
         }
      }
   }
}
