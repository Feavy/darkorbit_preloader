package bycu
{
   import com.greensock.Meqyn;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import hafiwu.Lawuheryr;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.as3toolbox.filecollection.vo.LocationVO;
   import net.bigpoint.darkorbit.Tegos;
   
   public class Ruharo extends Sprite
   {
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
      }
      
      private var gigu:FileCollectionLoader;
      
      private var fulyqyma:Loader;
      
      private var _content:Object;
      
      private var goryh:Object;
      
      private var _ready:Lawuheryr;
      
      private var pugolaty:Lawuheryr;
      
      private var vuqe:String;
      
      public function Ruharo()
      {
         if(!_loc2_)
         {
            super();
            if(!_loc2_)
            {
               if(_loc2_)
               {
                  addr36:
                  while(true)
                  {
                     this.fulyqyma.contentLoaderInfo.addEventListener(Event.COMPLETE,this.cipi);
                     if(!_loc1_)
                     {
                     }
                     addr73:
                     loop1:
                     while(true)
                     {
                        if(!_loc1_)
                        {
                        }
                        addr118:
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              break loop1;
                           }
                           addr68:
                           while(true)
                           {
                              this.fulyqyma = new Loader();
                              continue loop1;
                           }
                        }
                        return;
                     }
                     §§goto(addr129);
                  }
               }
               addr87:
               while(true)
               {
                  this._ready = new Lawuheryr();
                  if(_loc1_)
                  {
                     if(_loc1_)
                     {
                     }
                     this.pugolaty = new Lawuheryr();
                  }
                  §§goto(addr118);
               }
            }
            while(true)
            {
               if(_loc2_)
               {
                  §§goto(addr87);
               }
               else
               {
                  §§goto(addr36);
               }
               §§goto(addr73);
            }
         }
         while(true)
         {
            if(!_loc1_)
            {
               §§goto(addr68);
            }
            §§goto(addr129);
         }
      }
      
      public function load(param1:Object, param2:String) : void
      {
         if(!_loc6_)
         {
            this.goryh = param1;
         }
         if(!_loc6_)
         {
            §§push(this.goryh.loadingscreenHash);
            if(_loc7_)
            {
               if(!§§pop())
               {
                  if(!_loc7_)
                  {
                  }
                  addr42:
                  if(_loc7_)
                  {
                     this.gigu = new FileCollection.fileLoaderClass();
                     if(_loc6_)
                     {
                     }
                     loop0:
                     while(true)
                     {
                        if(_loc6_)
                        {
                           addr205:
                           while(true)
                           {
                              this.gigu.dataFormat = URLLoaderDataFormat.BINARY;
                              loop1:
                              while(true)
                              {
                                 if(_loc6_)
                                 {
                                    break loop0;
                                 }
                                 loop2:
                                 while(true)
                                 {
                                    this.gigu.addEventListener(Event.COMPLETE,this.loj);
                                    if(!_loc6_)
                                    {
                                       if(!_loc7_)
                                       {
                                          loop3:
                                          while(true)
                                          {
                                             this.gigu.loadFile(true,_loc5_);
                                             loop4:
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      continue loop0;
                                                   }
                                                }
                                                addr156:
                                                while(true)
                                                {
                                                   if(!_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         break loop2;
                                                      }
                                                      addr67:
                                                      while(true)
                                                      {
                                                         this.gigu.fileVO.cdnHash = _loc4_;
                                                         if(!_loc6_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               break loop3;
                                                            }
                                                            continue loop3;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      break loop4;
                                                   }
                                                }
                                             }
                                             continue loop1;
                                          }
                                          continue;
                                       }
                                       break;
                                    }
                                    while(_loc6_)
                                    {
                                    }
                                    return;
                                 }
                                 §§push(Tegos);
                                 §§push("flash_preloader_loadingScreenLoadStart");
                                 §§push("url");
                                 §§push(_loc5_ + "loadingscreen.swf?__cv=");
                                 if(!_loc6_)
                                 {
                                    §§push(§§pop() + this.goryh.loadingscreenHash);
                                 }
                                 §§pop().gamiwyki(§§pop(),null);
                                 continue loop0;
                              }
                           }
                        }
                        while(true)
                        {
                           this.gigu.fileVO = new FileVO("",new LocationVO("",""),_loc3_,"swf","",new XML());
                           §§goto(addr156);
                        }
                     }
                     §§goto(addr221);
                  }
                  if(_loc6_)
                  {
                     §§goto(addr67);
                  }
                  §§goto(addr205);
               }
               addr41:
               §§goto(addr42);
               §§push(§§pop());
            }
            §§pop();
         }
         §§goto(addr41);
      }
      
      public function qigefit() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this._content)
            {
               if(!_loc1_)
               {
                  this._content.removeEventListener("ready",this.bukoh);
                  if(!_loc1_)
                  {
                     this._content.removeEventListener("startGame",this.syvylaqu);
                     if(!_loc2_)
                     {
                     }
                     addr75:
                     return;
                  }
               }
            }
            if(this.fulyqyma)
            {
               if(_loc1_)
               {
               }
            }
            §§goto(addr75);
         }
         this.fulyqyma.unloadAndStop(true);
         §§goto(addr75);
      }
      
      public function set cej(param1:Number) : void
      {
         this._content.setGameclientLoadProgress(param1);
      }
      
      public function gameclientReady() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this._content.gameclientReady();
         }
      }
      
      private function loj(param1:Event) : void
      {
         try
         {
            _loc2_.uncompress();
         }
         catch(e:Error)
         {
         }
         if(!_loc5_)
         {
            _loc3_.allowCodeImport = true;
            if(!_loc5_)
            {
               if(!_loc6_)
               {
                  loop0:
                  while(true)
                  {
                     this.fulyqyma.visible = false;
                     if(!_loc5_)
                     {
                        if(_loc5_)
                        {
                        }
                     }
                     addr128:
                     while(true)
                     {
                        if(_loc5_)
                        {
                           break loop0;
                        }
                        continue loop0;
                     }
                  }
                  return;
               }
               addr98:
               while(true)
               {
                  _loc3_.parameters = this.goryh;
               }
            }
            while(!_loc6_)
            {
               §§goto(addr98);
            }
            §§goto(addr139);
         }
         while(true)
         {
            if(_loc6_)
            {
            }
            this.fulyqyma.loadBytes(_loc2_,_loc3_);
            §§goto(addr128);
         }
      }
      
      private function pomif(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this._content.addEventListener("18445442611228323574",this.pomif);
            if(!_loc3_)
            {
               this.vuqe = param1 + "";
            }
         }
      }
      
      private function cipi(param1:Event) : void
      {
         if(_loc2_)
         {
            this.fulyqyma.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.cipi);
            if(_loc2_)
            {
               if(!_loc2_)
               {
                  addr43:
                  loop0:
                  while(true)
                  {
                     this._content.addEventListener("18445442611228323574",this.pomif);
                     if(_loc2_)
                     {
                        if(!_loc2_)
                        {
                        }
                     }
                     addr122:
                     while(true)
                     {
                        if(!_loc3_)
                        {
                        }
                        break loop0;
                     }
                  }
                  return;
               }
               while(true)
               {
                  this._content = param1.target.content;
               }
            }
            while(true)
            {
               if(_loc3_)
               {
                  loop3:
                  while(true)
                  {
                     this._content.addEventListener("ready",this.bukoh);
                     if(!_loc3_)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                           }
                           addr116:
                           this._content.addEventListener("startGame",this.syvylaqu);
                           break;
                        }
                        addr105:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        §§goto(addr116);
                     }
                     break;
                  }
                  §§goto(addr122);
               }
               while(true)
               {
                  addChild(this.fulyqyma);
                  §§goto(addr105);
               }
            }
         }
         while(true)
         {
            if(_loc2_)
            {
               §§goto(addr43);
            }
            §§goto(addr159);
         }
      }
      
      private function bukoh(param1:Event) : void
      {
         if(_loc2_)
         {
            this._content.removeEventListener("ready",this.bukoh);
            if(!_loc3_)
            {
               if(!_loc2_)
               {
                  addr41:
                  while(true)
                  {
                     §§push(Meqyn);
                     §§push(this.fulyqyma);
                     §§push(0.5);
                     §§push("alpha");
                     §§push(1);
                     if(!_loc2_)
                     {
                        §§push((§§pop() - 114) * 43 - 1 + 1 + 89 - 98 + 1);
                     }
                     §§pop().to(§§pop(),§§pop(),null);
                     if(_loc2_)
                     {
                        if(!_loc3_)
                        {
                           if(_loc3_)
                           {
                              addr91:
                              while(true)
                              {
                                 this.fulyqyma.visible = true;
                              }
                           }
                           addr107:
                           while(true)
                           {
                              this._ready.dyserur(this.vuqe);
                           }
                        }
                     }
                     addr112:
                     loop3:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           if(!_loc3_)
                           {
                           }
                           addr160:
                           return;
                        }
                        addr149:
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              break loop3;
                           }
                           §§goto(addr91);
                        }
                     }
                     §§goto(addr160);
                  }
               }
               while(true)
               {
                  §§push(this.fulyqyma);
                  §§push(0);
                  if(_loc3_)
                  {
                     §§push((-(§§pop() * 41 + 1 + 1) - 1) * 110);
                  }
                  §§pop().alpha = §§pop();
                  §§goto(addr149);
               }
            }
         }
         while(true)
         {
            if(!_loc2_)
            {
               §§goto(addr107);
            }
            else
            {
               §§goto(addr41);
            }
            §§goto(addr112);
         }
      }
      
      private function syvylaqu(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.pugolaty.dyserur();
         }
      }
      
      private function furymoka(param1:ByteArray) : ByteArray
      {
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 1 + 1 - 1 + 37);
         }
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() - 1) * 71 * 50 * 29 + 103 - 1);
         }
         if(_loc8_)
         {
            §§push(param1);
            §§push(0);
            if(_loc7_)
            {
               §§push(---(§§pop() + 21) + 1 - 70);
            }
            §§pop().position = §§pop();
         }
         §§push(57);
         if(_loc7_)
         {
            §§push(((§§pop() - 33) * 84 - 1) * 4 + 74 + 75);
         }
         var _loc5_:* = uint(§§pop());
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() - 73 + 1 - 29) * 90);
         }
         if(!_loc7_)
         {
            while(_loc6_ < _loc2_)
            {
               if(!_loc8_)
               {
                  while(true)
                  {
                     param1[_loc6_] = _loc3_ ^ _loc5_;
                     if(_loc8_)
                     {
                        if(!_loc7_)
                        {
                           if(!_loc7_)
                           {
                              if(!_loc8_)
                              {
                                 addr143:
                                 while(true)
                                 {
                                    §§push(uint(param1[_loc6_]));
                                    if(!_loc8_)
                                    {
                                    }
                                    addr220:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr242:
                              _loc6_++;
                              break;
                           }
                           while(!_loc7_)
                           {
                              §§goto(addr143);
                           }
                           §§goto(addr242);
                        }
                        while(_loc7_)
                        {
                        }
                        continue;
                     }
                     break;
                  }
                  if(_loc8_)
                  {
                  }
                  continue;
               }
               while(true)
               {
                  §§push(_loc5_);
                  if(_loc8_)
                  {
                     §§push(3);
                     if(_loc7_)
                     {
                        §§push(§§pop() * 99 + 1 - 1);
                     }
                     if(_loc8_)
                     {
                        §§push(uint(§§pop() + §§pop()));
                        if(!_loc7_)
                        {
                           §§push(§§pop());
                           if(!_loc7_)
                           {
                              _loc5_ = §§pop();
                              if(!_loc7_)
                              {
                                 §§push(255);
                                 if(_loc7_)
                                 {
                                    §§push(--(§§pop() + 47));
                                 }
                                 if(!_loc7_)
                                 {
                                    §§push(§§pop() & §§pop());
                                    if(!_loc7_)
                                    {
                                       §§push(uint(§§pop()));
                                       if(!_loc8_)
                                       {
                                       }
                                    }
                                    addr219:
                                    §§push(uint(§§pop()));
                                 }
                              }
                              addr211:
                              §§push(4);
                              if(!_loc8_)
                              {
                                 §§push(-(§§pop() - 28 + 1));
                              }
                           }
                           addr207:
                           _loc5_ = §§pop();
                           if(!_loc7_)
                           {
                              §§goto(addr211);
                           }
                        }
                        §§goto(addr220);
                     }
                     §§goto(addr219);
                     §§push(§§pop() & §§pop());
                  }
                  §§goto(addr207);
               }
            }
            if(_loc7_)
            {
            }
            return param1;
         }
         §§push(param1);
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 98 + 1 - 6 + 98 - 1);
         }
         §§pop().position = §§pop();
         §§goto(addr263);
      }
      
      public function get ready() : Lawuheryr
      {
         return this._ready;
      }
      
      public function get startGame() : Lawuheryr
      {
         return this.pugolaty;
      }
      
      public function get bunyriw() : Loader
      {
         return this.fulyqyma;
      }
   }
}
