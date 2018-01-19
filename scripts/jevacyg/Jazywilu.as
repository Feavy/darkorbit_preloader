package jevacyg
{
   import com.greensock.Kaviwem;
   
   public class Jazywilu
   {
      
      public static const version:Number = 1.64;
      
      protected static var zytity:Boolean;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            version = 1.64;
         }
      }
      
      public var nurivo:Boolean;
      
      protected var guhom:Boolean;
      
      public var myqame:Boolean;
      
      protected var zotaraz:Number;
      
      public var nuzewyga:Boolean;
      
      public var peked:Jazywilu;
      
      public var woto:Number;
      
      protected var newob:Number = -1;
      
      public var vars:Object;
      
      public var cacubyf:Number;
      
      public var data;
      
      public var timeline:Zycyb;
      
      public var fugi:Boolean;
      
      public var mikid:Number;
      
      public var sufozice:Jazywilu;
      
      public var hofylan:Number;
      
      public var gc:Boolean;
      
      public var hepa:Number;
      
      public var javemu:Boolean;
      
      public var hazur:Boolean;
      
      public var luwuqoky:Number;
      
      public var rabegodob:Number;
      
      public function Jazywilu(param1:Number = 0, param2:Object = null)
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
                        §§pop().cacubyf = §§pop().woto = §§pop();
                        if(!_loc6_)
                        {
                           this.data = this.vars.data;
                           if(_loc6_)
                           {
                           }
                           addr262:
                           var _loc3_:Zycyb = this.vars.timeline;
                           if(!_loc6_)
                           {
                              _loc3_.jirocaku(this,_loc3_.cacubyf);
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
                              this.nuzewyga = true;
                              if(_loc5_)
                              {
                                 §§goto(addr295);
                              }
                              §§goto(addr302);
                           }
                           return;
                        }
                     }
                     this.hofylan = this.rabegodob = param1;
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
                           §§pop().zotaraz = §§pop();
                           addr225:
                           if(_loc6_)
                           {
                           }
                           Kaviwem.qowici();
                           if(_loc5_)
                           {
                              addr229:
                              zytity = true;
                              addr255:
                              if(_loc6_)
                              {
                              }
                              §§goto(addr262);
                              §§push(Kaviwem.hon);
                           }
                        }
                        §§push(Number(Number(this.vars.delay)));
                        if(_loc6_)
                        {
                        }
                        §§goto(addr89);
                     }
                     addr217:
                     if(isNaN(Kaviwem.jopivu))
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
                     §§pop().luwuqoky = §§pop();
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
                        §§pop().myqame = §§pop().Boolean(§§pop() == §§pop() && §§pop() == §§pop() && this.vars.immediateRender != false);
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
            §§push(zytity);
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
               §§push(this.vars.timeline is Zycyb);
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
                  §§push(Kaviwem.heh);
               }
               §§goto(addr262);
            }
            §§goto(addr255);
         }
         §§goto(addr237);
      }
      
      public function nymonyk(param1:Number, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
      }
      
      public function get delay() : Number
      {
         return zotaraz;
      }
      
      public function get pehivej() : Number
      {
         return this.hofylan;
      }
      
      public function set reversed(param1:Boolean) : void
      {
         if(param1 != this.nuzewyga)
         {
            this.nuzewyga = param1;
            sosuguh(this.cacubyf,true);
         }
      }
      
      public function set rocic(param1:Number) : void
      {
         if(this.timeline != null && (param1 != this.mikid || this.gc))
         {
            this.timeline.jirocaku(this,param1 - zotaraz);
         }
         else
         {
            this.mikid = param1;
         }
      }
      
      public function tukomu(param1:Boolean = false, param2:Boolean = true) : void
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
               §§pop().sosuguh(§§pop(),param2);
               return;
            }
            §§push(zotaraz);
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
         this.rocic = this.rocic + (param1 - zotaraz);
         zotaraz = param1;
      }
      
      public function tokov() : void
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
         return this.hazur;
      }
      
      public function hycem() : void
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
      
      public function set pehivej(param1:Number) : void
      {
         var _loc2_:Number = param1 / this.hofylan;
         this.hofylan = this.rabegodob = param1;
         if(this.myqame && !this.hazur && param1 != 0)
         {
            this.sosuguh(this.cacubyf * _loc2_,true);
         }
         kufecudif(false);
      }
      
      public function qonufuj() : void
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
                     nymonyk(this.pipyvyqy,param2,false);
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
               §§push(this.timeline.laf);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        this.wadopud(false,false);
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
                     §§push(this.nuzewyga);
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
                              §§push(this.nuzewyga);
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
                        §§push(this.cacubyf);
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
                     this.myqame = false;
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
                        §§push(this.cacubyf);
                        if(!_loc3_)
                        {
                           §§push(§§pop() >= this.rabegodob);
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
      
      public function get woqosany() : Number
      {
         return this.cacubyf;
      }
      
      public function get rocic() : Number
      {
         return this.mikid;
      }
      
      public function get reversed() : Boolean
      {
         return this.nuzewyga;
      }
      
      public function set guta(param1:Number) : void
      {
         sosuguh(param1,false);
      }
      
      protected function kufecudif(param1:Boolean = true) : void
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
            var _loc2_:Jazywilu = §§pop();
            if(!_loc3_)
            {
               while(_loc2_)
               {
                  _loc2_.javemu = true;
                  _loc2_ = _loc2_.timeline;
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      public function tyfytu(param1:Boolean = true) : void
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
         this.wadopud(true,false);
         §§goto(addr72);
      }
      
      public function set paused(param1:Boolean) : void
      {
         if(param1 != this.hazur && this.timeline)
         {
            if(param1)
            {
               this.hepa = this.timeline.totegy;
            }
            else
            {
               this.mikid = this.mikid + (this.timeline.totegy - this.hepa);
               this.hepa = NaN;
               kufecudif(false);
            }
            this.hazur = param1;
            this.myqame = Boolean(!this.hazur && this.cacubyf > 0 && this.cacubyf < this.rabegodob);
         }
         if(!param1 && this.gc)
         {
            this.sosuguh(this.cacubyf,false);
            this.wadopud(true,false);
         }
      }
      
      public function nivoqeg() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            wadopud(false,false);
         }
      }
      
      public function set woqosany(param1:Number) : void
      {
         sosuguh(param1,false);
      }
      
      public function get guta() : Number
      {
         return this.woto;
      }
      
      protected function sosuguh(param1:Number, param2:Boolean = false) : void
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
                  §§push(this.hazur);
                  if(!_loc6_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_)
                        {
                           §§push(this.hepa);
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
                              §§push(this.nuzewyga);
                              if(_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc6_)
                                    {
                                       §§push(this.javemu);
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
                                          §§push(§§pop() / this.luwuqoky);
                                       }
                                       §§push(§§pop() - §§pop());
                                    }
                                    §§pop().mikid = §§pop();
                                    if(!_loc5_)
                                    {
                                    }
                                 }
                                 addr180:
                                 §§push(this.cacubyf);
                              }
                              if(§§pop())
                              {
                                 if(!_loc6_)
                                 {
                                    §§push(this.pipyvyqy);
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
                                 §§push(this.rabegodob);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr105);
                                 }
                              }
                           }
                           kufecudif(false);
                           if(!_loc6_)
                           {
                              §§goto(addr180);
                           }
                        }
                     }
                     else
                     {
                        §§push(this.timeline.cacubyf);
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
                           nymonyk(param1,param2,false);
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
                           §§push(this.luwuqoky);
                        }
                     }
                     §§push(§§pop() / §§pop());
                  }
                  §§push(§§pop() - §§pop());
               }
               §§pop().mikid = §§pop();
               if(_loc6_)
               {
               }
            }
            return;
         }
         §§goto(addr170);
      }
      
      public function fon() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.paused = true;
         }
      }
      
      public function set pipyvyqy(param1:Number) : void
      {
         this.pehivej = param1;
      }
      
      public function get pipyvyqy() : Number
      {
         return this.rabegodob;
      }
      
      public function wadopud(param1:Boolean, param2:Boolean = false) : Boolean
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
                     this.myqame = false;
                     if(_loc4_)
                     {
                        §§goto(addr137);
                     }
                  }
                  §§push(this.fugi);
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
                     §§push(this.mikid);
                     if(!_loc3_)
                     {
                        §§push(§§pop() - zotaraz);
                     }
                     §§pop().jirocaku(§§pop(),§§pop());
                     if(!_loc4_)
                     {
                     }
                  }
                  §§goto(addr181);
               }
               §§goto(addr181);
            }
            this.myqame = Boolean(!this.hazur && §§pop() > §§pop() && this.cacubyf < this.rabegodob);
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
         §§push(this.fugi);
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
