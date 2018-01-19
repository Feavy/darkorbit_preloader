package hibimo
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class Ryrymuco extends Sprite
   {
      
      private static var bynel:int = 24;
      
      private static var sobo:TextFormat;
      
      private static var sik:Boolean = true;
      
      private static const gogy:uint = 16434692;
      
      private static const pyte:int = 10;
      
      {
         if(!_loc2_)
         {
            §§push();
            §§push(24);
            if(!_loc1_)
            {
               §§push(-§§pop() + 1 + 1 + 1);
            }
            §§pop().bynel = §§pop();
            if(_loc1_)
            {
               if(_loc2_)
               {
                  addr42:
                  while(true)
                  {
                     §§push();
                     §§push(16434692);
                     if(_loc2_)
                     {
                        §§push(§§pop() + 1 + 14 - 1);
                     }
                     §§pop().gogy = §§pop();
                     if(_loc2_)
                     {
                     }
                     break;
                  }
                  if(_loc1_)
                  {
                  }
                  return;
               }
               addr76:
               while(true)
               {
                  sik = true;
                  if(!_loc2_)
                  {
                     if(_loc2_)
                     {
                        addr102:
                        §§push();
                        §§push(10);
                        if(!_loc1_)
                        {
                           §§push(§§pop() * 84 + 32 + 1 + 1 - 1);
                        }
                        §§pop().pyte = §§pop();
                     }
                     else
                     {
                        §§goto(addr42);
                     }
                  }
                  §§goto(addr114);
               }
            }
         }
         while(_loc2_)
         {
            §§goto(addr76);
         }
         §§goto(addr102);
      }
      
      private var juty:MovieClip;
      
      private var kokibaf:TextField;
      
      private var mujigih:Class;
      
      private var vyby:String;
      
      public function Ryrymuco(param1:String)
      {
         if(!_loc3_)
         {
            this.mujigih = Facyru;
            if(!_loc2_)
            {
            }
            addr119:
            addr125:
            addEventListener(Event.REMOVED_FROM_STAGE,this.zorojap);
            addr125:
            return;
         }
         if(!_loc2_)
         {
            addr37:
            while(true)
            {
               this.juty = new this.mujigih();
               if(_loc2_)
               {
                  if(_loc2_)
                  {
                  }
                  addr80:
                  §§push(this);
                  if(_loc2_)
                  {
                     §§push(param1);
                     if(_loc2_)
                     {
                        §§push(§§pop());
                        if(!_loc2_)
                        {
                        }
                        addr103:
                        §§pop();
                     }
                     if(!§§pop())
                     {
                        §§goto(addr103);
                     }
                     addr105:
                     §§pop().vyby = §§pop();
                     if(!_loc3_)
                     {
                        break;
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr105);
                  §§push("LOADING...");
               }
               break;
            }
            if(_loc2_)
            {
            }
            addEventListener(Event.ADDED_TO_STAGE,this.vevuti);
            if(!_loc3_)
            {
               §§goto(addr119);
            }
            §§goto(addr125);
         }
         while(true)
         {
            super();
            if(_loc2_)
            {
               if(_loc2_)
               {
                  §§goto(addr37);
               }
               §§goto(addr80);
            }
            break;
         }
         §§goto(addr125);
      }
      
      private function vevuti(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            stage.addEventListener(Event.RESIZE,this.cafo);
            if(_loc2_)
            {
               this.cafo();
            }
         }
      }
      
      private function zorojap(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            stage.removeEventListener(Event.RESIZE,this.cafo);
         }
      }
      
      private function cafo(param1:Event = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            x = stage.stageWidth * 0.5;
            if(!_loc2_)
            {
            }
            addr35:
            return;
         }
         y = stage.stageHeight * 0.5;
         §§goto(addr35);
      }
      
      public function cah() : void
      {
         if(!_loc1_)
         {
            §§push();
            §§push();
            §§push("EurostileHeaFl");
            §§push(bynel);
            §§push(16434692);
            if(_loc1_)
            {
               §§push((-(§§pop() + 104) - 67 - 65 - 27) * 13 - 109);
            }
            §§pop().sobo = new §§pop().TextFormat(§§pop(),§§pop(),§§pop());
            if(_loc2_)
            {
               if(!_loc2_)
               {
                  loop0:
                  while(true)
                  {
                     this.kokibaf.text = this.vyby;
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              if(!_loc2_)
                              {
                                 addr80:
                                 while(true)
                                 {
                                    this.kokibaf.selectable = false;
                                 }
                              }
                              break;
                           }
                           loop2:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 while(true)
                                 {
                                    this.kokibaf.antiAliasType = AntiAliasType.ADVANCED;
                                    addr202:
                                    while(_loc1_)
                                    {
                                    }
                                    loop5:
                                    while(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.kokibaf);
                                          §§push(220);
                                          if(!_loc2_)
                                          {
                                             §§push(-(-§§pop() - 102) - 1);
                                          }
                                          §§pop().width = §§pop();
                                          addr351:
                                          while(!_loc2_)
                                          {
                                          }
                                          while(true)
                                          {
                                             §§push(this.kokibaf);
                                             §§push(bynel);
                                             §§push(6);
                                             if(_loc1_)
                                             {
                                                §§push((§§pop() + 87) * 50 + 1 + 1 - 1);
                                             }
                                             §§pop().height = §§pop() + §§pop();
                                             if(!_loc1_)
                                             {
                                                if(!_loc1_)
                                                {
                                                }
                                                §§push(this.kokibaf);
                                                §§push(this.kokibaf.width);
                                                §§push(2);
                                                if(!_loc2_)
                                                {
                                                   §§push((§§pop() * 70 + 94) * 79 * 114);
                                                }
                                                §§pop().x = -(§§pop() / §§pop());
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr119:
                              while(true)
                              {
                                 this.kokibaf.defaultTextFormat = sobo;
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          addr139:
                                          while(true)
                                          {
                                             §§push(this.juty);
                                             §§push(this.juty.height);
                                             §§push(2);
                                             if(!_loc2_)
                                             {
                                                §§push(§§pop() + 84 - 29 + 106 + 1);
                                             }
                                             §§pop().y = -(§§pop() / §§pop());
                                             if(!_loc1_)
                                             {
                                                break;
                                             }
                                             addr244:
                                             while(true)
                                             {
                                                if(_loc2_)
                                                {
                                                }
                                                §§goto(addr330);
                                             }
                                          }
                                          if(_loc2_)
                                          {
                                          }
                                          this.kokibaf = new TextField();
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          this.kokibaf.embedFonts = sik;
                                       }
                                    }
                                    addr366:
                                    while(_loc2_)
                                    {
                                       §§goto(addr139);
                                    }
                                    break loop0;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                                 if(!_loc1_)
                                 {
                                 }
                                 this.kokibaf.textColor = gogy;
                              }
                           }
                           §§goto(addr202);
                        }
                     }
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           if(!_loc2_)
                           {
                              §§goto(addr119);
                           }
                           else
                           {
                              break;
                           }
                        }
                        §§goto(addr351);
                     }
                  }
                  return;
               }
               while(true)
               {
                  sobo.align = TextFormatAlign.CENTER;
                  §§goto(addr366);
               }
            }
            while(true)
            {
               if(_loc1_)
               {
                  §§goto(addr270);
               }
               addr216:
               while(true)
               {
                  §§push(this.kokibaf);
                  §§push(this.juty.y);
                  §§push(this.juty.height);
                  §§push(2);
                  if(_loc1_)
                  {
                     §§push((§§pop() + 1 + 23 - 86) * 116 + 106);
                  }
                  §§pop().y = §§pop() + §§pop() / §§pop() + pyte;
                  if(!_loc1_)
                  {
                     §§goto(addr244);
                  }
                  §§goto(addr351);
               }
            }
         }
         while(true)
         {
            if(!_loc2_)
            {
               §§goto(addr216);
            }
            else
            {
               §§goto(addr80);
            }
            §§goto(addr202);
         }
      }
      
      public function show() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.juty == null);
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc2_)
                  {
                  }
               }
               addr40:
               if(§§pop())
               {
                  if(!_loc1_)
                  {
                     this.cah();
                     if(_loc1_)
                     {
                     }
                     addr111:
                     return;
                  }
                  addr72:
                  §§push(this.juty);
                  §§push(1);
                  if(!_loc2_)
                  {
                     §§push(-((§§pop() - 1 + 1) * 43 - 1) - 112 + 1);
                  }
                  §§pop().gotoAndPlay(§§pop());
                  if(!_loc1_)
                  {
                     addr99:
                     if(!contains(this.kokibaf))
                     {
                        if(!_loc1_)
                        {
                           addChild(this.kokibaf);
                        }
                     }
                  }
                  §§goto(addr111);
               }
            }
            §§pop();
            if(_loc2_)
            {
               §§goto(addr40);
               §§push(this.kokibaf == null);
            }
            §§goto(addr99);
         }
         if(!contains(this.juty))
         {
            if(_loc2_)
            {
               addChild(this.juty);
               if(!_loc2_)
               {
               }
               §§goto(addr111);
            }
            §§goto(addr99);
         }
         §§goto(addr72);
      }
      
      public function hide() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.juty == null);
            if(!_loc2_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                  }
               }
               addr38:
               addr86:
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr52:
                     return;
                  }
               }
               else
               {
                  §§push(this.juty);
                  §§push(1);
                  if(_loc2_)
                  {
                     §§push(-(§§pop() * 34 - 1 + 1) - 1 + 1);
                  }
                  §§pop().gotoAndStop(§§pop());
                  if(!_loc1_)
                  {
                  }
               }
               removeChild(this.juty);
               if(_loc1_)
               {
                  addr92:
                  if(contains(this.kokibaf))
                  {
                     if(_loc2_)
                     {
                     }
                  }
                  addr104:
                  return;
               }
               removeChild(this.kokibaf);
               §§goto(addr104);
            }
            §§pop();
            if(_loc1_)
            {
               §§goto(addr38);
               §§push(this.kokibaf == null);
            }
            §§goto(addr52);
         }
         if(contains(this.juty))
         {
            if(_loc1_)
            {
               §§goto(addr86);
            }
            §§goto(addr104);
         }
         §§goto(addr92);
      }
   }
}
