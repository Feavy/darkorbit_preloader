package fuba
{
   public final class Fyg
   {
      
      public static const NIL:Fyg;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            NIL = new Fyg(null,null);
         }
      }
      
      public var rukihyq:Fuherih;
      
      public var zymac:Fyg;
      
      public var garilaqy:Boolean = false;
      
      public function Fyg(param1:Fuherih, param2:Fyg = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            if(!_loc4_)
            {
               §§push(!param1);
               if(_loc3_)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                     }
                  }
                  addr41:
                  addr116:
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        if(NIL)
                        {
                           if(!_loc4_)
                           {
                              throw new ArgumentError("Parameters head and tail are null. Use the NIL element instead.");
                           }
                        }
                        addr77:
                        throw new ArgumentError("Parameter head cannot be null.");
                     }
                     addr113:
                     this.garilaqy = true;
                  }
                  else if(!param1)
                  {
                     if(!_loc4_)
                     {
                        §§goto(addr77);
                     }
                     else
                     {
                        §§goto(addr113);
                     }
                  }
                  else
                  {
                     this.rukihyq = param1;
                     if(!_loc4_)
                     {
                        §§push(this);
                        if(_loc3_)
                        {
                           addr110:
                           §§pop().zymac = param2;
                           if(!_loc4_)
                           {
                              §§goto(addr113);
                           }
                        }
                        §§goto(addr110);
                        §§push(NIL);
                     }
                  }
                  return;
               }
               §§pop();
               if(!_loc4_)
               {
                  §§goto(addr41);
                  §§push(!param2);
               }
               §§goto(addr116);
            }
         }
         this.garilaqy = false;
         if(!_loc4_)
         {
            §§goto(addr116);
         }
         else
         {
            §§goto(addr77);
         }
      }
      
      public function get length() : uint
      {
         if(!this.garilaqy)
         {
            return 0;
         }
         if(this.zymac == NIL)
         {
            return 1;
         }
         var _loc1_:uint = 0;
         var _loc2_:Fyg = this;
         while(_loc2_.garilaqy)
         {
            _loc1_++;
            _loc2_ = _loc2_.zymac;
         }
         return _loc1_;
      }
      
      public function mepa(param1:Fuherih) : Fyg
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         return new Fyg(param1,this);
      }
      
      public function jycukufo(param1:Fuherih) : Fyg
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            if(!param1)
            {
               if(_loc6_)
               {
                  return this;
               }
            }
            else if(!this.garilaqy)
            {
               if(_loc6_)
               {
                  return new Fyg(param1);
               }
            }
            else if(this.zymac != NIL)
            {
               var _loc2_:Fyg = new Fyg(this.rukihyq);
               var _loc3_:Fyg = _loc2_;
               var _loc4_:Fyg = this.zymac;
               if(_loc6_)
               {
                  while(_loc4_.garilaqy)
                  {
                     _loc3_ = _loc3_.zymac = new Fyg(_loc4_.rukihyq);
                     _loc4_ = _loc4_.zymac;
                  }
                  if(!_loc7_)
                  {
                     _loc3_.zymac = new Fyg(param1);
                  }
               }
               return _loc2_;
            }
         }
         return new Fyg(param1).mepa(this.rukihyq);
      }
      
      public function razydic(param1:Fuherih) : Fyg
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(this.garilaqy)
            {
               §§push(param1.priority);
               if(_loc7_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc7_)
               {
                  if(_loc2_ <= this.rukihyq.priority)
                  {
                     var _loc3_:Fyg = new Fyg(this.rukihyq);
                     var _loc4_:Fyg = _loc3_;
                     var _loc5_:Fyg = this.zymac;
                     if(_loc7_)
                     {
                        while(_loc5_.garilaqy)
                        {
                           if(_loc2_ > _loc5_.rukihyq.priority)
                           {
                              if(!_loc8_)
                              {
                                 _loc4_.zymac = _loc5_.mepa(param1);
                              }
                              return _loc3_;
                           }
                           _loc4_ = _loc4_.zymac = new Fyg(_loc5_.rukihyq);
                           _loc5_ = _loc5_.zymac;
                        }
                        if(_loc8_)
                        {
                        }
                        return _loc3_;
                     }
                     _loc4_.zymac = new Fyg(param1);
                     §§goto(addr124);
                  }
               }
               return this.mepa(param1);
            }
         }
         return new Fyg(param1);
      }
      
      public function suji(param1:Function) : Fyg
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §§push(this.garilaqy);
            if(_loc7_)
            {
               §§push(!§§pop());
               if(_loc7_)
               {
                  if(!§§pop())
                  {
                     if(_loc6_)
                     {
                     }
                  }
               }
               §§pop();
               if(_loc6_)
               {
               }
               addr62:
               return this.zymac;
            }
            addr42:
            if(§§pop())
            {
               if(_loc7_)
               {
                  return this;
               }
            }
            else
            {
               addr48:
               if(param1 != this.rukihyq.listener)
               {
                  var _loc2_:Fyg = new Fyg(this.rukihyq);
                  var _loc3_:Fyg = _loc2_;
                  var _loc4_:Fyg = this.zymac;
                  if(_loc7_)
                  {
                     while(_loc4_.garilaqy)
                     {
                        if(_loc4_.rukihyq.listener == param1)
                        {
                           if(_loc7_)
                           {
                              _loc3_.zymac = _loc4_.zymac;
                           }
                           return _loc2_;
                        }
                        _loc3_ = _loc3_.zymac = new Fyg(_loc4_.rukihyq);
                        _loc4_ = _loc4_.zymac;
                     }
                  }
                  return this;
               }
            }
            §§goto(addr62);
         }
         §§push(param1);
         if(!_loc6_)
         {
            §§goto(addr42);
            §§push(§§pop() == null);
         }
         §§goto(addr48);
      }
      
      public function contains(param1:Function) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this.garilaqy);
            if(_loc4_)
            {
               if(§§pop())
               {
                  var _loc2_:Fyg = this;
                  if(_loc4_)
                  {
                     while(true)
                     {
                        §§push(_loc2_.garilaqy);
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_.rukihyq.listener == param1)
                              {
                                 return true;
                              }
                              _loc2_ = _loc2_.zymac;
                              continue;
                           }
                        }
                        break;
                     }
                     return §§pop();
                  }
                  §§goto(addr74);
                  §§push(false);
               }
            }
            addr48:
            return §§pop();
         }
         §§goto(addr48);
      }
      
      public function dyqepyvi(param1:Function) : Fuherih
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.garilaqy)
            {
               var _loc2_:Fyg = this;
               if(!_loc3_)
               {
                  while(_loc2_.garilaqy)
                  {
                     if(_loc2_.rukihyq.listener == param1)
                     {
                        return _loc2_.rukihyq;
                     }
                     _loc2_ = _loc2_.zymac;
                  }
               }
               return null;
            }
         }
         return null;
      }
      
      public function toString() : String
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc1_:* = "";
         var _loc2_:Fyg = this;
         if(_loc4_)
         {
            while(_loc2_.garilaqy)
            {
               §§push(_loc1_);
               if(_loc4_)
               {
                  §§push(§§pop() + (_loc2_.rukihyq + " -> "));
               }
               _loc1_ = §§pop();
               _loc2_ = _loc2_.zymac;
            }
            if(_loc3_)
            {
            }
            §§push("[List ");
            if(_loc4_)
            {
               addr80:
               §§push(§§pop() + _loc1_);
               if(!_loc3_)
               {
                  return §§pop() + "]";
               }
            }
         }
         §§push(_loc1_ + "NIL");
         if(!_loc3_)
         {
            _loc1_ = §§pop();
            §§goto(addr76);
         }
         §§goto(addr80);
      }
   }
}
