package §-___--_§
{
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §-__-_-__§
   {
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
      }
      
      public var §--_-__--§:int = 40;
      
      public function §-__-_-__§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      public function §------_§() : uint
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(64);
         if(_loc1_)
         {
            return (§§pop() - 100 + 86) * 97;
         }
      }
      
      public function §--_-_--_§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(0);
         if(_loc2_)
         {
            return (-(§§pop() + 1) + 16 - 107) * 94 + 1 - 9;
         }
      }
      
      public function §---___§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         return this.§--_-__--§;
      }
      
      public function hash(param1:ByteArray) : ByteArray
      {
         if(!_loc11_)
         {
            param1.endian = Endian.BIG_ENDIAN;
         }
         §§push(_loc2_);
         if(!_loc11_)
         {
            §§push(8);
            if(!_loc10_)
            {
               §§push(-((§§pop() - 98) * 7));
            }
            §§push(uint(§§pop() * §§pop()));
         }
         var _loc4_:* = §§pop();
         if(!_loc11_)
         {
            while(true)
            {
               §§push(param1.length);
               §§push(4);
               if(!_loc10_)
               {
                  §§push(§§pop() + 1 + 1 - 24 + 13 + 26);
               }
               §§push(§§pop() % §§pop());
               §§push(0);
               if(!_loc10_)
               {
                  §§push((§§pop() - 1) * 102 - 1);
               }
               if(§§pop() == §§pop())
               {
                  break;
               }
               §§push(param1);
               §§push(param1.length);
               §§push(0);
               if(_loc11_)
               {
                  §§push(-(§§pop() + 1) + 1 + 46);
               }
               §§pop()[§§pop()] = §§pop();
            }
            if(!_loc10_)
            {
            }
            §§push([]);
            if(_loc10_)
            {
               §§push(§§pop());
            }
            var _loc5_:* = §§pop();
            §§push(0);
            if(_loc11_)
            {
               §§push(-((-(§§pop() * 43) + 1) * 42 - 43 - 1));
            }
            var _loc6_:* = uint(§§pop());
            if(!_loc11_)
            {
               while(_loc6_ < param1.length)
               {
                  _loc5_.push(param1.readUnsignedInt());
                  if(_loc10_)
                  {
                     §§push(_loc6_);
                     if(_loc10_)
                     {
                        §§push(4);
                        if(_loc11_)
                        {
                           §§push((§§pop() + 1 + 5 - 43) * 23 + 1);
                        }
                        §§push(uint(§§pop() + §§pop()));
                     }
                     _loc6_ = §§pop();
                  }
               }
            }
            §§push(this.core(_loc5_,_loc4_));
            if(!_loc11_)
            {
               §§push(§§pop());
            }
            var _loc7_:* = §§pop();
            §§push(this.§--_-_--_§());
            if(!_loc11_)
            {
               §§push(4);
               if(_loc11_)
               {
                  §§push(--(§§pop() - 48) * 40 - 47 + 27 + 1);
               }
               §§push(uint(§§pop() / §§pop()));
            }
            if(!_loc11_)
            {
               §§push(0);
               if(!_loc10_)
               {
                  §§push(-(§§pop() + 119 + 108 - 1));
               }
               §§push(uint(§§pop()));
               if(!_loc11_)
               {
                  _loc6_ = §§pop();
                  if(!_loc11_)
                  {
                     addr280:
                     while(true)
                     {
                     }
                  }
                  addr286:
                  if(_loc10_)
                  {
                  }
                  param1.length = _loc2_;
                  addr296:
                  if(_loc11_)
                  {
                  }
                  return _loc8_;
               }
               while(§§pop() < _loc9_)
               {
                  if(!_loc10_)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(_loc6_);
                        if(!_loc11_)
                        {
                           §§push(uint(§§pop() + 1));
                        }
                        _loc6_ = §§pop();
                        if(!_loc11_)
                        {
                           if(!_loc11_)
                           {
                           }
                           §§goto(addr280);
                        }
                        addr269:
                        while(true)
                        {
                           if(_loc11_)
                           {
                              break loop4;
                           }
                           continue loop4;
                        }
                        §§goto(addr280);
                     }
                     §§goto(addr280);
                  }
                  while(true)
                  {
                     _loc8_.writeUnsignedInt(_loc7_[_loc6_]);
                     §§goto(addr269);
                  }
               }
               if(_loc10_)
               {
                  §§goto(addr286);
               }
            }
            param1.endian = _loc3_;
            §§goto(addr296);
         }
         §§push(param1);
         §§push(0);
         if(_loc11_)
         {
            §§push(-((§§pop() * 54 + 46 + 31 + 1) * 89 - 1));
         }
         §§pop().position = §§pop();
         §§goto(addr104);
      }
      
      protected function core(param1:Array, param2:uint) : Array
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         return null;
      }
   }
}
