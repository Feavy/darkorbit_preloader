package net.bigpoint.darkorbit.preloader
{
   import §---____-§.§--_----§;
   import §---____-§.§-_---_--§;
   import §---____-§.§-_-___§;
   import flash.display.Sprite;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.sampler.getSampleCount;
   import flash.system.Security;
   import flash.text.Font;
   import flash.ui.ContextMenu;
   import flash.ui.ContextMenuItem;
   import flash.utils.ByteArray;
   import net.bigpoint.darkorbit.§-__-_---§;
   import net.bigpoint.darkorbit.preloader.error.GlobalErrorHandlerBpEventStream;
   
   public dynamic class §-_------§ extends Sprite
   {
      
      private static var §-__--_§:Class;
      
      private static const §-____§:String = "6095";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §-__--_§ = §-__--__§;
            if(_loc2_)
            {
            }
            addr28:
            return;
         }
         §§goto(addr28);
      }
      
      private var §--_-§:GlobalErrorHandlerBpEventStream;
      
      private var §-------_§:Object;
      
      private var §-_--__§:String;
      
      private var §-____---_§:§-_---_--§;
      
      private var §--____-§:§-_-___§;
      
      private var §----___-§:§--_----§;
      
      private const §--_--__§:ByteArray;
      
      public function §-_------§()
      {
         if(!_loc2_)
         {
            this.§--_--__§ = new ByteArray();
            if(_loc3_)
            {
               if(!_loc2_)
               {
               }
               super();
               if(!_loc2_)
               {
                  if(!_loc3_)
                  {
                     addr54:
                     while(true)
                     {
                        this.§--_--__§.writeUTF(name);
                        if(!_loc3_)
                        {
                        }
                        break;
                     }
                     addr140:
                     if(!_loc3_)
                     {
                        addr161:
                        while(true)
                        {
                           §-__-_---§.§-____----§("flash_preloader_construct",{
                              "bytes":loaderInfo.bytes.length,
                              "name":name,
                              "stageWidth":stage.stageWidth,
                              "stageHeight":stage.stageHeight,
                              "counter":getSampleCount()
                           });
                           if(_loc3_)
                           {
                              addr183:
                              while(!_loc3_)
                              {
                              }
                              Font.registerFont(§-__--_§);
                              break;
                           }
                           break;
                        }
                        if(!_loc2_)
                        {
                        }
                        if(_loc3_)
                        {
                           _loc1_.hideBuiltInItems();
                           if(_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 addr237:
                                 while(true)
                                 {
                                    _loc1_.customItems.push(new ContextMenuItem("Build " + §-____§));
                                    if(_loc3_)
                                    {
                                       if(!_loc2_)
                                       {
                                       }
                                       addr277:
                                       contextMenu = _loc1_;
                                       if(_loc3_)
                                       {
                                          break;
                                       }
                                    }
                                    break;
                                 }
                                 if(!_loc2_)
                                 {
                                 }
                                 if(name == "root1")
                                 {
                                    if(!_loc3_)
                                    {
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc1_.builtInItems.quality = true;
                                 if(_loc3_)
                                 {
                                    if(_loc3_)
                                    {
                                       §§goto(addr237);
                                    }
                                    §§goto(addr277);
                                 }
                                 §§goto(addr292);
                              }
                           }
                           addr317:
                           return;
                        }
                        if(_loc3_)
                        {
                        }
                        addEventListener(Event.ADDED_TO_STAGE,this.§-_-_----§);
                        §§goto(addr317);
                     }
                     while(true)
                     {
                        this.§--_--__§.compress();
                        if(_loc3_)
                        {
                           addr200:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr161);
                              }
                              §§goto(addr211);
                           }
                        }
                        §§goto(addr214);
                        §§goto(addr140);
                     }
                  }
                  addr72:
                  while(true)
                  {
                     this.§--_--__§.writeInt(loaderInfo.bytes.length);
                     if(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr54);
                        }
                        addr91:
                        this.§--_--__§.writeUTF(loaderInfo.parameters.pid || "");
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                           }
                           this.§--_--__§.writeUTF(loaderInfo.parameters.sessionID || "");
                           if(_loc3_)
                           {
                              this.§--_--__§.writeUTF(loaderInfo.parameters.userID || "");
                              if(!_loc3_)
                              {
                              }
                           }
                           §§goto(addr183);
                        }
                        §§goto(addr214);
                     }
                     break;
                  }
                  §§goto(addr200);
               }
               while(!_loc3_)
               {
                  §§goto(addr72);
               }
               §§goto(addr91);
            }
         }
         this.§--_--__§.writeDouble(Math.random());
         if(!_loc2_)
         {
            §§goto(addr140);
         }
         §§goto(addr183);
      }
      
      public function getData() : *
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§--_--__§.uncompress();
         }
         var _loc1_:ByteArray = new ByteArray();
         if(_loc2_)
         {
            _loc1_.writeBytes(this.§--_--__§);
            if(!_loc2_)
            {
            }
            addr50:
            return _loc1_;
         }
         this.§--_--__§.compress();
         §§goto(addr50);
      }
      
      private function §-_-_----§(param1:Event) : void
      {
         if(!_loc3_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.§-_-_----§);
            if(!_loc3_)
            {
               if(_loc3_)
               {
                  addr41:
                  while(true)
                  {
                     stage.align = StageAlign.TOP_LEFT;
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                        }
                        break;
                     }
                  }
                  try
                  {
                     addr85:
                     Security.loadPolicyFile(loaderInfo.parameters.host + "/crossdomain.xml?_cv=" + loaderInfo.parameters.crossdomainHash);
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                        }
                        Security.allowDomain("*");
                     }
                  }
                  catch(e:Error)
                  {
                  }
                  this.start();
                  return;
               }
               while(true)
               {
                  stage.scaleMode = StageScaleMode.NO_SCALE;
               }
            }
         }
         while(true)
         {
            if(_loc4_)
            {
               §§goto(addr41);
            }
            §§goto(addr85);
         }
      }
      
      private function start() : void
      {
         if(!_loc3_)
         {
            this.§-------_§ = loaderInfo.parameters;
         }
         §§push(§-____§);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         if(_loc2_)
         {
            §§push(Boolean(this.§-------_§.gameclientPath));
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     if(_loc2_)
                     {
                        §§push(this.§-------_§.gameclientPath.indexOf("acp"));
                        §§push(-1);
                        if(_loc3_)
                        {
                           §§push(-§§pop() - 48 + 83 + 9 + 28 + 1);
                        }
                        §§push(§§pop() == §§pop());
                        if(_loc2_)
                        {
                           §§push(!§§pop());
                        }
                     }
                     loop0:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        loop6:
                        while(true)
                        {
                           this.§--____-§.ready.§-__--_-_§(this.§-___-__§);
                           if(!_loc3_)
                           {
                              if(!_loc3_)
                              {
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          this.§--____-§ = new §-_-___§();
                                          if(_loc3_)
                                          {
                                             continue loop6;
                                          }
                                       }
                                    }
                                    addr216:
                                    while(true)
                                    {
                                       this.§--____-§.load(this.§-------_§,this.§-_--__§);
                                       if(!_loc2_)
                                       {
                                       }
                                       addr272:
                                       if(_loc2_)
                                       {
                                       }
                                       return;
                                    }
                                    this.§-______§();
                                    if(_loc2_)
                                    {
                                       §§goto(addr166);
                                    }
                                    else
                                    {
                                       continue;
                                    }
                                 }
                              }
                           }
                           addr226:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 addr237:
                                 while(true)
                                 {
                                    this.§--_-§.addSource(this.§--____-§.§-_---__§.uncaughtErrorEvents);
                                    if(!_loc3_)
                                    {
                                       continue loop0;
                                    }
                                    §§goto(addr272);
                                 }
                              }
                              else
                              {
                                 break loop0;
                              }
                           }
                        }
                     }
                     addChild(this.§--____-§);
                     §§goto(addr272);
                  }
               }
            }
            if(§§pop())
            {
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                     if(!_loc2_)
                     {
                        addr90:
                        while(true)
                        {
                           this.§--_-§.addSource(loaderInfo.uncaughtErrorEvents);
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                              }
                              addr128:
                              §§push(this);
                              if(!_loc3_)
                              {
                                 §§push(this.§-------_§.cdn);
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                    }
                                    addr157:
                                    §§pop().§-_--__§ = §§pop();
                                    if(!_loc3_)
                                    {
                                       if(_loc2_)
                                       {
                                       }
                                       §§goto(addr162);
                                    }
                                    §§goto(addr226);
                                 }
                                 §§pop();
                              }
                              §§goto(addr157);
                              §§push(this.§-------_§.host + "/");
                           }
                           break;
                        }
                        §§goto(addr272);
                     }
                  }
                  §§goto(addr166);
               }
               addr117:
               while(true)
               {
                  if(_loc3_)
                  {
                     break;
                  }
                  §§goto(addr90);
               }
               §§goto(addr128);
            }
            while(true)
            {
               this.§--_-§ = new GlobalErrorHandlerBpEventStream(_loc1_);
               if(!_loc3_)
               {
                  §§goto(addr117);
               }
               break;
            }
            §§goto(addr226);
         }
         while(true)
         {
            if(_loc3_)
            {
               §§goto(addr216);
            }
            §§goto(addr237);
         }
      }
      
      private function §-___-__§(param1:String) : void
      {
         if(_loc3_)
         {
            this.§---_-___§();
            if(!_loc2_)
            {
               if(!_loc3_)
               {
                  addr37:
                  while(true)
                  {
                     this.§----___-§.§-____-§.add(this.§--_---_§);
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           if(_loc2_)
                           {
                              addr59:
                              while(true)
                              {
                                 this.§--_-§.addSource(this.§----___-§.§-_-__§.uncaughtErrorEvents);
                                 if(!_loc2_)
                                 {
                                    if(!_loc3_)
                                    {
                                    }
                                    addr96:
                                    while(true)
                                    {
                                       if(_loc3_)
                                       {
                                       }
                                       this.§----___-§ = new §--_----§(this);
                                    }
                                 }
                                 break;
                              }
                           }
                           addr123:
                           this.§----___-§.ready.add(this.§-__§);
                           if(_loc2_)
                           {
                           }
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr123);
                           }
                           else
                           {
                              §§goto(addr59);
                           }
                        }
                     }
                     addr161:
                     if(!_loc2_)
                     {
                     }
                     return;
                  }
               }
               addr93:
               while(true)
               {
                  §-__-_---§.§-____----§("flash_preloader_loadingScreenReady");
                  §§goto(addr96);
               }
            }
            if(_loc3_)
            {
            }
            this.§----___-§.load(this.§-------_§,this.§-_--__§,param1);
            §§goto(addr161);
         }
         while(true)
         {
            if(!_loc3_)
            {
               §§goto(addr93);
            }
            else
            {
               §§goto(addr37);
            }
            §§goto(addr161);
         }
      }
      
      private function §--_---_§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§--____-§.§--_---§ = param1;
         }
      }
      
      private function §-__§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1)
            {
               if(!_loc3_)
               {
                  this.§-_-_-§();
                  if(!_loc2_)
                  {
                  }
               }
            }
            else
            {
               this.§--____-§.startGame.§-__--_-_§(this.§-_-_-§);
               if(!_loc2_)
               {
               }
            }
            addr54:
            return;
         }
         this.§--____-§.gameclientReady();
         §§goto(addr54);
      }
      
      private function §-_-_-§() : void
      {
         if(_loc2_)
         {
            removeChild(this.§--____-§);
            if(!_loc1_)
            {
               if(!_loc2_)
               {
                  addr50:
                  while(true)
                  {
                     this.§----___-§.startGame();
                     if(!_loc1_)
                     {
                        if(_loc2_)
                        {
                        }
                        break;
                     }
                  }
                  return;
               }
               while(true)
               {
                  this.§--____-§.§-______-§();
               }
            }
         }
         while(true)
         {
            if(_loc2_)
            {
               §§goto(addr50);
            }
            §§goto(addr92);
         }
      }
      
      private function §-______§() : void
      {
         if(_loc2_)
         {
            this.§---_-___§();
            if(_loc1_)
            {
            }
            loop0:
            while(true)
            {
               if(_loc2_)
               {
               }
               addChild(this.§-____---_§);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.§-____---_§ = new §-_---_--§(this.§-------_§.loadingClaim as String);
                     loop2:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.§-____---_§.show();
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 continue loop0;
                              }
                              continue loop2;
                           }
                           continue loop1;
                        }
                     }
                     break loop1;
                  }
               }
               return;
            }
         }
         if(_loc1_)
         {
            §§goto(addr36);
         }
         §§goto(addr91);
      }
      
      private function §---_-___§() : void
      {
         if(_loc1_)
         {
            if(this.§-____---_§)
            {
               if(_loc1_)
               {
                  this.§-____---_§.hide();
                  if(!_loc2_)
                  {
                     if(_loc2_)
                     {
                        addr53:
                        while(true)
                        {
                           this.§-____---_§ = null;
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                              }
                              break;
                           }
                        }
                     }
                     while(true)
                     {
                        removeChild(this.§-____---_§);
                     }
                  }
               }
            }
            addr95:
            return;
         }
         while(true)
         {
            if(_loc1_)
            {
               §§goto(addr53);
            }
            §§goto(addr95);
         }
      }
   }
}
