package net.bigpoint.as3toolbox.filecollection.vo
{
   import flash.utils.ByteArray;
   import qomowyre.Gukyn;
   
   public class FileVO
   {
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
      }
      
      public var id:String;
      
      public var location:LocationVO;
      
      public var name:String;
      
      public var type:String;
      
      public var loaded:Boolean;
      
      private var _data;
      
      public var fileNode:XML;
      
      public var params:Object;
      
      public var numTries:int = 0;
      
      public var callbackComplete:Vector.<Function>;
      
      public var callbackError:Vector.<Function>;
      
      public var cdnHash:String;
      
      public var fileHash:String;
      
      public var size:uint;
      
      public function FileVO(param1:String, param2:LocationVO, param3:String, param4:String, param5:String, param6:XML)
      {
         if(!_loc7_)
         {
            super();
            if(_loc7_)
            {
            }
            while(true)
            {
               if(!_loc8_)
               {
                  loop5:
                  while(true)
                  {
                     this.id = param1;
                     addr125:
                     loop6:
                     while(true)
                     {
                        if(_loc7_)
                        {
                           addr136:
                           while(true)
                           {
                              this.loaded = false;
                              break loop6;
                           }
                           return;
                        }
                        addr100:
                        this.location = param2;
                     }
                     while(true)
                     {
                        if(_loc7_)
                        {
                           addr161:
                           while(true)
                           {
                              this.initCollections();
                              addr163:
                              while(true)
                              {
                                 if(_loc8_)
                                 {
                                    §§goto(addr136);
                                 }
                                 §§goto(addr165);
                              }
                           }
                        }
                        else
                        {
                           continue loop5;
                        }
                     }
                  }
               }
               else
               {
                  loop1:
                  while(true)
                  {
                     this.name = param3;
                     loop2:
                     while(true)
                     {
                        if(_loc7_)
                        {
                           §§goto(addr100);
                        }
                        else
                        {
                           loop3:
                           while(true)
                           {
                              this.type = param4;
                              loop4:
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    if(_loc8_)
                                    {
                                       if(!_loc8_)
                                       {
                                          continue loop1;
                                       }
                                       addr37:
                                       while(true)
                                       {
                                          this.extractParams(param6);
                                          if(!_loc7_)
                                          {
                                             if(!_loc7_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   continue loop3;
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr163);
                                             }
                                             §§goto(addr174);
                                          }
                                          else
                                          {
                                             continue loop4;
                                          }
                                       }
                                    }
                                    break;
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  if(!_loc7_)
                  {
                     if(!_loc7_)
                     {
                        break;
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr125);
               }
            }
         }
         if(_loc7_)
         {
            §§goto(addr37);
         }
         §§goto(addr161);
      }
      
      public function getFileName(param1:Boolean = false) : String
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.location.path);
         if(_loc3_)
         {
            §§push(§§pop() + this.name + ".");
            if(!_loc4_)
            {
               §§push(§§pop() + this.type);
            }
            §§push(§§pop());
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc3_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc3_)
               {
               }
               addr85:
               if(!§§pop())
               {
                  if(_loc3_)
                  {
                     addr89:
                     §§push(_loc2_);
                     addr105:
                     if(_loc3_)
                     {
                        addr93:
                        §§push("?__cv=");
                        if(_loc3_)
                        {
                           §§push(§§pop() + this.cdnHash);
                        }
                        §§push(§§pop() + §§pop());
                        if(_loc3_)
                        {
                           _loc2_ = §§pop();
                        }
                     }
                     return §§pop();
                  }
               }
            }
            if(§§pop())
            {
               if(!_loc4_)
               {
                  §§pop();
                  if(!_loc4_)
                  {
                     §§push(this.cdnHash);
                     if(!_loc4_)
                     {
                        §§push(§§pop() == null);
                        if(_loc3_)
                        {
                           §§goto(addr85);
                        }
                     }
                     §§goto(addr93);
                  }
                  §§goto(addr89);
               }
            }
            §§goto(addr85);
         }
         §§goto(addr105);
      }
      
      private function initCollections() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.callbackComplete = new Vector.<Function>();
            if(_loc1_)
            {
               this.callbackError = new Vector.<Function>();
            }
         }
      }
      
      private function extractParams(param1:XML) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:XML = null;
         if(_loc5_)
         {
            this.params = new Object();
            if(!_loc6_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§push(-(-§§pop() - 112 - 53) - 113);
               }
               if(_loc5_)
               {
                  if(!_loc6_)
                  {
                     for each(_loc2_ in param1.param)
                     {
                        if(_loc5_)
                        {
                           this.params[String(_loc2_.@name)] = String(_loc2_.@value);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function setData(param1:*, param2:uint, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this._data = param1;
            if(_loc4_)
            {
               this.size = param2;
               if(!_loc4_)
               {
               }
               addr74:
               §§push(this);
               §§push(this.fileHash);
               §§push(0);
               if(!_loc4_)
               {
                  §§push(-((§§pop() + 18) * 15 - 14));
               }
               §§push(this.fileHash.length);
               §§push(2);
               if(!_loc4_)
               {
                  §§push(-§§pop() - 97 - 1);
               }
               addr102:
               §§pop().fileHash = §§pop().substr(§§pop(),§§pop() - §§pop()) + "00";
               return;
            }
            addr55:
            this.fileHash = Gukyn.suzyc(param1 as ByteArray);
            if(_loc4_)
            {
               §§goto(addr74);
            }
            §§goto(addr102);
         }
         §§push(param1 is ByteArray);
         if(_loc4_)
         {
            if(§§pop())
            {
               if(!_loc5_)
               {
                  §§push(param3);
               }
               §§goto(addr74);
            }
            §§goto(addr102);
         }
         if(§§pop())
         {
            if(_loc4_)
            {
               §§goto(addr55);
            }
            §§goto(addr74);
         }
         §§goto(addr102);
      }
      
      public function getData() : *
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         return this._data;
      }
      
      public function disposeData() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this._data = null;
         }
      }
   }
}
