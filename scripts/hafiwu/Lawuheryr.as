package hafiwu
{
   import flash.errors.IllegalOperationError;
   
   public class Lawuheryr extends Gakukyz
   {
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
      }
      
      private var gocet:Boolean;
      
      private var sagokozak:Array;
      
      public function Lawuheryr(... rest)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
            if(_loc3_)
            {
            }
            addr115:
            return;
         }
         §§push(this);
         if(!_loc3_)
         {
            §§push(rest);
            if(_loc2_)
            {
               §§push(§§pop().length);
               §§push(1);
               if(_loc3_)
               {
                  §§push(§§pop() + 25 + 56 + 102);
               }
               §§push(§§pop() == §§pop());
               if(!_loc3_)
               {
                  if(§§pop())
                  {
                     if(!_loc3_)
                     {
                        §§pop();
                        if(_loc3_)
                        {
                        }
                        addr94:
                        §§push(rest);
                        if(!_loc3_)
                        {
                           addr98:
                           §§push(0);
                           if(!_loc2_)
                           {
                              §§push(§§pop() - 1 + 17 - 5 + 1);
                           }
                           addr107:
                           §§push(§§pop()[§§pop()]);
                        }
                        else
                        {
                           addr113:
                           §§push(§§pop());
                        }
                     }
                  }
               }
               addr93:
               if(§§pop())
               {
                  §§goto(addr94);
               }
               else
               {
                  §§push(rest);
                  if(!_loc3_)
                  {
                     §§goto(addr113);
                  }
               }
            }
            §§pop().valueClasses = §§pop();
            §§goto(addr115);
         }
         §§push(rest);
         if(!_loc3_)
         {
            §§push(0);
            if(!_loc2_)
            {
               §§push((§§pop() * 116 - 1) * 24);
            }
            if(!_loc3_)
            {
               §§goto(addr93);
               §§push(§§pop()[§§pop()] is Array);
            }
            §§goto(addr107);
         }
         §§goto(addr98);
      }
      
      override public function qanivami(param1:Function) : Gihivu
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Gihivu = super.qanivami(param1);
         if(_loc3_)
         {
            if(this.gocet)
            {
               if(_loc4_)
               {
               }
               addr47:
               _loc2_.remove();
            }
            addr49:
            return _loc2_;
         }
         _loc2_.jof(this.sagokozak);
         if(!_loc4_)
         {
            §§goto(addr47);
         }
         §§goto(addr49);
      }
      
      override public function dyserur(... rest) : void
      {
         if(_loc2_)
         {
            if(this.gocet)
            {
               if(_loc2_)
               {
                  throw new IllegalOperationError("You cannot dispatch() a Promise more than once");
               }
               addr57:
               addr98:
               if(!_loc2_)
               {
                  loop0:
                  while(true)
                  {
                     super.dyserur.apply(this,rest);
                     if(_loc3_)
                     {
                     }
                     addr101:
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                     return;
                  }
                  §§goto(addr112);
               }
               while(true)
               {
                  this.sagokozak = rest;
                  §§goto(addr101);
                  §§goto(addr57);
               }
            }
            addr87:
            while(true)
            {
               if(_loc3_)
               {
                  §§goto(addr98);
               }
               §§goto(addr112);
            }
         }
         else if(!_loc3_)
         {
         }
         this.gocet = true;
         if(!_loc3_)
         {
            §§goto(addr57);
         }
         §§goto(addr87);
      }
   }
}