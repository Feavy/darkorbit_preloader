package §-___---_§
{
   public final class §-_----__§
   {
      
      public static const NIL:§-_----__§;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            NIL = new §-_----__§(null,null);
         }
      }
      
      public var §-_____-§:§--__-___§;
      
      public var §--_-____§:§-_----__§;
      
      public var §---__-__§:Boolean = false;
      
      public function §-_----__§(param1:§--__-___§, param2:§-_----__§ = null)
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
                     this.§---__-__§ = true;
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
                     this.§-_____-§ = param1;
                     if(!_loc4_)
                     {
                        §§push(this);
                        if(_loc3_)
                        {
                           addr110:
                           §§pop().§--_-____§ = param2;
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
         this.§---__-__§ = false;
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
         if(!this.§---__-__§)
         {
            return 0;
         }
         if(this.§--_-____§ == NIL)
         {
            return 1;
         }
         var _loc1_:uint = 0;
         var _loc2_:§-_----__§ = this;
         while(_loc2_.§---__-__§)
         {
            _loc1_++;
            _loc2_ = _loc2_.§--_-____§;
         }
         return _loc1_;
      }
      
      public function §---_--__§(param1:§--__-___§) : §-_----__§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         return new §-_----__§(param1,this);
      }
      
      public function §-_-_-__-§(param1:§--__-___§) : §-_----__§
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
            else if(!this.§---__-__§)
            {
               if(_loc6_)
               {
                  return new §-_----__§(param1);
               }
            }
            else if(this.§--_-____§ != NIL)
            {
               var _loc2_:§-_----__§ = new §-_----__§(this.§-_____-§);
               var _loc3_:§-_----__§ = _loc2_;
               var _loc4_:§-_----__§ = this.§--_-____§;
               if(_loc6_)
               {
                  while(_loc4_.§---__-__§)
                  {
                     _loc3_ = _loc3_.§--_-____§ = new §-_----__§(_loc4_.§-_____-§);
                     _loc4_ = _loc4_.§--_-____§;
                  }
                  if(!_loc7_)
                  {
                     _loc3_.§--_-____§ = new §-_----__§(param1);
                  }
               }
               return _loc2_;
            }
         }
         return new §-_----__§(param1).§---_--__§(this.§-_____-§);
      }
      
      public function §-_-__--§(param1:§--__-___§) : §-_----__§
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            if(this.§---__-__§)
            {
               §§push(param1.priority);
               if(_loc7_)
               {
                  §§push(int(§§pop()));
               }
               var _loc2_:* = §§pop();
               if(_loc7_)
               {
                  if(_loc2_ <= this.§-_____-§.priority)
                  {
                     var _loc3_:§-_----__§ = new §-_----__§(this.§-_____-§);
                     var _loc4_:§-_----__§ = _loc3_;
                     var _loc5_:§-_----__§ = this.§--_-____§;
                     if(_loc7_)
                     {
                        while(_loc5_.§---__-__§)
                        {
                           if(_loc2_ > _loc5_.§-_____-§.priority)
                           {
                              if(!_loc8_)
                              {
                                 _loc4_.§--_-____§ = _loc5_.§---_--__§(param1);
                              }
                              return _loc3_;
                           }
                           _loc4_ = _loc4_.§--_-____§ = new §-_----__§(_loc5_.§-_____-§);
                           _loc5_ = _loc5_.§--_-____§;
                        }
                        if(_loc8_)
                        {
                        }
                        return _loc3_;
                     }
                     _loc4_.§--_-____§ = new §-_----__§(param1);
                     §§goto(addr124);
                  }
               }
               return this.§---_--__§(param1);
            }
         }
         return new §-_----__§(param1);
      }
      
      public function §-_-_-_--§(param1:Function) : §-_----__§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            §§push(this.§---__-__§);
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
               return this.§--_-____§;
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
               if(param1 != this.§-_____-§.listener)
               {
                  var _loc2_:§-_----__§ = new §-_----__§(this.§-_____-§);
                  var _loc3_:§-_----__§ = _loc2_;
                  var _loc4_:§-_----__§ = this.§--_-____§;
                  if(_loc7_)
                  {
                     while(_loc4_.§---__-__§)
                     {
                        if(_loc4_.§-_____-§.listener == param1)
                        {
                           if(_loc7_)
                           {
                              _loc3_.§--_-____§ = _loc4_.§--_-____§;
                           }
                           return _loc2_;
                        }
                        _loc3_ = _loc3_.§--_-____§ = new §-_----__§(_loc4_.§-_____-§);
                        _loc4_ = _loc4_.§--_-____§;
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
            §§push(this.§---__-__§);
            if(_loc4_)
            {
               if(§§pop())
               {
                  var _loc2_:§-_----__§ = this;
                  if(_loc4_)
                  {
                     while(true)
                     {
                        §§push(_loc2_.§---__-__§);
                        if(!_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_.§-_____-§.listener == param1)
                              {
                                 return true;
                              }
                              _loc2_ = _loc2_.§--_-____§;
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
      
      public function §-_-_-_-§(param1:Function) : §--__-___§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(this.§---__-__§)
            {
               var _loc2_:§-_----__§ = this;
               if(!_loc3_)
               {
                  while(_loc2_.§---__-__§)
                  {
                     if(_loc2_.§-_____-§.listener == param1)
                     {
                        return _loc2_.§-_____-§;
                     }
                     _loc2_ = _loc2_.§--_-____§;
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
         var _loc2_:§-_----__§ = this;
         if(_loc4_)
         {
            while(_loc2_.§---__-__§)
            {
               §§push(_loc1_);
               if(_loc4_)
               {
                  §§push(§§pop() + (_loc2_.§-_____-§ + " -> "));
               }
               _loc1_ = §§pop();
               _loc2_ = _loc2_.§--_-____§;
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
