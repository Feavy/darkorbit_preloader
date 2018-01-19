package dyjihoril
{
   public class JSONParseError extends Error
   {
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
      }
      
      private var hahofipe:int;
      
      private var _text:String;
      
      public function JSONParseError(param1:String = "", param2:int = 0, param3:String = "")
      {
         if(!_loc4_)
         {
            super(param1);
            if(_loc5_)
            {
               if(!_loc5_)
               {
                  addr39:
                  while(true)
                  {
                     this._text = param3;
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           if(!_loc5_)
                           {
                              addr69:
                              while(true)
                              {
                                 this.hahofipe = param2;
                              }
                           }
                           break;
                        }
                     }
                  }
                  return;
               }
               addr94:
               while(true)
               {
                  name = "JSONParseError";
               }
            }
            while(true)
            {
               if(!_loc5_)
               {
                  §§goto(addr94);
               }
               else
               {
                  §§goto(addr39);
               }
            }
         }
         while(true)
         {
            if(_loc5_)
            {
               §§goto(addr69);
            }
            §§goto(addr108);
         }
      }
      
      public function get location() : int
      {
         return this.hahofipe;
      }
      
      public function get text() : String
      {
         return this._text;
      }
   }
}
