package budo
{
   import flash.net.LocalConnection;
   import flash.utils.ByteArray;
   import kyt.Bulahonu;
   
   public class Kojylu implements Hicesukov
   {
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
      }
      
      protected var gyfymo:Bulahonu;
      
      public function Kojylu()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public function set hash(param1:Bulahonu) : void
      {
         this.gyfymo = param1;
      }
      
      public function lofanyb(param1:ByteArray) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
      }
      
      public function wuhijoq() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
      }
      
      public function gc() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         try
         {
            new LocalConnection().connect("foo");
            if(!_loc2_)
            {
               new LocalConnection().connect("foo");
            }
            return;
         }
         catch(e:*)
         {
            return;
         }
      }
      
      protected function figuqikac(param1:Vector.<uint>) : ByteArray
      {
         var _loc6_:Boolean = true;
         §§push(0);
         if(!_loc6_)
         {
            §§push(§§pop() * 1 - 1 - 88 - 1);
         }
         §§push(0);
         if(!_loc6_)
         {
            §§push(-((-§§pop() - 7) * 0) * 20);
         }
         var _loc3_:* = uint(§§pop());
         if(_loc6_)
         {
            while(_loc3_ < param1.length)
            {
               if(!_loc6_)
               {
                  addr73:
                  while(true)
                  {
                     _loc2_.writeByte(_loc4_);
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                        }
                        addr124:
                        §§push(_loc3_);
                        addr129:
                        if(!_loc5_)
                        {
                           addr127:
                           §§push(uint(§§pop() + 1));
                        }
                        _loc3_ = §§pop();
                        break;
                     }
                     break;
                  }
                  if(_loc6_)
                  {
                  }
                  continue;
               }
               while(true)
               {
                  §§push(param1[_loc3_]);
                  if(!_loc5_)
                  {
                     §§push(uint(§§pop()));
                     if(_loc6_)
                     {
                        if(_loc6_)
                        {
                           if(!_loc5_)
                           {
                              §§goto(addr73);
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr130);
                     }
                     §§goto(addr129);
                  }
                  break;
               }
               §§goto(addr127);
            }
         }
         return _loc2_;
      }
      
      protected function bona(param1:ByteArray) : Vector.<uint>
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(-§§pop() * 17 - 1 - 53 + 88 + 1 - 1);
         }
         if(_loc6_)
         {
            §§push(param1);
            §§push(0);
            if(!_loc6_)
            {
               §§push(-((§§pop() - 1) * 82 + 1 + 60 - 77 - 45));
            }
            §§pop().position = §§pop();
            if(!_loc5_)
            {
               loop0:
               while(param1.position < _loc3_)
               {
                  if(!_loc6_)
                  {
                     loop1:
                     while(true)
                     {
                        _loc2_.push(_loc4_);
                        if(!_loc5_)
                        {
                           if(_loc6_)
                           {
                              continue loop0;
                           }
                        }
                        addr121:
                        while(true)
                        {
                           if(_loc5_)
                           {
                              break loop1;
                           }
                           continue loop1;
                        }
                     }
                     continue;
                  }
                  while(true)
                  {
                     §§goto(addr121);
                  }
               }
            }
         }
         if(!_loc5_)
         {
         }
         return _loc2_;
      }
      
      public function kemazel(param1:ByteArray, param2:int) : ByteArray
      {
         §§push(0);
         if(!_loc6_)
         {
            §§push(-(§§pop() + 40) + 1 + 54 - 32 + 88 - 1);
         }
         var _loc5_:* = §§pop();
         if(!_loc7_)
         {
            if(this.gyfymo == null)
            {
               return param1;
            }
         }
         if(_loc6_)
         {
            if(param2 < _loc3_.length)
            {
            }
            addr160:
            return _loc3_;
         }
         _loc4_.length = param2;
         if(!_loc7_)
         {
            §§push(0);
            if(!_loc6_)
            {
               §§push(§§pop() + 1 + 1 - 1 + 1 - 1 + 96);
            }
            if(!_loc7_)
            {
               _loc5_ = §§pop();
               if(!_loc7_)
               {
                  addr151:
                  while(true)
                  {
                  }
               }
            }
            while(§§pop() < _loc4_.length)
            {
               if(!_loc6_)
               {
                  loop2:
                  while(true)
                  {
                     _loc5_++;
                     if(!_loc7_)
                     {
                        if(!_loc7_)
                        {
                        }
                        §§goto(addr151);
                     }
                     addr140:
                     while(true)
                     {
                        if(_loc7_)
                        {
                           break loop2;
                        }
                        continue loop2;
                     }
                     §§goto(addr151);
                  }
                  §§goto(addr151);
               }
               while(true)
               {
                  _loc4_[_loc5_] = _loc3_[_loc5_];
                  §§goto(addr140);
               }
            }
         }
         if(!_loc7_)
         {
         }
         §§goto(addr160);
      }
   }
}
