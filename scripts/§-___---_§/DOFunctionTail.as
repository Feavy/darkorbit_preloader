package §-___---_§
{
   public final class DOFunctionTail
   {
      
      public static const NIL:DOFunctionTail = new DOFunctionTail(null,null);
       
      
      public var doParameters:DOFunction;
      
      public var parameters:DOFunctionTail;
      
      public var isInitialized:Boolean = false;
      
      public function DOFunctionTail(param1:DOFunction, param2:DOFunctionTail = null)
      {
         super();
         if(!param1 && !param2)
         {
            if(NIL)
            {
               throw new ArgumentError("Parameters head and tail are null. Use the NIL element instead.");
            }
            this.isInitialized = false;
         }
         else
         {
            if(!param1)
            {
               throw new ArgumentError("Parameter head cannot be null.");
            }
            this.doParameters = param1;
            this.parameters = param2 || NIL;
            this.isInitialized = true;
         }
      }
      
      public function get length() : uint
      {
         if(!this.isInitialized)
         {
            return 0;
         }
         if(this.parameters == NIL)
         {
            return 1;
         }
         var _loc1_:uint = 0;
         var _loc2_:DOFunctionTail = this;
         while(_loc2_.isInitialized)
         {
            _loc1_++;
            _loc2_ = _loc2_.parameters;
         }
         return _loc1_;
      }
      
      public function createNew(param1:DOFunction) : DOFunctionTail
      {
         return new DOFunctionTail(param1,this);
      }
      
      public function §-_-_-__-§(param1:DOFunction) : DOFunctionTail
      {
         if(!param1)
         {
            return this;
         }
         if(!this.isInitialized)
         {
            return new DOFunctionTail(param1);
         }
         if(this.parameters == NIL)
         {
            return new DOFunctionTail(param1).createNew(this.doParameters);
         }
         var _loc2_:DOFunctionTail = new DOFunctionTail(this.doParameters);
         var _loc3_:DOFunctionTail = _loc2_;
         var _loc4_:DOFunctionTail = this.parameters;
         while(_loc4_.isInitialized)
         {
            _loc3_ = _loc3_.parameters = new DOFunctionTail(_loc4_.doParameters);
            _loc4_ = _loc4_.parameters;
         }
         _loc3_.parameters = new DOFunctionTail(param1);
         return _loc2_;
      }
      
      public function §-_-__--§(param1:DOFunction) : DOFunctionTail
      {
         if(!this.isInitialized)
         {
            return new DOFunctionTail(param1);
         }
         var _loc2_:int = param1.priority;
         if(_loc2_ > this.doParameters.priority)
         {
            return this.createNew(param1);
         }
         var _loc3_:DOFunctionTail = new DOFunctionTail(this.doParameters);
         var _loc4_:DOFunctionTail = _loc3_;
         var _loc5_:DOFunctionTail = this.parameters;
         while(_loc5_.isInitialized)
         {
            if(_loc2_ > _loc5_.doParameters.priority)
            {
               _loc4_.parameters = _loc5_.createNew(param1);
               return _loc3_;
            }
            _loc4_ = _loc4_.parameters = new DOFunctionTail(_loc5_.doParameters);
            _loc5_ = _loc5_.parameters;
         }
         _loc4_.parameters = new DOFunctionTail(param1);
         return _loc3_;
      }
      
      public function §-_-_-_--§(param1:Function) : DOFunctionTail
      {
         if(!this.isInitialized || param1 == null)
         {
            return this;
         }
         if(param1 == this.doParameters.listener)
         {
            return this.parameters;
         }
         var _loc2_:DOFunctionTail = new DOFunctionTail(this.doParameters);
         var _loc3_:DOFunctionTail = _loc2_;
         var _loc4_:DOFunctionTail = this.parameters;
         while(_loc4_.isInitialized)
         {
            if(_loc4_.doParameters.listener == param1)
            {
               _loc3_.parameters = _loc4_.parameters;
               return _loc2_;
            }
            _loc3_ = _loc3_.parameters = new DOFunctionTail(_loc4_.doParameters);
            _loc4_ = _loc4_.parameters;
         }
         return this;
      }
      
      public function contains(param1:Function) : Boolean
      {
         if(!this.isInitialized)
         {
            return false;
         }
         var _loc2_:DOFunctionTail = this;
         while(_loc2_.isInitialized)
         {
            if(_loc2_.doParameters.listener == param1)
            {
               return true;
            }
            _loc2_ = _loc2_.parameters;
         }
         return false;
      }
      
      public function §-_-_-_-§(param1:Function) : DOFunction
      {
         if(!this.isInitialized)
         {
            return null;
         }
         var _loc2_:DOFunctionTail = this;
         while(_loc2_.isInitialized)
         {
            if(_loc2_.doParameters.listener == param1)
            {
               return _loc2_.doParameters;
            }
            _loc2_ = _loc2_.parameters;
         }
         return null;
      }
      
      public function toString() : String
      {
         var _loc1_:* = "";
         var _loc2_:DOFunctionTail = this;
         while(_loc2_.isInitialized)
         {
            _loc1_ = _loc1_ + (_loc2_.doParameters + " -> ");
            _loc2_ = _loc2_.parameters;
         }
         _loc1_ = _loc1_ + "NIL";
         return "[List " + _loc1_ + "]";
      }
   }
}
