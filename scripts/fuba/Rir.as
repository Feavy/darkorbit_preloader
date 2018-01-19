package fuba
{
   import flash.errors.IllegalOperationError;
   import flash.utils.getQualifiedClassName;
   
   public class Rir implements Tacijalic
   {
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
      }
      
      protected var nydubonap:Array;
      
      protected var jehe:Fyg;
      
      public function Rir(... rest)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.jehe = Fyg.NIL;
            if(!_loc3_)
            {
               super();
               if(_loc3_)
               {
               }
            }
            §§push(this);
            if(_loc2_)
            {
               §§push(rest);
               if(!_loc3_)
               {
                  §§push(§§pop().length);
                  §§push(1);
                  if(_loc3_)
                  {
                     §§push(-(§§pop() + 1 - 1));
                  }
                  §§push(§§pop() == §§pop());
                  if(!_loc3_)
                  {
                     if(§§pop())
                     {
                        if(!_loc3_)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                           }
                           addr102:
                           §§push(rest);
                           addr120:
                           if(_loc3_)
                           {
                           }
                           §§pop().valueClasses = §§pop();
                        }
                     }
                  }
                  addr101:
                  if(§§pop())
                  {
                     §§goto(addr102);
                  }
                  else
                  {
                     §§push(rest);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                     }
                  }
                  §§goto(addr120);
               }
               addr106:
               §§push(0);
               if(!_loc2_)
               {
                  §§push(-(§§pop() - 67 - 1));
               }
               addr113:
               §§goto(addr120);
               §§push(§§pop()[§§pop()]);
            }
            §§push(rest);
            if(!_loc3_)
            {
               §§push(0);
               if(_loc3_)
               {
                  §§push(-(-§§pop() + 107 + 88 - 1) - 1 - 13);
               }
               if(_loc2_)
               {
                  §§goto(addr101);
                  §§push(§§pop()[§§pop()] is Array);
               }
               §§goto(addr113);
            }
            §§goto(addr106);
         }
      }
      
      public function get valueClasses() : Array
      {
         return this.nydubonap;
      }
      
      public function set valueClasses(param1:Array) : void
      {
         this.nydubonap = !!param1?param1.slice():[];
         var _loc2_:int = this.nydubonap.length;
         while(_loc2_--)
         {
            if(!(this.nydubonap[_loc2_] is Class))
            {
               throw new ArgumentError("Invalid valueClasses argument: " + "item at index " + _loc2_ + " should be a Class but was:<" + this.nydubonap[_loc2_] + ">." + getQualifiedClassName(this.nydubonap[_loc2_]));
            }
         }
      }
      
      public function get numListeners() : uint
      {
         return this.jehe.length;
      }
      
      public function mabuvej(param1:Function) : Fuherih
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         return this.hac(param1,true);
      }
      
      public function remove(param1:Function) : Fuherih
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Fuherih = this.jehe.dyqepyvi(param1);
         if(!_loc4_)
         {
            if(!_loc2_)
            {
               if(!_loc3_)
               {
               }
            }
            else
            {
               this.jehe = this.jehe.suji(param1);
            }
            return _loc2_;
         }
         return null;
      }
      
      public function qamuv() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.jehe = Fyg.NIL;
         }
      }
      
      public function wemocy(... rest) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:int = this.nydubonap.length;
         var _loc3_:int = rest.length;
         if(_loc6_)
         {
            §§push(_loc3_);
            if(!_loc7_)
            {
               if(§§pop() < _loc2_)
               {
                  if(!_loc6_)
                  {
                  }
               }
               §§push(0);
               if(!_loc6_)
               {
                  §§push(-(§§pop() + 1 + 51 - 1));
               }
            }
            var _loc4_:* = §§pop();
            if(_loc6_)
            {
               while(true)
               {
                  if(_loc4_ < _loc2_)
                  {
                     §§push(rest);
                     if(_loc6_)
                     {
                        §§push(_loc4_);
                        if(_loc6_)
                        {
                           §§push(§§pop()[§§pop()] is this.nydubonap[_loc4_]);
                           if(!_loc7_)
                           {
                              if(!§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    §§pop();
                                    if(_loc6_)
                                    {
                                       §§push(rest);
                                    }
                                    addr104:
                                    _loc4_++;
                                    continue;
                                 }
                              }
                           }
                           addr101:
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§goto(addr104);
                              }
                              else
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              break;
                           }
                        }
                        addr98:
                        §§goto(addr101);
                        §§push(§§pop()[§§pop()] === null);
                     }
                     §§goto(addr98);
                     §§push(_loc4_);
                  }
               }
               throw new ArgumentError("Value object <" + rest[_loc4_] + "> is not an instance of <" + this.nydubonap[_loc4_] + ">.");
            }
            var _loc5_:Fyg = this.jehe;
            §§push(_loc5_.garilaqy);
            if(!_loc7_)
            {
               if(§§pop())
               {
                  if(_loc6_)
                  {
                     addr160:
                     while(true)
                     {
                     }
                  }
               }
               addr163:
               return;
            }
            while(§§pop())
            {
               _loc5_.rukihyq.cybupywy(rest);
               _loc5_ = _loc5_.zymac;
               §§goto(addr160);
            }
            §§goto(addr163);
         }
         throw new ArgumentError("Incorrect number of arguments. " + "Expected at least " + _loc2_ + " but received " + _loc3_ + ".");
      }
      
      protected function hac(param1:Function, param2:Boolean = false) : Fuherih
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            if(!this.coqicusu(param1,param2))
            {
            }
            addr100:
            return this.jehe.dyqepyvi(param1);
         }
         if(!_loc5_)
         {
            if(!_loc5_)
            {
               this.jehe = this.jehe.mepa(_loc3_);
            }
            addr59:
            return _loc3_;
         }
         if(_loc5_)
         {
            §§goto(addr100);
         }
         else
         {
            §§goto(addr59);
         }
      }
      
      protected function coqicusu(param1:Function, param2:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            §§push(this.jehe.garilaqy);
            if(_loc5_)
            {
               if(§§pop())
               {
                  var _loc3_:Fuherih = this.jehe.dyqepyvi(param1);
                  if(_loc5_)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_)
                        {
                        }
                        addr82:
                        return false;
                     }
                     else
                     {
                        §§push(_loc3_.once);
                        if(!_loc4_)
                        {
                           addr74:
                           if(§§pop() != param2)
                           {
                              if(!_loc4_)
                              {
                                 throw new IllegalOperationError("You cannot addOnce() then add() the same listener without removing the relationship first.");
                              }
                           }
                           §§goto(addr82);
                        }
                     }
                     return §§pop();
                  }
                  §§push(true);
                  if(_loc5_)
                  {
                     return §§pop();
                  }
                  §§goto(addr74);
               }
            }
            addr40:
            return §§pop();
         }
         §§goto(addr40);
      }
   }
}
