package net.bigpoint.darkorbit.preloader.error
{
   import flash.events.ErrorEvent;
   import flash.events.UncaughtErrorEvent;
   import flash.events.UncaughtErrorEvents;
   import net.bigpoint.darkorbit.Nidivonyg;
   import nuw.Zylydago;
   
   public class GlobalErrorHandlerBpEventStream
   {
       
      
      private const _history:Object = {};
      
      private var _build:String;
      
      public function GlobalErrorHandlerBpEventStream(param1:String)
      {
         super();
         this._build = param1;
      }
      
      public function addSource(param1:UncaughtErrorEvents) : void
      {
         param1.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,this.handleUncaughtError);
      }
      
      private function handleUncaughtError(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:uint = 0;
         var _loc5_:String = null;
         var _loc7_:Error = null;
         var _loc8_:ErrorEvent = null;
         param1.preventDefault();
         if(param1.error is Error)
         {
            _loc7_ = param1.error as Error;
            _loc2_ = _loc7_.message;
            _loc3_ = _loc7_.name;
            _loc4_ = _loc7_.errorID;
            _loc5_ = _loc7_.getStackTrace();
         }
         else if(param1.error is ErrorEvent)
         {
            _loc8_ = param1.error as ErrorEvent;
            _loc4_ = _loc8_.errorID;
            _loc2_ = _loc8_.text;
            _loc3_ = _loc8_.type;
            _loc5_ = new Error("").getStackTrace();
         }
         else
         {
            _loc3_ = "Unspecific";
            _loc2_ = "A non-Error, non-ErrorEvent type was thrown and uncaught.";
         }
         var _loc6_:String = Zylydago.hash(_loc4_ + _loc3_ + _loc2_ + _loc5_);
         if(this._history[_loc6_] !== true)
         {
            this._history[_loc6_] = true;
            Nidivonyg.cybyropy("flash.error",{
               "message":_loc2_,
               "name":_loc3_,
               "errorID":_loc4_,
               "stackTrace":_loc5_,
               "build":this._build
            });
         }
      }
   }
}
