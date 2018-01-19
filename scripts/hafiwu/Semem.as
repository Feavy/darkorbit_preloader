package hafiwu
{
   public final class Semem
   {
      
      public static const NIL:Semem;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            NIL = new Semem(null,null);
         }
      }
      
      public var hubomej:Gihivu;
      
      public var lufifi:Semem;
      
      public var wowyq:Boolean = false;
      
      public function Semem(param1:Gihivu, param2:Semem = null)
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
                     this.wowyq = true;
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
                     this.hubomej = param1;
                     if(!_loc4_)
                     {
                        §§push(this);
                        if(_loc3_)
                        {
                           addr110:
                           §§pop().lufifi = param2;
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
         this.wowyq = false;
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
         if(!this.wowyq)
         {
            return 0;
         }
         if(this.lufifi == NIL)
         {
            return 1;
         }
         var _loc1_:uint = 0;
         var _loc2_:Semem = this;
         while(_loc2_.wowyq)
         {
            _loc1_++;
            _loc2_ = _loc2_.lufifi;
         }
         return _loc1_;
      }
      
      public function zicekyq(param1:Gihivu) : Semem
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         return new Semem(param1,this);
      }
      
      public function fudaregav(param1:Gihivu) : Semem
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
            else if(!this.wowyq)
            {
               if(_loc6_)
               {
                  return new Semem(param1);
               }
            }
            else if(this.lufifi != NIL)
            {
               var _loc2_:Semem = new Semem(this.hubomej);
               var _loc3_:Semem = _loc2_;
               var _loc4_:Semem = this.lufifi;
               if(_loc6_)
               {
                  while(_loc4_.wowyq)
                  {
                     _loc3_ = _loc3_.lufifi = new Semem(_loc4_.hubomej);
                     _loc4_ = _loc4_.lufifi;
                  }
                  if(!_loc7_)
                  {
                     _loc3_.lufifi = new Semem(param1);
                  }
               }
               return _loc2_;
            }
         }
         return new Semem(param1).zicekyq(this.hubomej);
      }
      
      public function kul(param1:Gihivu) : Semem
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(this.wowyq)
            {
               §§push(param1.priority);
               if(_loc7_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc7_)
               {
                  if(_loc2_ <= this.hubomej.priority)
                  {
                     var _loc3_:Semem = new Semem(this.hubomej);
                     var _loc4_:Semem = _loc3_;
                     var _loc5_:Semem = this.lufifi;
                     if(_loc7_)
                     {
                        while(_loc5_.wowyq)
                        {
                           if(_loc2_ > _loc5_.hubomej.priority)
                           {
                              if(!_loc8_)
                              {
                                 _loc4_.lufifi = _loc5_.zicekyq(param1);
                              }
                              return _loc3_;
                           }
                           _loc4_ = _loc4_.lufifi = new Semem(_loc5_.hubomej);
                           _loc5_ = _loc5_.lufifi;
                        }
                        if(_loc8_)
                        {
                        }
                        return _loc3_;
                     }
                     _loc4_.lufifi = new Semem(param1);
                     §§goto(addr124);
                  }
               }
               return this.zicekyq(param1);
            }
         }
         return new Semem(param1);
      }
      
      public function kydi(param1:Function) : Semem
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §§push(this.wowyq);
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
               return this.lufifi;
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
               if(param1 != this.hubomej.listener)
               {
                  var _loc2_:Semem = new Semem(this.hubomej);
                  var _loc3_:Semem = _loc2_;
                  var _loc4_:Semem = this.lufifi;
                  if(_loc7_)
                  {
                     while(_loc4_.wowyq)
                     {
                        if(_loc4_.hubomej.listener == param1)
                        {
                           if(_loc7_)
                           {
                              _loc3_.lufifi = _loc4_.lufifi;
                           }
                           return _loc2_;
                        }
                        _loc3_ = _loc3_.lufifi = new Semem(_loc4_.hubomej);
                        _loc4_ = _loc4_.lufifi;
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
            §§push(this.wowyq);
            if(_loc4_)
            {
               if(§§pop())
               {
                  var _loc2_:Semem = this;
                  if(_loc4_)
                  {
                     while(true)
                     {
                        §§push(_loc2_.wowyq);
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_.hubomej.listener == param1)
                              {
                                 return true;
                              }
                              _loc2_ = _loc2_.lufifi;
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
      
      public function wokiqon(param1:Function) : Gihivu
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.wowyq)
            {
               var _loc2_:Semem = this;
               if(!_loc3_)
               {
                  while(_loc2_.wowyq)
                  {
                     if(_loc2_.hubomej.listener == param1)
                     {
                        return _loc2_.hubomej;
                     }
                     _loc2_ = _loc2_.lufifi;
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
         var _loc2_:Semem = this;
         if(_loc4_)
         {
            while(_loc2_.wowyq)
            {
               §§push(_loc1_);
               if(_loc4_)
               {
                  §§push(§§pop() + (_loc2_.hubomej + " -> "));
               }
               _loc1_ = §§pop();
               _loc2_ = _loc2_.lufifi;
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
