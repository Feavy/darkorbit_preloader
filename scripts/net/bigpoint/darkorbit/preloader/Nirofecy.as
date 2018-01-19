package net.bigpoint.darkorbit.preloader
{
   import bycu.Domohi;
   import bycu.Ruharo;
   import bycu.Waqacyja;
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
   import net.bigpoint.darkorbit.Tegos;
   import net.bigpoint.darkorbit.preloader.error.GlobalErrorHandlerBpEventStream;
   
   public dynamic class Nirofecy extends Sprite
   {
      
      private static var myc:Class;
      
      private static const qaqon:String = "6095";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            myc = Qubecyf;
            if(_loc2_)
            {
            }
            addr28:
            return;
         }
         §§goto(addr28);
      }
      
      private var jedikinus:GlobalErrorHandlerBpEventStream;
      
      private var goryh:Object;
      
      private var corapawur:String;
      
      private var kumu:Waqacyja;
      
      private var fidebaqel:Ruharo;
      
      private var vemevu:Domohi;
      
      private const kikufe:ByteArray;
      
      public function Nirofecy()
      {
         if(!_loc2_)
         {
            this.kikufe = new ByteArray();
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
                        this.kikufe.writeUTF(name);
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
                           Tegos.gamiwyki("flash_preloader_construct",{
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
                              Font.registerFont(myc);
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
                                    _loc1_.customItems.push(new ContextMenuItem("Build " + qaqon));
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
                        addEventListener(Event.ADDED_TO_STAGE,this.secizuhez);
                        §§goto(addr317);
                     }
                     while(true)
                     {
                        this.kikufe.compress();
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
                     this.kikufe.writeInt(loaderInfo.bytes.length);
                     if(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           §§goto(addr54);
                        }
                        addr91:
                        this.kikufe.writeUTF(loaderInfo.parameters.pid || "");
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                           }
                           this.kikufe.writeUTF(loaderInfo.parameters.sessionID || "");
                           if(_loc3_)
                           {
                              this.kikufe.writeUTF(loaderInfo.parameters.userID || "");
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
         this.kikufe.writeDouble(Math.random());
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
            this.kikufe.uncompress();
         }
         var _loc1_:ByteArray = new ByteArray();
         if(_loc2_)
         {
            _loc1_.writeBytes(this.kikufe);
            if(!_loc2_)
            {
            }
            addr50:
            return _loc1_;
         }
         this.kikufe.compress();
         §§goto(addr50);
      }
      
      private function secizuhez(param1:Event) : void
      {
         if(!_loc3_)
         {
            removeEventListener(Event.ADDED_TO_STAGE,this.secizuhez);
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
                        Security.allowDomain("hojyv");
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
            this.goryh = loaderInfo.parameters;
         }
         §§push(qaqon);
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         if(_loc2_)
         {
            §§push(Boolean(this.goryh.gameclientPath));
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     §§pop();
                     if(_loc2_)
                     {
                        §§push(this.goryh.gameclientPath.indexOf("acp"));
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
                           this.fidebaqel.ready.qanivami(this.bukoh);
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
                                          this.fidebaqel = new Ruharo();
                                          if(_loc3_)
                                          {
                                             continue loop6;
                                          }
                                       }
                                    }
                                    addr216:
                                    while(true)
                                    {
                                       this.fidebaqel.load(this.goryh,this.corapawur);
                                       if(!_loc2_)
                                       {
                                       }
                                       addr272:
                                       if(_loc2_)
                                       {
                                       }
                                       return;
                                    }
                                    this.hafojun();
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
                                    this.jedikinus.addSource(this.fidebaqel.bunyriw.uncaughtErrorEvents);
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
                     addChild(this.fidebaqel);
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
                           this.jedikinus.addSource(loaderInfo.uncaughtErrorEvents);
                           if(_loc2_)
                           {
                              if(!_loc3_)
                              {
                              }
                              addr128:
                              §§push(this);
                              if(!_loc3_)
                              {
                                 §§push(this.goryh.cdn);
                                 if(!_loc3_)
                                 {
                                    if(§§pop())
                                    {
                                    }
                                    addr157:
                                    §§pop().corapawur = §§pop();
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
                              §§push(this.goryh.host + "/");
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
               this.jedikinus = new GlobalErrorHandlerBpEventStream(_loc1_);
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
      
      private function bukoh(param1:String) : void
      {
         if(_loc3_)
         {
            this.qulero();
            if(!_loc2_)
            {
               if(!_loc3_)
               {
                  addr37:
                  while(true)
                  {
                     this.vemevu.lycokuto.add(this.buti);
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           if(_loc2_)
                           {
                              addr59:
                              while(true)
                              {
                                 this.jedikinus.addSource(this.vemevu.culydep.uncaughtErrorEvents);
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
                                       this.vemevu = new Domohi(this);
                                    }
                                 }
                                 break;
                              }
                           }
                           addr123:
                           this.vemevu.ready.add(this.fumubiqob);
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
                  Tegos.gamiwyki("flash_preloader_loadingScreenReady");
                  §§goto(addr96);
               }
            }
            if(_loc3_)
            {
            }
            this.vemevu.load(this.goryh,this.corapawur,param1);
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
      
      private function buti(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.fidebaqel.cej = param1;
         }
      }
      
      private function fumubiqob(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1)
            {
               if(!_loc3_)
               {
                  this.syvylaqu();
                  if(!_loc2_)
                  {
                  }
               }
            }
            else
            {
               this.fidebaqel.startGame.qanivami(this.syvylaqu);
               if(!_loc2_)
               {
               }
            }
            addr54:
            return;
         }
         this.fidebaqel.gameclientReady();
         §§goto(addr54);
      }
      
      private function syvylaqu() : void
      {
         if(_loc2_)
         {
            removeChild(this.fidebaqel);
            if(!_loc1_)
            {
               if(!_loc2_)
               {
                  addr50:
                  while(true)
                  {
                     this.vemevu.startGame();
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
                  this.fidebaqel.qigefit();
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
      
      private function hafojun() : void
      {
         if(_loc2_)
         {
            this.qulero();
            if(_loc1_)
            {
            }
            loop0:
            while(true)
            {
               if(_loc2_)
               {
               }
               addChild(this.kumu);
               loop1:
               while(!_loc2_)
               {
                  while(true)
                  {
                     this.kumu = new Waqacyja(this.goryh.loadingClaim as String);
                     loop2:
                     while(_loc2_)
                     {
                        while(true)
                        {
                           this.kumu.show();
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
      
      private function qulero() : void
      {
         if(_loc1_)
         {
            if(this.kumu)
            {
               if(_loc1_)
               {
                  this.kumu.hide();
                  if(!_loc2_)
                  {
                     if(_loc2_)
                     {
                        addr53:
                        while(true)
                        {
                           this.kumu = null;
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
                        removeChild(this.kumu);
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
