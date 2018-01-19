package dyjihoril
{
   public class Finucag
   {
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
      }
      
      private var tikoryda:Boolean;
      
      private var value;
      
      private var qityl:Zykirerod;
      
      private var cityqa:Syqajyl;
      
      public function Finucag(param1:String, param2:Boolean)
      {
         if(!_loc4_)
         {
            super();
            if(_loc3_)
            {
               if(_loc4_)
               {
                  addr36:
                  while(true)
                  {
                     this.qityl = new Zykirerod(param1,param2);
                     if(!_loc3_)
                     {
                     }
                     break;
                  }
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        this.dyf();
                     }
                  }
                  §§push(param2);
                  if(!_loc4_)
                  {
                     §§push(Boolean(§§pop()));
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              §§pop();
                              if(!_loc4_)
                              {
                                 addr144:
                                 if(_loc3_)
                                 {
                                 }
                                 §§push(this.dyf() == null);
                                 if(_loc4_)
                                 {
                                 }
                              }
                              addr161:
                              return;
                           }
                        }
                        addr153:
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              this.qityl.vagovezan("Unexpected characters left in input stream");
                           }
                        }
                        §§goto(addr161);
                     }
                  }
                  §§goto(addr153);
                  §§push(!§§pop());
               }
               addr57:
               while(true)
               {
                  this.tikoryda = param2;
                  if(_loc3_)
                  {
                     if(!_loc3_)
                     {
                        addr84:
                        while(true)
                        {
                           this.value = this.jego();
                           if(!_loc4_)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr95);
                              }
                           }
                           break;
                        }
                        §§goto(addr161);
                     }
                     else
                     {
                        §§goto(addr36);
                     }
                     §§goto(addr106);
                  }
                  break;
               }
               §§goto(addr144);
            }
            while(!_loc3_)
            {
               §§goto(addr57);
            }
            §§goto(addr106);
         }
         while(true)
         {
            if(_loc3_)
            {
               §§goto(addr84);
            }
            §§goto(addr119);
         }
      }
      
      private function dyf() : Syqajyl
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         return true;
      }
      
      private function vepa() : Object
      {
         var _loc2_:String = null;
         if(!_loc4_)
         {
            this.dyf();
            if(_loc4_)
            {
            }
            addr93:
            return _loc1_;
         }
         §§push(this.cityqa.type);
         if(!_loc4_)
         {
            §§push(Qure.pobaleg);
            if(!_loc4_)
            {
               if(§§pop() == §§pop())
               {
                  if(!_loc4_)
                  {
                     return _loc1_;
                  }
                  addr80:
                  this.dyf();
                  addr105:
                  if(!_loc4_)
                  {
                     §§push(this.cityqa.type);
                  }
                  loop0:
                  while(true)
                  {
                     §§push(this.cityqa.type);
                     if(!_loc4_)
                     {
                        §§push(Qure.lef);
                        if(_loc3_)
                        {
                           if(§§pop() == §§pop())
                           {
                              if(!_loc4_)
                              {
                                 _loc2_ = String(this.cityqa.value);
                                 if(!_loc4_)
                                 {
                                    this.dyf();
                                    if(_loc3_)
                                    {
                                       §§push(this.cityqa.type);
                                       if(_loc3_)
                                       {
                                          §§push(Qure.nasyt);
                                          if(!_loc4_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                }
                                                addr223:
                                                if(_loc3_)
                                                {
                                                }
                                                return _loc1_;
                                             }
                                             §§push(this.qityl);
                                             §§push("Expecting : but found ");
                                             if(!_loc4_)
                                             {
                                                §§push(§§pop() + this.cityqa.value);
                                             }
                                             §§pop().vagovezan(§§pop());
                                             if(_loc4_)
                                             {
                                                continue;
                                             }
                                             addr301:
                                             continue;
                                          }
                                          addr238:
                                          if(§§pop() == §§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                this.dyf();
                                                if(_loc3_)
                                                {
                                                   addr247:
                                                   if(!this.tikoryda)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                      }
                                                   }
                                                   addr263:
                                                }
                                                break;
                                             }
                                             addr287:
                                          }
                                          else
                                          {
                                             §§push(this.qityl);
                                             §§push("Expecting } or , but found ");
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() + this.cityqa.value);
                                             }
                                             §§pop().vagovezan(§§pop());
                                             if(!_loc4_)
                                             {
                                                §§goto(addr287);
                                             }
                                          }
                                          §§goto(addr301);
                                       }
                                       addr233:
                                       §§push(Qure.nykiwecuf);
                                       addr258:
                                       if(_loc3_)
                                       {
                                          §§goto(addr238);
                                       }
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr263);
                                       }
                                       §§goto(addr301);
                                    }
                                    §§push(this.cityqa.type);
                                 }
                                 break;
                              }
                              this.dyf();
                              if(!_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    addr175:
                                    while(true)
                                    {
                                       this.dyf();
                                       if(!_loc4_)
                                       {
                                          if(_loc3_)
                                          {
                                          }
                                          break;
                                       }
                                       continue loop0;
                                    }
                                    §§push(this.cityqa.type);
                                    if(_loc3_)
                                    {
                                       §§push(Qure.pobaleg);
                                       if(!_loc3_)
                                       {
                                       }
                                       §§goto(addr238);
                                    }
                                 }
                                 while(true)
                                 {
                                    _loc1_[_loc2_] = this.jego();
                                    if(!_loc4_)
                                    {
                                       if(!_loc4_)
                                       {
                                          §§goto(addr175);
                                       }
                                       §§goto(addr209);
                                    }
                                    else
                                    {
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr247);
                           }
                           else
                           {
                              §§push(this.qityl);
                              §§push("Expecting string but found ");
                              if(_loc3_)
                              {
                                 §§push(§§pop() + this.cityqa.value);
                              }
                              §§pop().vagovezan(§§pop());
                              continue;
                           }
                        }
                        if(§§pop() == §§pop())
                        {
                           if(_loc3_)
                           {
                              §§goto(addr223);
                           }
                        }
                        else
                        {
                           §§push(this.cityqa.type);
                           if(!_loc4_)
                           {
                              §§goto(addr233);
                           }
                        }
                        §§goto(addr287);
                     }
                     §§goto(addr258);
                  }
                  return _loc1_;
               }
               §§push(this.tikoryda);
               if(!_loc4_)
               {
                  §§push(!§§pop());
                  if(_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                        }
                     }
                     addr76:
                     if(§§pop())
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr80);
                        }
                     }
                     §§goto(addr105);
                  }
               }
               §§pop();
               if(!_loc4_)
               {
                  §§push(this.cityqa.type);
                  if(_loc3_)
                  {
                     §§push(Qure.nykiwecuf);
                     if(_loc4_)
                     {
                     }
                     addr90:
                     if(§§pop() == §§pop())
                     {
                        if(!_loc3_)
                        {
                        }
                     }
                     else
                     {
                        §§push(this.qityl);
                        §§push("Leading commas are not supported.  Expecting \'}\' but found ");
                        if(_loc3_)
                        {
                           §§push(§§pop() + this.cityqa.value);
                        }
                        §§pop().vagovezan(§§pop());
                     }
                     §§goto(addr105);
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr76);
            §§push(§§pop() == §§pop());
         }
         §§goto(addr90);
      }
      
      private function jobuf() : Array
      {
         §§push(new Array());
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         if(!_loc3_)
         {
            this.dyf();
            if(_loc2_)
            {
               §§push(this.cityqa.type);
               if(!_loc3_)
               {
                  §§push(Qure.lev);
                  if(!_loc3_)
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc2_)
                        {
                           §§push(_loc1_);
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                        }
                        addr97:
                        return §§pop();
                     }
                     §§push(this.tikoryda);
                     if(!_loc3_)
                     {
                        §§push(!§§pop());
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                              }
                           }
                        }
                        §§pop();
                        if(!_loc3_)
                        {
                           §§push(this.cityqa.type);
                           if(_loc2_)
                           {
                              §§push(Qure.nykiwecuf);
                              if(!_loc2_)
                              {
                              }
                              addr92:
                              if(§§pop() == §§pop())
                              {
                                 if(_loc3_)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(this.qityl);
                                 §§push("Leading commas are not supported.  Expecting \']\' but found ");
                                 if(_loc2_)
                                 {
                                    §§push(§§pop() + this.cityqa.value);
                                 }
                                 §§pop().vagovezan(§§pop());
                              }
                              addr118:
                              loop0:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    addr131:
                                    while(true)
                                    {
                                       this.dyf();
                                       if(!_loc3_)
                                       {
                                          if(!_loc3_)
                                          {
                                          }
                                          addr168:
                                          §§push(this.cityqa.type);
                                          if(_loc2_)
                                          {
                                             §§push(Qure.lev);
                                             if(!_loc3_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   addr221:
                                                   §§push(this.cityqa.type);
                                                }
                                                else
                                                {
                                                   §§push(this.cityqa.type);
                                                   if(_loc3_)
                                                   {
                                                   }
                                                }
                                                §§push(Qure.lev);
                                             }
                                             addr226:
                                             if(§§pop() == §§pop())
                                             {
                                                if(_loc2_)
                                                {
                                                   addr229:
                                                   return _loc1_;
                                                }
                                             }
                                             else
                                             {
                                                addr231:
                                             }
                                             continue loop0;
                                          }
                                          §§push(Qure.nykiwecuf);
                                          if(_loc2_)
                                          {
                                             if(§§pop() == §§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   this.dyf();
                                                   if(_loc3_)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                if(!this.tikoryda)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§goto(addr221);
                                                   }
                                                   §§goto(addr229);
                                                }
                                                §§goto(addr231);
                                             }
                                             else
                                             {
                                                §§push(this.qityl);
                                                §§push("Expecting ] or , but found ");
                                                if(_loc2_)
                                                {
                                                   §§push(§§pop() + this.cityqa.value);
                                                }
                                                §§pop().vagovezan(§§pop());
                                                continue loop0;
                                             }
                                          }
                                          §§goto(addr226);
                                       }
                                       break;
                                    }
                                    if(!_loc3_)
                                    {
                                    }
                                    §§push(_loc1_);
                                    if(!_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr229);
                                 }
                                 while(true)
                                 {
                                    §§push(_loc1_);
                                    if(!_loc3_)
                                    {
                                       §§pop().push(this.jego());
                                       if(!_loc3_)
                                       {
                                          if(_loc2_)
                                          {
                                             §§goto(addr131);
                                          }
                                          §§goto(addr168);
                                       }
                                       §§goto(addr180);
                                    }
                                    §§goto(addr229);
                                 }
                              }
                           }
                        }
                        addr87:
                        §§push(this.cityqa.type);
                     }
                     addr78:
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           this.dyf();
                           if(_loc2_)
                           {
                              §§goto(addr87);
                           }
                        }
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr78);
                  §§push(§§pop() == §§pop());
               }
               §§goto(addr92);
               §§push(Qure.lev);
            }
         }
         §§goto(addr97);
      }
      
      public function luqewufo() : *
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         return this.value;
      }
      
      private function jego() : Object
      {
         if(_loc3_)
         {
            if(this.cityqa == null)
            {
               if(!_loc2_)
               {
                  this.qityl.vagovezan("Unexpected end of input");
                  if(!_loc3_)
                  {
                  }
               }
            }
            §§push(this.cityqa.type);
            if(!_loc2_)
            {
               if(_loc3_)
               {
                  §§push(Qure.tevec);
                  if(_loc3_)
                  {
                     §§push(_loc1_);
                     if(!_loc2_)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(!_loc3_)
                           {
                              addr291:
                              §§push(2);
                              if(_loc2_)
                              {
                                 §§push((§§pop() - 1 + 70 + 1 + 1) * 30);
                              }
                              addr444:
                              if(_loc2_)
                              {
                              }
                              addr444:
                           }
                           addr431:
                           §§goto(addr444);
                        }
                        else
                        {
                           §§push(Qure.nuquq);
                           if(!_loc2_)
                           {
                              §§push(_loc1_);
                              if(!_loc2_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       §§push(1);
                                       if(!_loc3_)
                                       {
                                          §§push((-(§§pop() + 1) * 76 + 1) * 63 + 1);
                                       }
                                       if(_loc2_)
                                       {
                                          addr335:
                                          §§push(_loc1_);
                                          if(!_loc2_)
                                          {
                                             addr338:
                                             if(§§pop() === §§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr408:
                                                   §§push(7);
                                                   if(!_loc3_)
                                                   {
                                                      §§push((§§pop() + 16 + 1 + 1 + 1 - 1) * 46 - 48);
                                                   }
                                                   §§goto(addr431);
                                                }
                                             }
                                             else
                                             {
                                                §§push(Qure.hitinoty);
                                                if(_loc3_)
                                                {
                                                   §§push(_loc1_);
                                                   if(_loc2_)
                                                   {
                                                   }
                                                   addr407:
                                                   if(§§pop() === §§pop())
                                                   {
                                                      §§goto(addr408);
                                                   }
                                                   else
                                                   {
                                                      §§push(8);
                                                      if(!_loc3_)
                                                      {
                                                         §§push(§§pop() - 90 + 1 - 1);
                                                      }
                                                   }
                                                }
                                                addr400:
                                             }
                                          }
                                          if(§§pop() === §§pop())
                                          {
                                             if(_loc3_)
                                             {
                                                §§push(5);
                                                if(!_loc3_)
                                                {
                                                   §§push((§§pop() + 31 - 79 - 54 + 1) * 15);
                                                }
                                                if(_loc2_)
                                                {
                                                }
                                             }
                                             else
                                             {
                                                addr389:
                                                §§push(6);
                                                if(_loc2_)
                                                {
                                                   §§push(-(-(§§pop() * 4) * 27));
                                                }
                                                if(!_loc3_)
                                                {
                                                   §§goto(addr431);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§push(Qure.zisokuv);
                                             if(_loc3_)
                                             {
                                                addr382:
                                                §§push(_loc1_);
                                                if(_loc2_)
                                                {
                                                }
                                                §§goto(addr407);
                                             }
                                          }
                                          §§goto(addr400);
                                       }
                                       §§goto(addr444);
                                    }
                                    §§push(4);
                                    if(!_loc3_)
                                    {
                                       §§push((§§pop() + 70 + 1) * 8 - 1);
                                    }
                                 }
                                 else
                                 {
                                    §§push(Qure.lef);
                                    if(!_loc2_)
                                    {
                                       §§push(_loc1_);
                                       if(_loc2_)
                                       {
                                       }
                                       §§goto(addr338);
                                    }
                                 }
                                 §§goto(addr444);
                              }
                              addr310:
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc2_)
                                 {
                                    addr314:
                                    §§push(3);
                                    if(!_loc3_)
                                    {
                                       §§push(-(§§pop() + 1 + 1 - 28 - 85 - 1 - 46));
                                    }
                                    if(_loc2_)
                                    {
                                       §§goto(addr382);
                                    }
                                 }
                                 §§goto(addr389);
                              }
                              else
                              {
                                 §§push(Qure.rodysihy);
                                 if(_loc3_)
                                 {
                                    §§goto(addr335);
                                 }
                              }
                              §§goto(addr444);
                           }
                           addr306:
                           §§push(_loc1_);
                           if(!_loc2_)
                           {
                              §§goto(addr310);
                           }
                        }
                        addr385:
                        if(§§pop() === §§pop())
                        {
                           if(_loc3_)
                           {
                              §§goto(addr389);
                           }
                           else
                           {
                              §§goto(addr408);
                           }
                           §§goto(addr431);
                        }
                        else
                        {
                           §§push(Qure.pip);
                           if(_loc3_)
                           {
                              §§goto(addr407);
                              §§push(_loc1_);
                           }
                        }
                        §§goto(addr444);
                     }
                     if(§§pop() === §§pop())
                     {
                        if(_loc3_)
                        {
                           §§goto(addr291);
                        }
                        else
                        {
                           §§goto(addr314);
                        }
                        §§goto(addr444);
                     }
                     else
                     {
                        §§goto(addr306);
                        §§push(Qure.gefoce);
                     }
                     §§goto(addr385);
                  }
                  §§goto(addr444);
               }
               §§push(0);
               if(!_loc3_)
               {
                  §§push(-((§§pop() + 1 - 1) * 112));
               }
               if(!_loc3_)
               {
                  §§goto(addr382);
               }
               §§goto(addr444);
            }
            switch(§§pop())
            {
               case 0:
                  if(_loc2_)
                  {
                     break;
                  }
                  return this.vepa();
               case 1:
                  if(_loc2_)
                  {
                     addr101:
                     return this.cityqa.value;
                  }
                  break;
               case 2:
               case 3:
               case 4:
               case 5:
               case 6:
                  if(!_loc3_)
                  {
                     addr129:
                     if(!this.tikoryda)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                           }
                           return this.cityqa.value;
                        }
                        addr177:
                        while(_loc2_)
                        {
                        }
                        return null;
                     }
                     while(true)
                     {
                        §§push(this.qityl);
                        §§push("Unexpected ");
                        if(!_loc2_)
                        {
                           §§push(§§pop() + this.cityqa.value);
                        }
                        §§pop().vagovezan(§§pop());
                        addr199:
                        while(true)
                        {
                           if(_loc2_)
                           {
                              addr201:
                           }
                           §§goto(addr210);
                        }
                        §§goto(addr129);
                     }
                  }
                  else
                  {
                     §§goto(addr101);
                  }
               case 7:
                  if(!_loc2_)
                  {
                     §§goto(addr129);
                  }
               default:
                  while(true)
                  {
                     if(!_loc2_)
                     {
                     }
                     §§push(this.qityl);
                     §§push("Unexpected ");
                     if(!_loc2_)
                     {
                        §§push(§§pop() + this.cityqa.value);
                     }
                     §§pop().vagovezan(§§pop());
                     if(_loc3_)
                     {
                        §§goto(addr177);
                     }
                     §§goto(addr199);
                  }
                  §§goto(addr201);
            }
            return this.jobuf();
         }
         §§goto(addr210);
      }
   }
}
