package bycu
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import hafiwu.Fidynemeq;
   import hafiwu.Qysejucis;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.as3toolbox.filecollection.vo.LocationVO;
   import net.bigpoint.darkorbit.Tegos;
   import net.bigpoint.darkorbit.fooskater.embed.dolls.encryption.algorithms.Kyku;
   
   public class Domohi
   {
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
      }
      
      private var werehu:DisplayObjectContainer;
      
      private var dujy:FileCollectionLoader;
      
      private var vemevu:Loader;
      
      private var byjibar:DisplayObject;
      
      private var ceh:DisplayObject;
      
      private var goryh:Object;
      
      private var tenohiza:Fidynemeq;
      
      private var _ready:Fidynemeq;
      
      private var vuqe:String;
      
      public function Domohi(param1:DisplayObjectContainer)
      {
         if(!_loc2_)
         {
            super();
            if(_loc2_)
            {
            }
            loop0:
            while(true)
            {
               if(!_loc3_)
               {
                  loop1:
                  while(true)
                  {
                     this.vemevu.contentLoaderInfo.addEventListener(Event.COMPLETE,this.kalivu);
                     if(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc3_)
                           {
                              addr81:
                              while(true)
                              {
                                 this.vemevu = new Loader();
                                 if(!_loc2_)
                                 {
                                    addr98:
                                    while(true)
                                    {
                                       if(!_loc2_)
                                       {
                                       }
                                       addr148:
                                       while(true)
                                       {
                                          this.vemevu.addEventListener("mx.managers.SystemManager.isBootstrapRoot",this.lys);
                                       }
                                    }
                                 }
                              }
                           }
                           break;
                        }
                        addr164:
                        while(true)
                        {
                           if(!_loc3_)
                           {
                              addr175:
                              while(true)
                              {
                                 this.werehu = param1;
                                 addr178:
                                 while(!_loc2_)
                                 {
                                    while(true)
                                    {
                                       this.tenohiza = new Qysejucis(Number);
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       §§goto(addr98);
                                    }
                                 }
                                 break loop1;
                              }
                           }
                           addr127:
                           while(true)
                           {
                              this.vemevu.addEventListener("mx.managers.SystemManager.isStageRoot",this.lys);
                           }
                        }
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr148);
                           }
                           else
                           {
                              break;
                           }
                        }
                        §§goto(addr178);
                     }
                  }
                  return;
               }
               while(true)
               {
                  this._ready = new Qysejucis(Boolean);
                  if(!_loc2_)
                  {
                     if(!_loc3_)
                     {
                        §§goto(addr127);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr164);
               }
            }
         }
         if(_loc2_)
         {
            §§goto(addr36);
         }
         §§goto(addr175);
      }
      
      public function load(param1:Object, param2:String, param3:String) : void
      {
         if(!_loc7_)
         {
            this.goryh = param1;
            if(_loc8_)
            {
               if(_loc7_)
               {
                  while(true)
                  {
                     this.dujy = new FileCollection.fileLoaderClass();
                     if(!_loc7_)
                     {
                        if(_loc8_)
                        {
                           if(!_loc8_)
                           {
                              addr60:
                              while(true)
                              {
                                 Tegos.gamiwyki("flash_loadingscreen_loadGameClient",{});
                              }
                           }
                           addr136:
                           while(true)
                           {
                              this.dujy.dataFormat = URLLoaderDataFormat.BINARY;
                              if(!_loc8_)
                              {
                              }
                              break;
                           }
                        }
                        while(_loc7_)
                        {
                           while(true)
                           {
                              this.dujy.addEventListener(ProgressEvent.PROGRESS,this.qowe);
                              if(!_loc7_)
                              {
                                 if(!_loc7_)
                                 {
                                    if(!_loc8_)
                                    {
                                    }
                                    addr125:
                                    while(_loc7_)
                                    {
                                       §§goto(addr136);
                                    }
                                    §§goto(addr60);
                                 }
                                 addr111:
                                 while(_loc7_)
                                 {
                                 }
                                 continue;
                              }
                              break;
                           }
                           §§push(this.goryh.resourcesPath);
                           if(!_loc7_)
                           {
                              addr206:
                              §§push(§§pop());
                              if(!_loc7_)
                              {
                                 addr210:
                                 if(!§§pop())
                                 {
                                    if(_loc8_)
                                    {
                                       addr214:
                                       §§pop();
                                       addr215:
                                       §§push(param2);
                                       if(_loc8_)
                                       {
                                          §§push(§§pop() + this.goryh.basePath + "/");
                                       }
                                    }
                                 }
                                 §§push(§§pop());
                              }
                              addr226:
                              if(_loc8_)
                              {
                                 §§push("/");
                                 if(!_loc7_)
                                 {
                                    if(§§pop().lastIndexOf(§§pop()) != _loc4_.length - 1)
                                    {
                                       if(!_loc7_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc8_)
                                          {
                                             §§push("/");
                                          }
                                          addr263:
                                          addr264:
                                          §§pop();
                                          if(!_loc7_)
                                          {
                                             this.dujy.fileVO = new FileVO("",new LocationVO("",""),_loc5_,"swf","",new XML());
                                             if(!_loc7_)
                                             {
                                                if(!_loc8_)
                                                {
                                                   addr302:
                                                   while(true)
                                                   {
                                                      this.dujy.loadFile(true,_loc4_);
                                                      if(!_loc7_)
                                                      {
                                                         if(_loc8_)
                                                         {
                                                         }
                                                         break;
                                                      }
                                                   }
                                                   return;
                                                }
                                                while(true)
                                                {
                                                   this.dujy.fileVO.cdnHash = _loc6_;
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(!_loc7_)
                                             {
                                                §§goto(addr302);
                                             }
                                             §§goto(addr348);
                                          }
                                       }
                                    }
                                    addr251:
                                    §§push(this.goryh.gameclientFilename);
                                    if(!_loc8_)
                                    {
                                    }
                                    §§goto(addr263);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(_loc8_)
                                 {
                                    if(_loc8_)
                                    {
                                       §§goto(addr251);
                                    }
                                    §§goto(addr264);
                                 }
                                 §§goto(addr264);
                              }
                              if(!§§pop())
                              {
                                 if(_loc8_)
                                 {
                                    §§goto(addr263);
                                 }
                                 §§goto(addr264);
                              }
                              §§goto(addr264);
                           }
                           §§goto(addr226);
                           §§push(§§pop());
                        }
                        continue;
                     }
                     while(true)
                     {
                        if(_loc7_)
                        {
                           addr154:
                           if(this.goryh.gameclientPath)
                           {
                              if(!_loc8_)
                              {
                              }
                              §§goto(addr215);
                           }
                           else
                           {
                              §§push(null);
                              if(!_loc7_)
                              {
                                 addr188:
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    if(!§§pop())
                                    {
                                       if(_loc8_)
                                       {
                                          addr195:
                                          §§pop();
                                          if(_loc8_)
                                          {
                                             §§goto(addr199);
                                          }
                                          §§goto(addr215);
                                       }
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr210);
                              }
                           }
                           §§goto(addr214);
                        }
                        else
                        {
                           addr103:
                           while(true)
                           {
                              this.dujy.addEventListener(Event.COMPLETE,this.loj);
                              §§goto(addr111);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  this.vuqe = param3;
                  §§goto(addr125);
               }
            }
            if(!_loc7_)
            {
            }
            §§push(param2);
            if(!_loc7_)
            {
               §§push(§§pop() + this.goryh.gameclientPath);
               if(!_loc7_)
               {
                  §§goto(addr188);
               }
               §§goto(addr195);
            }
            §§goto(addr206);
         }
         while(_loc7_)
         {
            §§goto(addr103);
         }
         §§goto(addr154);
      }
      
      public function startGame() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.ceh["startGame"]();
         }
      }
      
      public function get lycokuto() : Fidynemeq
      {
         return this.tenohiza;
      }
      
      public function get ready() : Fidynemeq
      {
         return this._ready;
      }
      
      private function qowe(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(this.tenohiza);
            §§push(0.3);
            if(!_loc2_)
            {
               §§push(§§pop() * param1.bytesLoaded);
               if(_loc3_)
               {
                  §§push(§§pop() / param1.bytesTotal);
               }
            }
            §§pop().dyserur(§§pop());
         }
      }
      
      private function loj(param1:Event) : void
      {
         if(_loc5_)
         {
            _loc2_.uncompress();
            if(_loc4_)
            {
            }
            loop0:
            while(true)
            {
               if(_loc5_)
               {
                  addr42:
                  while(true)
                  {
                     if(!_loc4_)
                     {
                        if(!_loc5_)
                        {
                           addr61:
                           while(true)
                           {
                              §§push(_loc2_);
                              §§push(0);
                              if(_loc4_)
                              {
                                 §§push(-(-(§§pop() * 36 - 44) * 55) - 35 + 1);
                              }
                              §§pop().position = §§pop();
                              continue loop0;
                           }
                        }
                     }
                     break loop0;
                  }
               }
               §§push(_loc2_);
               §§push(0);
               if(_loc4_)
               {
                  §§push(-(-(§§pop() - 1 + 1 - 77) - 60));
               }
               §§pop().position = §§pop();
               break;
            }
            if(_loc5_)
            {
            }
            if(_loc5_)
            {
               _loc3_.allowCodeImport = true;
               if(_loc4_)
               {
               }
               loop1:
               while(true)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  addr139:
                  while(true)
                  {
                     this.vemevu.loadBytes(_loc2_,_loc3_);
                     if(_loc5_)
                     {
                        if(_loc4_)
                        {
                           addr168:
                           while(true)
                           {
                              _loc3_.parameters = this.goryh;
                              continue loop1;
                           }
                        }
                        else
                        {
                           break loop1;
                        }
                     }
                     else
                     {
                        continue loop1;
                     }
                  }
               }
               return;
            }
            if(_loc4_)
            {
               §§goto(addr139);
            }
            §§goto(addr168);
         }
         if(!_loc5_)
         {
            §§goto(addr42);
         }
         §§goto(addr61);
      }
      
      private function lys(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            param1.preventDefault();
         }
      }
      
      private function kalivu(param1:Event) : void
      {
         if(!_loc2_)
         {
            this.vemevu.removeEventListener("mx.managers.SystemManager.isBootstrapRoot",this.lys);
            if(!_loc2_)
            {
               if(!_loc3_)
               {
                  loop0:
                  while(true)
                  {
                     this.byjibar.addEventListener(ProgressEvent.PROGRESS,this.zubef);
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              if(_loc3_)
                              {
                              }
                              this.byjibar.addEventListener(Event.COMPLETE,this.pezide);
                              if(_loc2_)
                              {
                              }
                           }
                           loop1:
                           while(true)
                           {
                              if(_loc3_)
                              {
                                 addr125:
                                 while(true)
                                 {
                                    this.vemevu = null;
                                 }
                              }
                              addr140:
                              while(true)
                              {
                                 this.vemevu.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.kalivu);
                                 continue loop1;
                              }
                           }
                           while(true)
                           {
                              this.byjibar = param1.target.content as DisplayObject;
                              addr194:
                              while(true)
                              {
                                 if(!_loc3_)
                                 {
                                    break loop0;
                                 }
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr140);
                           }
                           §§goto(addr187);
                        }
                     }
                     addr109:
                     while(true)
                     {
                        if(_loc3_)
                        {
                           if(!_loc2_)
                           {
                              if(_loc2_)
                              {
                                 §§goto(addr125);
                              }
                              addr205:
                              return;
                           }
                        }
                        §§goto(addr194);
                     }
                  }
                  §§goto(addr205);
               }
               while(true)
               {
                  this.vemevu.removeEventListener("mx.managers.SystemManager.isStageRoot",this.lys);
               }
            }
            while(true)
            {
               if(_loc2_)
               {
                  §§goto(addr187);
               }
               §§goto(addr140);
            }
         }
         while(true)
         {
            if(!_loc2_)
            {
            }
            §§push(this.werehu);
            §§push(this.byjibar);
            §§push(0);
            if(_loc2_)
            {
               §§push(-(-(§§pop() - 1) + 1));
            }
            §§pop().addChildAt(§§pop(),§§pop());
            §§goto(addr109);
         }
      }
      
      private function zubef(param1:ProgressEvent) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.tenohiza);
            §§push(0.3);
            if(!_loc3_)
            {
               §§push(0.7);
               if(!_loc3_)
               {
                  §§push(§§pop() * param1.bytesLoaded);
                  if(!_loc2_)
                  {
                  }
                  addr47:
                  §§push(§§pop() + §§pop());
               }
               §§goto(addr47);
               §§push(§§pop() / param1.bytesTotal);
            }
            §§pop().dyserur(§§pop());
         }
      }
      
      private function pezide(param1:Event) : void
      {
         if(!_loc4_)
         {
            this.byjibar.removeEventListener(ProgressEvent.PROGRESS,this.zubef);
            if(!_loc4_)
            {
               this.byjibar.removeEventListener(Event.COMPLETE,this.pezide);
               if(_loc3_)
               {
                  this.ceh = Object(this.byjibar).document as DisplayObject;
                  if(!_loc4_)
                  {
                     §§push(this.ceh["startGame"] is Function);
                     if(_loc3_)
                     {
                        if(§§pop())
                        {
                           if(_loc3_)
                           {
                              Tegos.gamiwyki("flash_loadingscreen_gameClientFullyLoaded",{});
                              if(_loc4_)
                              {
                              }
                           }
                           addr102:
                           while(_loc4_)
                           {
                              while(true)
                              {
                                 §§push(this.ceh["autoStartEnabled"] as Boolean);
                                 if(!_loc3_)
                                 {
                                 }
                                 addr132:
                                 while(true)
                                 {
                                 }
                              }
                           }
                        }
                        else
                        {
                           this.ceh.addEventListener("creationComplete",this.tedyvum);
                        }
                        addr153:
                        return;
                     }
                     while(true)
                     {
                        §§goto(addr132);
                     }
                  }
               }
            }
            loop3:
            while(true)
            {
               if(_loc3_)
               {
                  addr93:
                  while(true)
                  {
                     this._ready.dyserur(_loc2_);
                     if(!_loc4_)
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr102);
                        }
                        else
                        {
                           continue loop3;
                        }
                     }
                     break loop3;
                  }
               }
               §§goto(addr144);
            }
            §§goto(addr153);
         }
         if(_loc4_)
         {
            §§goto(addr93);
         }
         §§goto(addr113);
      }
      
      private function tedyvum(param1:Event) : void
      {
         if(!_loc3_)
         {
            Tegos.gamiwyki("flash_loadingscreen_gameClientFullyLoaded",{});
            if(_loc3_)
            {
            }
            loop0:
            while(!_loc2_)
            {
               while(true)
               {
                  this.ceh.removeEventListener("creationComplete",this.tedyvum);
                  loop1:
                  while(!_loc3_)
                  {
                     while(true)
                     {
                        this._ready.dyserur(this.ceh["autoStartEnabled"] as Boolean);
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  break loop0;
               }
            }
            return;
         }
         if(!_loc2_)
         {
            §§goto(addr49);
         }
         §§goto(addr82);
      }
      
      private function furymoka(param1:ByteArray) : ByteArray
      {
         if(_loc2_)
         {
            §§push(param1);
            §§push(0);
            if(!_loc2_)
            {
               §§push((§§pop() - 1) * 14 + 1 + 1);
            }
            §§pop().position = §§pop();
            if(_loc2_)
            {
               if(!_loc2_)
               {
                  addr53:
                  while(true)
                  {
                     §§push(param1);
                     §§push(0);
                     if(_loc3_)
                     {
                        §§push((§§pop() - 1) * 76 - 1 + 12);
                     }
                     §§pop().position = §§pop();
                     if(_loc3_)
                     {
                     }
                  }
               }
               addr89:
               while(true)
               {
                  new Kyku(this.gepufoga(this.vuqe)).furymoka(param1);
               }
            }
            while(_loc3_)
            {
               §§goto(addr89);
            }
            return param1;
         }
         while(true)
         {
            if(!_loc3_)
            {
               §§goto(addr53);
            }
            §§goto(addr108);
         }
      }
      
      protected function gepufoga(param1:String) : ByteArray
      {
         var _loc5_:Boolean = true;
         if(!_loc6_)
         {
            §§push(param1);
            if(_loc5_)
            {
               §§push(§§pop().replace(/\s|:/gm,""));
            }
         }
         §§push(param1.length);
         §§push(1);
         if(!_loc5_)
         {
            §§push(-(§§pop() + 1) * 50);
         }
         if(!_loc6_)
         {
            §§push(_loc3_);
            if(_loc5_)
            {
               §§push(1);
               if(_loc6_)
               {
                  §§push(-(-(§§pop() - 11 + 49) * 26 - 1 + 96));
               }
               if(§§pop() == §§pop())
               {
                  if(!_loc6_)
                  {
                     §§push("0");
                     if(_loc5_)
                     {
                        §§push(§§pop() + param1);
                     }
                  }
               }
            }
            addr85:
            var _loc4_:* = uint(§§pop());
            if(!_loc6_)
            {
               loop0:
               while(_loc4_ < param1.length)
               {
                  if(!_loc5_)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc4_);
                        if(!_loc6_)
                        {
                           §§push(2);
                           if(_loc6_)
                           {
                              §§push(-(§§pop() + 98 - 32 + 114 - 1) - 1 - 1);
                           }
                           §§push(uint(§§pop() + §§pop()));
                        }
                        _loc4_ = §§pop();
                        if(!_loc6_)
                        {
                           if(_loc5_)
                           {
                              continue loop0;
                           }
                        }
                        addr196:
                        while(true)
                        {
                           if(!_loc5_)
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
                     §§push(_loc2_);
                     §§push(_loc4_);
                     §§push(2);
                     if(!_loc5_)
                     {
                        §§push(-(§§pop() - 49 - 1));
                     }
                     §§push(§§pop() / §§pop());
                     §§push();
                     §§push(param1);
                     §§push(_loc4_);
                     §§push(2);
                     if(!_loc5_)
                     {
                        §§push(-((§§pop() - 23) * 103) - 117 + 74 - 1);
                     }
                     §§push(§§pop().substr(§§pop(),§§pop()));
                     §§push(16);
                     if(!_loc5_)
                     {
                        §§push((§§pop() + 116 + 1 - 99) * 94 + 1);
                     }
                     §§pop()[§§pop()] = §§pop().parseInt(§§pop(),§§pop());
                     §§goto(addr196);
                  }
               }
            }
            if(_loc5_)
            {
            }
            return _loc2_;
         }
         §§push(0);
         if(!_loc5_)
         {
            §§push(-(--§§pop() - 28 + 1));
         }
         §§goto(addr85);
      }
      
      public function get mibu() : DisplayObject
      {
         return this.byjibar;
      }
      
      public function get culydep() : Loader
      {
         return this.vemevu;
      }
   }
}
