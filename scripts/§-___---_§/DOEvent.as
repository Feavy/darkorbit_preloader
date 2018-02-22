package §-___---_§
{
   import flash.errors.IllegalOperationError;
   
   public class DOEvent extends DOListener
   {
       
      
      private var hasValue:Boolean;
      
      private var value:Array;
      
      public function DOEvent(... rest)
      {
         super();
         this.valueClasses = rest.length == 1 && rest[0] is Array?rest[0]:rest;
      }
      
      override public function setListener(param1:Function) : DOFunction
      {
         var _loc2_:DOFunction = super.setListener(param1);
         if(this.hasValue)
         {
            _loc2_.process(this.value);
            _loc2_.remove();
         }
         return _loc2_;
      }
      
      override public function setValue(... rest) : void
      {
         if(this.hasValue)
         {
            throw new IllegalOperationError("You cannot dispatch() a Promise more than once");
         }
         this.hasValue = true;
         this.value = rest;
         super.setValue.apply(this,rest);
      }
   }
}
