package §-_-_--__§
{
   import com.greensock.§----_-__§;
   
   public class §-_--_-_§
   {
      
      public static const version:Number = 1.64;
      
      protected static var §-__----§:Boolean;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            version = 1.64;
         }
      }
      
      public var §-_-____-§:Boolean;
      
      protected var §---___-§:Boolean;
      
      public var §-_---_-_§:Boolean;
      
      protected var §--_§:Number;
      
      public var §--_----_§:Boolean;
      
      public var §-___-_-§:§-_--_-_§;
      
      public var §-_-__-_-§:Number;
      
      protected var §-_-§:Number = -1;
      
      public var vars:Object;
      
      public var §--__-§:Number;
      
      public var data;
      
      public var timeline:§-________§;
      
      public var §--__-_--§:Boolean;
      
      public var §--_--_§:Number;
      
      public var §--_-___§:§-_--_-_§;
      
      public var §--__---§:Number;
      
      public var gc:Boolean;
      
      public var §-_---_-§:Number;
      
      public var §---__-_-§:Boolean;
      
      public var §-____-___§:Boolean;
      
      public var §--__-__§:Number;
      
      public var §-__-_§:Number;
      
      public function §-_--_-_§(param1:Number = 0, param2:Object = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super();
            if(_loc5_)
            {
               §§push(this);
               if(_loc5_)
               {
                  if(param2 == null)
                  {
                     §§push({});
                  }
                  addr36:
                  §§pop().vars = §§pop();
                  if(!_loc6_)
                  {
                     if(this.vars.isGSVars)
                     {
                        if(_loc5_)
                        {
                           this.vars = this.vars.vars;
                           if(_loc6_)
                           {
                           }
                        }
                        addr180:
                        §§push(this);
                        §§push(this);
                        §§push(0);
                        if(!_loc5_)
                        {
                           §§push(-(§§pop() - 41 - 58 - 46) + 71);
                        }
                        §§pop().§--__-§ = §§pop().§-_-__-_-§ = §§pop();
                        if(!_loc6_)
                        {
                           this.data = this.vars.data;
                           if(_loc6_)
                           {
                           }
                           addr262:
                           var _loc3_:§-________§ = this.vars.timeline;
                           if(!_loc6_)
                           {
                              _loc3_.§--_-_---§(this,_loc3_.§--__-§);
                              if(!_loc6_)
                              {
                                 if(this.vars.reversed)
                                 {
                                    if(!_loc5_)
                                    {
                                    }
                                    addr302:
                                    this.paused = true;
                                 }
                                 addr295:
                                 if(this.vars.paused)
                                 {
                                    if(!_loc6_)
                                    {
                                       §§goto(addr302);
                                    }
                                 }
                              }
                              this.§--_----_§ = true;
                              if(_loc5_)
                              {
                                 §§goto(addr295);
                              }
                              §§goto(addr302);
                           }
                           return;
                        }
                     }
                     this.§--__---§ = this.§-__-_§ = param1;
                     if(_loc5_)
                     {
                        §§push();
                        if(_loc5_)
                        {
                           if(!this.vars.delay)
                           {
                              §§push(0);
                              if(!_loc5_)
                              {
                                 §§push((§§pop() - 1) * 9 + 1);
                              }
                              §§push(Number(§§pop()));
                           }
                           addr89:
                           §§pop().§--_§ = §§pop();
                           addr225:
                           if(_loc6_)
                           {
                           }
                           §----_-__§.§----_--_§();
                           if(_loc5_)
                           {
                              addr229:
                              §-__----§ = true;
                              addr255:
                              if(_loc6_)
                              {
                              }
                              §§goto(addr262);
                              §§push(§----_-__§.§------_-§);
                           }
                        }
                        §§push(Number(Number(this.vars.delay)));
                        if(_loc6_)
                        {
                        }
                        §§goto(addr89);
                     }
                     addr217:
                     if(isNaN(§----_-__§.§--__-_-_§))
                     {
                        if(_loc5_)
                        {
                           §§goto(addr225);
                        }
                     }
                     else
                     {
                        return;
                     }
                  }
                  §§push(this);
                  if(_loc5_)
                  {
                     if(!this.vars.timeScale)
                     {
                        §§push(1);
                        if(!_loc5_)
                        {
                           §§push(-((§§pop() + 3 - 1) * 42) + 1 + 104);
                        }
                        §§push(Number(§§pop()));
                     }
                     addr122:
                     §§pop().§--__-__§ = §§pop();
                     if(!_loc6_)
                     {
                        §§push(this);
                        §§push();
                        §§push(param1);
                        §§push(0);
                        if(_loc6_)
                        {
                           §§push(§§pop() - 1 + 1 - 1 + 1);
                        }
                        §§pop().§-_---_-_§ = §§pop().Boolean(§§pop() == §§pop() && §§pop() == §§pop() && this.vars.immediateRender != false);
                        if(_loc5_)
                        {
                           §§goto(addr180);
                        }
                        §§goto(addr229);
                     }
                     §§goto(addr255);
                  }
                  §§push(Number(Number(this.vars.timeScale)));
                  if(_loc6_)
                  {
                  }
                  §§goto(addr122);
               }
               §§goto(addr36);
               §§push(param2);
            }
            §§push(§-__----§);
            if(!_loc6_)
            {
               if(!§§pop())
               {
                  if(_loc5_)
                  {
                     §§goto(addr217);
                  }
                  §§goto(addr262);
               }
               addr237:
               §§push(this.vars.timeline is §-________§);
            }
            if(§§pop())
            {
               if(_loc5_)
               {
                  §§goto(addr262);
               }
               §§goto(addr262);
            }
            else
            {
               if(!this.vars.useFrames)
               {
                  §§push(§----_-__§.§-----§);
               }
               §§goto(addr262);
            }
            §§goto(addr255);
         }
         §§goto(addr237);
      }
      
      public function §---_-_--§(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
      }
      
      public function get delay() : Number
      {
         return §--_§;
      }
      
      public function get §-_--__--§() : Number
      {
         return this.§--__---§;
      }
      
      public function set reversed(param1:Boolean) : void
      {
         if(param1 != this.§--_----_§)
         {
            this.§--_----_§ = param1;
            §---_---_§(this.§--__-§,true);
         }
      }
      
      public function set §-_--_-§(param1:Number) : void
      {
         if(this.timeline != null && (param1 != this.§--_--_§ || this.gc))
         {
            this.timeline.§--_-_---§(this,param1 - §--_§);
         }
         else
         {
            this.§--_--_§ = param1;
         }
      }
      
      public function §-____-__§(param1:Boolean = false, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.reversed = false;
            if(!_loc3_)
            {
            }
            addr42:
            §§push(this);
            if(_loc3_)
            {
               if(!param1)
               {
                  §§push(0);
                  if(_loc4_)
                  {
                     §§push((§§pop() + 36) * 83 * 83);
                  }
                  §§push(Number(§§pop()));
               }
               addr79:
               addr81:
               §§pop().§---_---_§(§§pop(),param2);
               return;
            }
            §§push(§--_§);
            if(!_loc4_)
            {
               §§push(-§§pop());
               if(_loc3_)
               {
                  §§push(Number(§§pop()));
                  if(_loc4_)
                  {
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr79);
         }
         this.paused = false;
         if(_loc3_)
         {
            §§goto(addr42);
         }
         §§goto(addr81);
      }
      
      public function set delay(param1:Number) : void
      {
         this.§-_--_-§ = this.§-_--_-§ + (param1 - §--_§);
         §--_§ = param1;
      }
      
      public function §-__-_-_-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.paused = false;
         }
      }
      
      public function get paused() : Boolean
      {
         return this.§-____-___§;
      }
      
      public function §-____-_--§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.reversed = false;
            if(!_loc1_)
            {
            }
            addr29:
            return;
         }
         this.paused = false;
         §§goto(addr29);
      }
      
      public function set §-_--__--§(param1:Number) : void
      {
         var _loc2_:Number = param1 / this.§--__---§;
         this.§--__---§ = this.§-__-_§ = param1;
         if(this.§-_---_-_§ && !this.§-____-___§ && param1 != 0)
         {
            this.§---_---_§(this.§--__-§ * _loc2_,true);
         }
         §-__-_--_§(false);
      }
      
      public function §--_-_-__§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
      }
      
      public function complete(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     §---_-_--§(this.§----§,param2,false);
                     if(!_loc4_)
                     {
                     }
                  }
                  else
                  {
                     addr194:
                     §§push(Boolean(this.vars.onReverseComplete));
                  }
                  addr209:
                  return;
               }
               §§push(this.timeline.§--___-_-§);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        this.§-__-____§(false,false);
                        if(_loc4_)
                        {
                           addr59:
                           §§push(param2);
                           addr186:
                           if(!_loc3_)
                           {
                              if(!§§pop())
                              {
                                 if(_loc4_)
                                 {
                                    §§push(Boolean(this.vars.onComplete));
                                    if(_loc3_)
                                    {
                                    }
                                 }
                                 addr140:
                              }
                           }
                           addr186:
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 addr190:
                                 §§pop();
                                 if(_loc4_)
                                 {
                                    §§goto(addr194);
                                 }
                              }
                           }
                        }
                        addr129:
                        this.vars.onComplete.apply(null,this.vars.onCompleteParams);
                        if(!_loc3_)
                        {
                           §§goto(addr140);
                        }
                        else
                        {
                           §§goto(addr194);
                        }
                     }
                     addr118:
                     §§push(this.§--_----_§);
                     addr157:
                     if(_loc4_)
                     {
                        §§push(!§§pop());
                        if(!_loc3_)
                        {
                           addr126:
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr129);
                              }
                              §§goto(addr194);
                           }
                           else
                           {
                              §§push(this.§--_----_§);
                              if(!_loc3_)
                              {
                                 addr145:
                                 §§push(Boolean(§§pop()));
                                 if(!_loc4_)
                                 {
                                 }
                                 §§goto(addr186);
                              }
                           }
                        }
                     }
                     addr157:
                     §§pop();
                     if(_loc4_)
                     {
                        addr162:
                        §§push(this.§--__-§);
                        §§push(0);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * 38 - 1 + 1 + 1 - 12);
                        }
                        §§push(§§pop() == §§pop());
                        if(!_loc3_)
                        {
                           §§goto(addr186);
                        }
                        §§goto(addr190);
                     }
                  }
                  else
                  {
                     this.§-_---_-_§ = false;
                     if(_loc4_)
                     {
                        §§goto(addr59);
                     }
                  }
                  §§goto(addr209);
               }
               §§push(§§pop());
               if(!_loc3_)
               {
                  addr153:
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§goto(addr157);
                     }
                  }
                  §§goto(addr186);
               }
               §§goto(addr186);
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     this.vars.onReverseComplete.apply(null,this.vars.onReverseCompleteParams);
                  }
               }
               §§goto(addr209);
            }
            §§push(§§pop());
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     §§pop();
                     if(!_loc3_)
                     {
                        §§push(this.§--__-§);
                        if(!_loc3_)
                        {
                           §§push(§§pop() >= this.§-__-_§);
                           if(!_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc3_)
                              {
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr186);
                        }
                        §§goto(addr162);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr145);
               }
               §§push(§§pop());
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        §§pop();
                        if(!_loc3_)
                        {
                           §§goto(addr118);
                        }
                        §§goto(addr209);
                     }
                     §§goto(addr157);
                  }
                  §§goto(addr126);
               }
               §§goto(addr186);
            }
            §§goto(addr153);
         }
      }
      
      public function get §-___--__§() : Number
      {
         return this.§--__-§;
      }
      
      public function get §-_--_-§() : Number
      {
         return this.§--_--_§;
      }
      
      public function get reversed() : Boolean
      {
         return this.§--_----_§;
      }
      
      public function set §-___-___-§(param1:Number) : void
      {
         §---_---_§(param1,false);
      }
      
      protected function §-__-_--_§(param1:Boolean = true) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(!param1)
            {
               §§push(this.timeline);
            }
            addr40:
            var _loc2_:§-_--_-_§ = §§pop();
            if(!_loc3_)
            {
               while(_loc2_)
               {
                  _loc2_.§---__-_-§ = true;
                  _loc2_ = _loc2_.timeline;
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function §-___§(param1:Boolean = true) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.reversed = true;
            if(_loc3_)
            {
               §§push(param1);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        this.paused = false;
                        if(_loc2_)
                        {
                        }
                     }
                  }
                  else
                  {
                     §§push(this.gc);
                  }
                  addr72:
                  return;
               }
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                  }
               }
               §§goto(addr72);
            }
         }
         this.§-__-____§(true,false);
         §§goto(addr72);
      }
      
      public function set paused(param1:Boolean) : void
      {
         if(param1 != this.§-____-___§ && this.timeline)
         {
            if(param1)
            {
               this.§-_---_-§ = this.timeline.§-_-__-_§;
            }
            else
            {
               this.§--_--_§ = this.§--_--_§ + (this.timeline.§-_-__-_§ - this.§-_---_-§);
               this.§-_---_-§ = NaN;
               §-__-_--_§(false);
            }
            this.§-____-___§ = param1;
            this.§-_---_-_§ = Boolean(!this.§-____-___§ && this.§--__-§ > 0 && this.§--__-§ < this.§-__-_§);
         }
         if(!param1 && this.gc)
         {
            this.§---_---_§(this.§--__-§,false);
            this.§-__-____§(true,false);
         }
      }
      
      public function §--______§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §-__-____§(false,false);
         }
      }
      
      public function set §-___--__§(param1:Number) : void
      {
         §---_---_§(param1,false);
      }
      
      public function get §-___-___-§() : Number
      {
         return this.§-_-__-_-§;
      }
      
      protected function §---_---_§(param1:Number, param2:Boolean = false) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(!_loc6_)
         {
            if(this.timeline)
            {
               if(!_loc6_)
               {
                  §§push(this.§-____-___§);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(this.§-_---_-§);
                           if(_loc5_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc5_)
                              {
                                 addr58:
                                 §§push(Number(§§pop()));
                                 if(_loc6_)
                                 {
                                 }
                                 addr112:
                                 _loc4_ = §§pop();
                                 if(_loc6_)
                                 {
                                 }
                              }
                              addr105:
                              §§push(Number(§§pop()));
                              if(_loc5_)
                              {
                                 addr109:
                                 §§push(Number(§§pop()));
                                 if(!_loc6_)
                                 {
                                    §§goto(addr112);
                                 }
                              }
                           }
                           addr61:
                           _loc3_ = §§pop();
                           addr174:
                           if(!_loc6_)
                           {
                              §§push(this.§--_----_§);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(this.§---__-_-§);
                                       if(_loc6_)
                                       {
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(this);
                                    §§push(_loc3_);
                                    if(!_loc6_)
                                    {
                                       §§push(param1);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() / this.§--__-__§);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().§--_--_§ = §§pop();
                                    if(!_loc5_)
                                    {
                                    }
                                 }
                                 addr180:
                                 §§push(this.§--__-§);
                              }
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(this.§----§);
                                    if(_loc5_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc5_)
                                       {
                                       }
                                       §§goto(addr112);
                                    }
                                    §§goto(addr109);
                                 }
                              }
                              else
                              {
                                 §§push(this.§-__-_§);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr105);
                                 }
                              }
                           }
                           §-__-_--_§(false);
                           if(!_loc6_)
                           {
                              §§goto(addr180);
                           }
                        }
                     }
                     else
                     {
                        §§push(this.timeline.§--__-§);
                        if(_loc5_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc6_)
                           {
                              §§goto(addr58);
                           }
                           §§goto(addr61);
                        }
                     }
                     if(§§pop() != param1)
                     {
                        if(_loc5_)
                        {
                           §---_-_--§(param1,param2,false);
                        }
                     }
                  }
                  addr170:
                  if(!§§pop())
                  {
                     if(!_loc6_)
                     {
                        §§goto(addr174);
                     }
                  }
                  §§goto(addr180);
               }
               §§push(this);
               §§push(_loc3_);
               if(!_loc6_)
               {
                  §§push(_loc4_);
                  if(!_loc6_)
                  {
                     §§push(param1);
                     if(!_loc6_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc6_)
                        {
                           §§push(this.§--__-__§);
                        }
                     }
                     §§push(§§pop() / §§pop());
                  }
                  §§push(§§pop() - §§pop());
               }
               §§pop().§--_--_§ = §§pop();
               if(_loc6_)
               {
               }
            }
            return;
         }
         §§goto(addr170);
      }
      
      public function §--_____§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.paused = true;
         }
      }
      
      public function set §----§(param1:Number) : void
      {
         this.§-_--__--§ = param1;
      }
      
      public function get §----§() : Number
      {
         return this.§-__-_§;
      }
      
      public function §-__-____§(param1:Boolean, param2:Boolean = false) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this);
            §§push(param1);
            if(_loc4_)
            {
               §§push(!§§pop());
            }
            §§pop().gc = §§pop();
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        addr137:
                        §§push(param2);
                        if(!_loc3_)
                        {
                           §§push(!§§pop());
                           if(!_loc3_)
                           {
                              addr155:
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    addr160:
                                    §§pop();
                                    if(_loc3_)
                                    {
                                    }
                                    addr176:
                                    addr181:
                                    this.timeline.remove(this,true);
                                    §§push(false);
                                 }
                                 addr182:
                                 return §§pop();
                              }
                           }
                        }
                     }
                     addr173:
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           §§goto(addr176);
                        }
                     }
                     §§goto(addr181);
                  }
                  else
                  {
                     this.§-_---_-_§ = false;
                     if(_loc4_)
                     {
                        §§goto(addr137);
                     }
                  }
                  §§push(this.§--__-_--§);
                  if(_loc4_)
                  {
                     §§push(!§§pop());
                     if(!_loc3_)
                     {
                        §§goto(addr173);
                     }
                  }
                  §§goto(addr182);
               }
               addr112:
               addr130:
               if(§§pop())
               {
                  if(_loc4_)
                  {
                     addr116:
                     §§push(this.timeline);
                     §§push(this);
                     §§push(this.§--_--_§);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - §--_§);
                     }
                     §§pop().§--_-_---§(§§pop(),§§pop());
                     if(!_loc4_)
                     {
                     }
                  }
                  §§goto(addr181);
               }
               §§goto(addr181);
            }
            this.§-_---_-_§ = Boolean(!this.§-____-___§ && §§pop() > §§pop() && this.§--__-§ < this.§-__-_§);
            if(_loc4_)
            {
               §§push(param2);
               if(!_loc3_)
               {
                  §§push(!§§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop());
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr160);
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr173);
                  }
                  else
                  {
                     §§goto(addr155);
                  }
                  §§goto(addr155);
               }
               §§pop();
               if(_loc3_)
               {
               }
               §§goto(addr130);
            }
            §§goto(addr116);
         }
         §§push(this.§--__-_--§);
         if(_loc4_)
         {
            §§push(Boolean(§§pop()));
            if(_loc4_)
            {
               §§goto(addr112);
            }
            §§goto(addr176);
         }
         §§goto(addr160);
      }
   }
}
