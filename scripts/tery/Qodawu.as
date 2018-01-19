package tery
{
   import com.greensock.Meqyn;
   
   public class Qodawu
   {
      
      public static const version:Number = 1.64;
      
      protected static var topefy:Boolean;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            version = 1.64;
         }
      }
      
      public var lip:Boolean;
      
      protected var ruqonyho:Boolean;
      
      public var jos:Boolean;
      
      protected var huq:Number;
      
      public var beqohyf:Boolean;
      
      public var cydikif:Qodawu;
      
      public var gyzuq:Number;
      
      protected var jicupimuj:Number = -1;
      
      public var vars:Object;
      
      public var had:Number;
      
      public var data;
      
      public var timeline:Kiduwyfe;
      
      public var qow:Boolean;
      
      public var wawirowy:Number;
      
      public var cabawob:Qodawu;
      
      public var josical:Number;
      
      public var gc:Boolean;
      
      public var quco:Number;
      
      public var vynyl:Boolean;
      
      public var poguguvuh:Boolean;
      
      public var qacusin:Number;
      
      public var fij:Number;
      
      public function Qodawu(param1:Number = 0, param2:Object = null)
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
                        §§pop().had = §§pop().gyzuq = §§pop();
                        if(!_loc6_)
                        {
                           this.data = this.vars.data;
                           if(_loc6_)
                           {
                           }
                           addr262:
                           var _loc3_:Kiduwyfe = this.vars.timeline;
                           if(!_loc6_)
                           {
                              _loc3_.hadar(this,_loc3_.had);
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
                              this.beqohyf = true;
                              if(_loc5_)
                              {
                                 §§goto(addr295);
                              }
                              §§goto(addr302);
                           }
                           return;
                        }
                     }
                     this.josical = this.fij = param1;
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
                           §§pop().huq = §§pop();
                           addr225:
                           if(_loc6_)
                           {
                           }
                           Meqyn.hejygyrer();
                           if(_loc5_)
                           {
                              addr229:
                              topefy = true;
                              addr255:
                              if(_loc6_)
                              {
                              }
                              §§goto(addr262);
                              §§push(Meqyn.pikogajo);
                           }
                        }
                        §§push(Number(Number(this.vars.delay)));
                        if(_loc6_)
                        {
                        }
                        §§goto(addr89);
                     }
                     addr217:
                     if(isNaN(Meqyn.bipynezuc))
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
                     §§pop().qacusin = §§pop();
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
                        §§pop().jos = §§pop().Boolean(§§pop() == §§pop() && §§pop() == §§pop() && this.vars.immediateRender != false);
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
            §§push(topefy);
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
               §§push(this.vars.timeline is Kiduwyfe);
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
                  §§push(Meqyn.hucaqyn);
               }
               §§goto(addr262);
            }
            §§goto(addr255);
         }
         §§goto(addr237);
      }
      
      public function qifupa(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
      }
      
      public function get delay() : Number
      {
         return huq;
      }
      
      public function get duwemy() : Number
      {
         return this.josical;
      }
      
      public function set reversed(param1:Boolean) : void
      {
         if(param1 != this.beqohyf)
         {
            this.beqohyf = param1;
            neqibewar(this.had,true);
         }
      }
      
      public function set dubigipiv(param1:Number) : void
      {
         if(this.timeline != null && (param1 != this.wawirowy || this.gc))
         {
            this.timeline.hadar(this,param1 - huq);
         }
         else
         {
            this.wawirowy = param1;
         }
      }
      
      public function sebyhas(param1:Boolean = false, param2:Boolean = true) : void
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
               §§pop().neqibewar(§§pop(),param2);
               return;
            }
            §§push(huq);
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
         this.dubigipiv = this.dubigipiv + (param1 - huq);
         huq = param1;
      }
      
      public function juripeda() : void
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
         return this.poguguvuh;
      }
      
      public function pacosuh() : void
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
      
      public function set duwemy(param1:Number) : void
      {
         var _loc2_:Number = param1 / this.josical;
         this.josical = this.fij = param1;
         if(this.jos && !this.poguguvuh && param1 != 0)
         {
            this.neqibewar(this.had * _loc2_,true);
         }
         fiw(false);
      }
      
      public function wasyzyh() : void
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
                     qifupa(this.tiq,param2,false);
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
               §§push(this.timeline.kypo);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        this.vuzec(false,false);
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
                     §§push(this.beqohyf);
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
                              §§push(this.beqohyf);
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
                        §§push(this.had);
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
                     this.jos = false;
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
                        §§push(this.had);
                        if(!_loc3_)
                        {
                           §§push(§§pop() >= this.fij);
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
      
      public function get gasymoc() : Number
      {
         return this.had;
      }
      
      public function get dubigipiv() : Number
      {
         return this.wawirowy;
      }
      
      public function get reversed() : Boolean
      {
         return this.beqohyf;
      }
      
      public function set tupowy(param1:Number) : void
      {
         neqibewar(param1,false);
      }
      
      protected function fiw(param1:Boolean = true) : void
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
            var _loc2_:Qodawu = §§pop();
            if(!_loc3_)
            {
               while(_loc2_)
               {
                  _loc2_.vynyl = true;
                  _loc2_ = _loc2_.timeline;
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function zopy(param1:Boolean = true) : void
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
         this.vuzec(true,false);
         §§goto(addr72);
      }
      
      public function set paused(param1:Boolean) : void
      {
         if(param1 != this.poguguvuh && this.timeline)
         {
            if(param1)
            {
               this.quco = this.timeline.bavot;
            }
            else
            {
               this.wawirowy = this.wawirowy + (this.timeline.bavot - this.quco);
               this.quco = NaN;
               fiw(false);
            }
            this.poguguvuh = param1;
            this.jos = Boolean(!this.poguguvuh && this.had > 0 && this.had < this.fij);
         }
         if(!param1 && this.gc)
         {
            this.neqibewar(this.had,false);
            this.vuzec(true,false);
         }
      }
      
      public function cutolo() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            vuzec(false,false);
         }
      }
      
      public function set gasymoc(param1:Number) : void
      {
         neqibewar(param1,false);
      }
      
      public function get tupowy() : Number
      {
         return this.gyzuq;
      }
      
      protected function neqibewar(param1:Number, param2:Boolean = false) : void
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
                  §§push(this.poguguvuh);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(this.quco);
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
                              §§push(this.beqohyf);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(this.vynyl);
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
                                          §§push(§§pop() / this.qacusin);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().wawirowy = §§pop();
                                    if(!_loc5_)
                                    {
                                    }
                                 }
                                 addr180:
                                 §§push(this.had);
                              }
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(this.tiq);
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
                                 §§push(this.fij);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr105);
                                 }
                              }
                           }
                           fiw(false);
                           if(!_loc6_)
                           {
                              §§goto(addr180);
                           }
                        }
                     }
                     else
                     {
                        §§push(this.timeline.had);
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
                           qifupa(param1,param2,false);
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
                           §§push(this.qacusin);
                        }
                     }
                     §§push(§§pop() / §§pop());
                  }
                  §§push(§§pop() - §§pop());
               }
               §§pop().wawirowy = §§pop();
               if(_loc6_)
               {
               }
            }
            return;
         }
         §§goto(addr170);
      }
      
      public function tuvowapyk() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.paused = true;
         }
      }
      
      public function set tiq(param1:Number) : void
      {
         this.duwemy = param1;
      }
      
      public function get tiq() : Number
      {
         return this.fij;
      }
      
      public function vuzec(param1:Boolean, param2:Boolean = false) : Boolean
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
                     this.jos = false;
                     if(_loc4_)
                     {
                        §§goto(addr137);
                     }
                  }
                  §§push(this.qow);
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
                     §§push(this.wawirowy);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - huq);
                     }
                     §§pop().hadar(§§pop(),§§pop());
                     if(!_loc4_)
                     {
                     }
                  }
                  §§goto(addr181);
               }
               §§goto(addr181);
            }
            this.jos = Boolean(!this.poguguvuh && §§pop() > §§pop() && this.had < this.fij);
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
         §§push(this.qow);
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
