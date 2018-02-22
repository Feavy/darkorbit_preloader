package §-___---_§
{
   import flash.errors.IllegalOperationError;
   import flash.utils.getQualifiedClassName;
   
   public class DOListener implements DOListenerInterface
   {
       
      
      protected var valueClasses:Array;
      
      protected var doParameters:DOFunctionTail;
      
      public function DOListener(... rest)
      {
         this.doParameters = DOFunctionTail.NIL;
         super();
         this.valueClasses = rest.length == 1 && rest[0] is Array?rest[0]:rest;
      }
      
      public function get valueClasses() : Array
      {
         return this.valueClasses;
      }
      
      public function set valueClasses(param1:Array) : void
      {
         this.valueClasses = !!param1?param1.slice():[];
         var _loc2_:int = this.valueClasses.length;
         while(_loc2_--)
         {
            if(!(this.valueClasses[_loc2_] is Class))
            {
               throw new ArgumentError("Invalid valueClasses argument: " + "item at index " + _loc2_ + " should be a Class but was:<" + this.valueClasses[_loc2_] + ">." + getQualifiedClassName(this.valueClasses[_loc2_]));
            }
         }
      }
      
      public function get numListeners() : uint
      {
         return this.doParameters.length;
      }
      
      public function setListener(param1:Function) : DOFunction
      {
         return this.createDOFunction(param1,true);
      }
      
      public function remove(param1:Function) : DOFunction
      {
         var _loc2_:DOFunction = this.doParameters.§-_-_-_-§(param1);
         if(!_loc2_)
         {
            return null;
         }
         this.doParameters = this.doParameters.§-_-_-_--§(param1);
         return _loc2_;
      }
      
      public function §-___-___§() : void
      {
         this.doParameters = DOFunctionTail.NIL;
      }
      
      public function setValue(... rest) : void
      {
         var _loc2_:int = this.valueClasses.length;
         var _loc3_:int = rest.length;
         if(_loc3_ < _loc2_)
         {
            throw new ArgumentError("Incorrect number of arguments. " + "Expected at least " + _loc2_ + " but received " + _loc3_ + ".");
         }
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            if(rest[_loc4_] is this.valueClasses[_loc4_] || rest[_loc4_] === null)
            {
               _loc4_++;
               continue;
            }
            throw new ArgumentError("Value object <" + rest[_loc4_] + "> is not an instance of <" + this.valueClasses[_loc4_] + ">.");
         }
         var _loc5_:DOFunctionTail = this.doParameters;
         if(_loc5_.isInitialized)
         {
            while(_loc5_.isInitialized)
            {
               _loc5_.doParameters.process(rest);
               _loc5_ = _loc5_.parameters;
            }
         }
      }
      
      protected function createDOFunction(param1:Function, param2:Boolean = false) : DOFunction
      {
         var _loc3_:DOFunction = null;
         if(this.§-___-_--§(param1,param2))
         {
            _loc3_ = new §----_-§(param1,this,param2);
            this.doParameters = this.doParameters.createNew(_loc3_);
            return _loc3_;
         }
         return this.doParameters.§-_-_-_-§(param1);
      }
      
      protected function §-___-_--§(param1:Function, param2:Boolean) : Boolean
      {
         if(!this.doParameters.isInitialized)
         {
            return true;
         }
         var _loc3_:DOFunction = this.doParameters.§-_-_-_-§(param1);
         if(!_loc3_)
         {
            return true;
         }
         if(_loc3_.once != param2)
         {
            throw new IllegalOperationError("You cannot addOnce() then add() the same listener without removing the relationship first.");
         }
         return false;
      }
   }
}
