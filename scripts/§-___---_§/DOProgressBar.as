package §-___---_§
{
   public class DOProgressBar extends DOListener implements DOScene
   {
       
      
      public function DOProgressBar(... rest)
      {
         rest = rest.length == 1 && rest[0] is Array?rest[0]:rest;
         super(rest);
      }
      
      public function add(param1:Function) : DOFunction
      {
         return createDOFunction(param1);
      }
   }
}
