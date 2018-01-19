package hafiwu
{
   public class Gezofe implements Gihivu
   {
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
      }
      
      protected var gataqydaf:Tij;
      
      protected var reho:Boolean = true;
      
      protected var bafesywaw:Function;
      
      protected var gana:Boolean = false;
      
      protected var minage:int = 0;
      
      protected var lecidik:Array;
      
      public function Gezofe(param1:Function, param2:Tij, param3:Boolean = false, param4:int = 0)
      {
         if(!_loc5_)
         {
            super();
            if(!_loc5_)
            {
               if(_loc5_)
               {
                  loop0:
                  while(true)
                  {
                     this.gana = param3;
                     if(!_loc5_)
                     {
                        if(_loc6_)
                        {
                           if(!_loc6_)
                           {
                              addr69:
                              while(true)
                              {
                                 this.minage = param4;
                                 if(_loc6_)
                                 {
                                    if(!_loc5_)
                                    {
                                    }
                                    this.zaraja(param1);
                                 }
                                 if(_loc5_)
                                 {
                                 }
                              }
                           }
                           addr103:
                           while(true)
                           {
                              this.gataqydaf = param2;
                           }
                        }
                        addr130:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              break loop0;
                           }
                           continue loop0;
                        }
                        return;
                     }
                  }
                  §§goto(addr141);
               }
               addr127:
               while(true)
               {
                  this.bafesywaw = param1;
                  §§goto(addr130);
               }
            }
            while(true)
            {
               if(!_loc6_)
               {
                  §§goto(addr103);
               }
               §§goto(addr141);
            }
         }
         while(true)
         {
            if(!_loc6_)
            {
               §§goto(addr127);
            }
            §§goto(addr69);
         }
      }
      
      public function execute0() : void
      {
         if(_loc1_)
         {
            §§push(this.reho);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                     return;
                  }
               }
               else
               {
                  §§push(this.gana);
                  if(_loc1_)
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           this.remove();
                           if(_loc2_)
                           {
                           }
                        }
                     }
                     §§push(this.lecidik);
                     if(_loc1_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc1_)
                        {
                           if(§§pop())
                           {
                              if(!_loc1_)
                              {
                              }
                           }
                        }
                     }
                     addr71:
                     §§push(Boolean(§§pop().length));
                  }
                  §§pop();
                  if(!_loc2_)
                  {
                     §§goto(addr71);
                     §§push(this.lecidik);
                  }
               }
               addr77:
               this.bafesywaw.apply(null,this.lecidik);
               addr110:
               if(!_loc1_)
               {
               }
               if(!_loc1_)
               {
                  addr121:
                  return;
               }
               return;
            }
            if(§§pop())
            {
               if(_loc1_)
               {
                  §§goto(addr77);
               }
               §§goto(addr110);
            }
            addr108:
            this.bafesywaw();
            §§goto(addr110);
         }
         if(!_loc1_)
         {
            §§goto(addr108);
         }
         §§goto(addr121);
      }
      
      public function execute1(param1:Object) : void
      {
         if(_loc2_)
         {
            §§push(this.reho);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc3_)
                  {
                     return;
                  }
               }
               else
               {
                  §§push(this.gana);
                  if(!_loc2_)
                  {
                  }
               }
               addr52:
               addr75:
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        addr73:
                        §§push(Boolean(this.lecidik.length));
                     }
                     addr78:
                     this.bafesywaw.apply(null,[param1].concat(this.lecidik));
                     addr115:
                     if(_loc2_)
                     {
                        if(_loc3_)
                        {
                           addr112:
                           this.bafesywaw(param1);
                        }
                        addr126:
                        return;
                     }
                     if(_loc3_)
                     {
                        §§goto(addr126);
                     }
                     else
                     {
                        return;
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§goto(addr78);
                  }
                  §§goto(addr115);
               }
               §§goto(addr112);
            }
            if(§§pop())
            {
               if(!_loc2_)
               {
               }
               §§goto(addr115);
            }
            addr43:
            §§push(this.lecidik);
            if(_loc2_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
                  §§goto(addr52);
               }
               §§goto(addr75);
            }
            §§goto(addr73);
         }
         this.remove();
         if(!_loc3_)
         {
            §§goto(addr43);
         }
         §§goto(addr78);
      }
      
      public function jof(param1:Array) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(this.reho);
            if(_loc3_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     addr45:
                     §§push(this.lecidik);
                     if(_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                              }
                           }
                           addr69:
                           addr82:
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§push(param1);
                                 if(_loc3_)
                                 {
                                    §§push(§§pop().concat(this.lecidik));
                                    if(!_loc3_)
                                    {
                                    }
                                    addr83:
                                    var _loc2_:int = §§pop().length;
                                    if(_loc3_)
                                    {
                                       §§push(_loc2_);
                                       if(!_loc4_)
                                       {
                                          §§push(0);
                                          if(!_loc3_)
                                          {
                                             §§push(-((§§pop() + 79 - 22) * 7));
                                          }
                                          if(_loc3_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc3_)
                                                {
                                                   this.bafesywaw();
                                                   if(!_loc3_)
                                                   {
                                                      addr148:
                                                      §§push(this);
                                                      §§push(param1);
                                                      §§push(0);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(-((-(-§§pop() - 1) - 1 + 1) * 82));
                                                      }
                                                      §§pop().bafesywaw(§§pop()[§§pop()]);
                                                      if(!_loc4_)
                                                      {
                                                         addr165:
                                                      }
                                                   }
                                                }
                                                else
                                                {
                                                   addr279:
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc2_);
                                                if(!_loc3_)
                                                {
                                                }
                                                addr170:
                                                §§push(2);
                                                if(!_loc3_)
                                                {
                                                   §§push(-((((§§pop() - 1) * 79 - 74) * 3 - 54) * 68));
                                                }
                                                if(!_loc4_)
                                                {
                                                   if(§§pop() == §§pop())
                                                   {
                                                      if(_loc3_)
                                                      {
                                                         §§push(this);
                                                         §§push(param1);
                                                         §§push(0);
                                                         if(!_loc3_)
                                                         {
                                                            §§push(-§§pop() - 28 - 33);
                                                         }
                                                         §§push(§§pop()[§§pop()]);
                                                         §§push(param1);
                                                         §§push(1);
                                                         if(_loc4_)
                                                         {
                                                            §§push(--(-(§§pop() - 1 + 117) - 112));
                                                         }
                                                         §§pop().bafesywaw(§§pop(),§§pop()[§§pop()]);
                                                         if(_loc4_)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                   else
                                                   {
                                                      addr219:
                                                      §§push(_loc2_);
                                                      §§push(3);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() - 1 - 1 - 1);
                                                      }
                                                   }
                                                }
                                             }
                                             addr285:
                                             return;
                                          }
                                          addr225:
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(this);
                                                §§push(param1);
                                                §§push(0);
                                                if(!_loc3_)
                                                {
                                                   §§push(-(§§pop() - 42 + 1) - 1);
                                                }
                                                §§push(§§pop()[§§pop()]);
                                                §§push(param1);
                                                §§push(1);
                                                if(!_loc3_)
                                                {
                                                   §§push((§§pop() - 1) * 60 - 37 + 18);
                                                }
                                                §§push(§§pop()[§§pop()]);
                                                §§push(param1);
                                                §§push(2);
                                                if(_loc4_)
                                                {
                                                   §§push(-(§§pop() + 97 - 1 + 1 + 71 - 1) + 1);
                                                }
                                                §§pop().bafesywaw(§§pop(),§§pop(),§§pop()[§§pop()]);
                                                if(_loc4_)
                                                {
                                                }
                                             }
                                             §§goto(addr279);
                                          }
                                          else
                                          {
                                             this.bafesywaw.apply(null,param1);
                                          }
                                          §§goto(addr285);
                                       }
                                       §§push(1);
                                       if(_loc4_)
                                       {
                                          §§push((--(§§pop() + 106) - 1 - 97) * 41 - 88);
                                       }
                                       if(_loc3_)
                                       {
                                          if(§§pop() == §§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                §§goto(addr148);
                                             }
                                             §§goto(addr165);
                                          }
                                          else
                                          {
                                             §§push(_loc2_);
                                             if(!_loc4_)
                                             {
                                                §§goto(addr170);
                                             }
                                             §§goto(addr219);
                                          }
                                          §§goto(addr285);
                                       }
                                       §§goto(addr225);
                                    }
                                    §§goto(addr285);
                                 }
                                 param1 = §§pop();
                              }
                           }
                           §§goto(addr83);
                           §§push(param1);
                        }
                     }
                     addr67:
                     §§goto(addr69);
                     §§push(Boolean(§§pop().length));
                  }
               }
               else
               {
                  §§push(this.gana);
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(_loc3_)
                        {
                           this.remove();
                           if(!_loc3_)
                           {
                           }
                           §§goto(addr82);
                        }
                        addr63:
                        §§push(this.lecidik);
                        if(!_loc4_)
                        {
                           §§goto(addr67);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr45);
                  }
               }
            }
            §§pop();
            if(!_loc4_)
            {
               §§goto(addr63);
            }
            §§goto(addr82);
         }
      }
      
      public function get listener() : Function
      {
         return this.bafesywaw;
      }
      
      public function set listener(param1:Function) : void
      {
         if(null == param1)
         {
            throw new ArgumentError("Given listener is null.\nDid you want to set enabled to false instead?");
         }
         this.zaraja(param1);
         this.bafesywaw = param1;
      }
      
      public function get once() : Boolean
      {
         return this.gana;
      }
      
      public function get priority() : int
      {
         return this.minage;
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[Slot listener: ");
         if(_loc1_)
         {
            §§push(§§pop() + this.bafesywaw);
            if(_loc1_)
            {
               §§push(", once: ");
               if(!_loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc2_)
                  {
                     §§push(this.gana);
                     if(_loc1_)
                     {
                        §§push(§§pop() + §§pop());
                        if(!_loc1_)
                        {
                        }
                        addr86:
                        §§push(§§pop() + "]");
                     }
                     addr83:
                     §§push(§§pop() + §§pop());
                     if(_loc1_)
                     {
                        §§goto(addr86);
                     }
                  }
               }
               addr77:
               §§push(§§pop() + §§pop());
               if(!_loc2_)
               {
                  §§goto(addr83);
                  return this.reho;
               }
            }
         }
         §§push(", priority: ");
         if(_loc1_)
         {
            §§push(§§pop() + §§pop());
            if(_loc1_)
            {
               §§push(§§pop() + this.minage);
               if(_loc2_)
               {
               }
               §§goto(addr86);
            }
            §§push(", enabled: ");
            if(!_loc1_)
            {
            }
            §§goto(addr86);
         }
         §§goto(addr77);
      }
      
      public function get enabled() : Boolean
      {
         return this.reho;
      }
      
      public function set enabled(param1:Boolean) : void
      {
         this.reho = param1;
      }
      
      public function get params() : Array
      {
         return this.lecidik;
      }
      
      public function set params(param1:Array) : void
      {
         this.lecidik = param1;
      }
      
      public function remove() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.gataqydaf.remove(this.bafesywaw);
         }
      }
      
      protected function zaraja(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(null);
            if(!_loc2_)
            {
               if(§§pop() == param1)
               {
                  if(_loc3_)
                  {
                     throw new ArgumentError("Given listener is null.");
                  }
               }
               else
               {
                  §§push(null);
               }
               addr52:
               throw new Error("Internal signal reference has not been set yet.");
            }
            if(§§pop() == this.gataqydaf)
            {
               if(_loc3_)
               {
                  §§goto(addr52);
               }
            }
         }
      }
   }
}
