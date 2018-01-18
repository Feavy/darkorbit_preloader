package §---____-§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.AntiAliasType;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class §-_---_--§ extends Sprite
   {
      
      private static var §--___-_§:int = 24;
      
      private static var §-_-__-__§:TextFormat;
      
      private static var §-_____-_§:Boolean = true;
      
      private static const §-_-_---§:uint = 16434692;
      
      private static const §----_-_§:int = 10;
      
      {
         if(!_loc2_)
         {
            §§push();
            §§push(24);
            if(!_loc1_)
            {
               §§push(-§§pop() + 1 + 1 + 1);
            }
            §§pop().§--___-_§ = §§pop();
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
                     §§pop().§-_-_---§ = §§pop();
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
                  §-_____-_§ = true;
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
                        §§pop().§----_-_§ = §§pop();
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
      
      private var §--__-_-§:MovieClip;
      
      private var §-_--§:TextField;
      
      private var §-__--___§:Class;
      
      private var §----_-_-§:String;
      
      public function §-_---_--§(param1:String)
      {
         if(!_loc3_)
         {
            this.§-__--___§ = §-___---§;
            if(!_loc2_)
            {
            }
            addr119:
            addr125:
            addEventListener(Event.REMOVED_FROM_STAGE,this.§---__§);
            addr125:
            return;
         }
         if(!_loc2_)
         {
            addr37:
            while(true)
            {
               this.§--__-_-§ = new this.§-__--___§();
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
                     §§pop().§----_-_-§ = §§pop();
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
            addEventListener(Event.ADDED_TO_STAGE,this.§-_-_----§);
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
      
      private function §-_-_----§(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            stage.addEventListener(Event.RESIZE,this.§-__---__§);
            if(_loc2_)
            {
               this.§-__---__§();
            }
         }
      }
      
      private function §---__§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            stage.removeEventListener(Event.RESIZE,this.§-__---__§);
         }
      }
      
      private function §-__---__§(param1:Event = null) : void
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
      
      public function §-_-_---_§() : void
      {
         if(!_loc1_)
         {
            §§push();
            §§push();
            §§push("EurostileHeaFl");
            §§push(§--___-_§);
            §§push(16434692);
            if(_loc1_)
            {
               §§push((-(§§pop() + 104) - 67 - 65 - 27) * 13 - 109);
            }
            §§pop().§-_-__-__§ = new §§pop().TextFormat(§§pop(),§§pop(),§§pop());
            if(_loc2_)
            {
               if(!_loc2_)
               {
                  loop0:
                  while(true)
                  {
                     this.§-_--§.text = this.§----_-_-§;
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
                                    this.§-_--§.selectable = false;
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
                                    this.§-_--§.antiAliasType = AntiAliasType.ADVANCED;
                                    addr202:
                                    while(_loc1_)
                                    {
                                    }
                                    loop5:
                                    while(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          §§push(this.§-_--§);
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
                                             §§push(this.§-_--§);
                                             §§push(§--___-_§);
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
                                                §§push(this.§-_--§);
                                                §§push(this.§-_--§.width);
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
                                 this.§-_--§.defaultTextFormat = §-_-__-__§;
                                 if(_loc2_)
                                 {
                                    if(!_loc1_)
                                    {
                                       if(_loc1_)
                                       {
                                          addr139:
                                          while(true)
                                          {
                                             §§push(this.§--__-_-§);
                                             §§push(this.§--__-_-§.height);
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
                                          this.§-_--§ = new TextField();
                                          continue loop2;
                                       }
                                       while(true)
                                       {
                                          this.§-_--§.embedFonts = §-_____-_§;
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
                                 this.§-_--§.textColor = §-_-_---§;
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
                  §-_-__-__§.align = TextFormatAlign.CENTER;
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
                  §§push(this.§-_--§);
                  §§push(this.§--__-_-§.y);
                  §§push(this.§--__-_-§.height);
                  §§push(2);
                  if(_loc1_)
                  {
                     §§push((§§pop() + 1 + 23 - 86) * 116 + 106);
                  }
                  §§pop().y = §§pop() + §§pop() / §§pop() + §----_-_§;
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
            §§push(this.§--__-_-§ == null);
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
                     this.§-_-_---_§();
                     if(_loc1_)
                     {
                     }
                     addr111:
                     return;
                  }
                  addr72:
                  §§push(this.§--__-_-§);
                  §§push(1);
                  if(!_loc2_)
                  {
                     §§push(-((§§pop() - 1 + 1) * 43 - 1) - 112 + 1);
                  }
                  §§pop().gotoAndPlay(§§pop());
                  if(!_loc1_)
                  {
                     addr99:
                     if(!contains(this.§-_--§))
                     {
                        if(!_loc1_)
                        {
                           addChild(this.§-_--§);
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
               §§push(this.§-_--§ == null);
            }
            §§goto(addr99);
         }
         if(!contains(this.§--__-_-§))
         {
            if(_loc2_)
            {
               addChild(this.§--__-_-§);
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
            §§push(this.§--__-_-§ == null);
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
                  §§push(this.§--__-_-§);
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
               removeChild(this.§--__-_-§);
               if(_loc1_)
               {
                  addr92:
                  if(contains(this.§-_--§))
                  {
                     if(_loc2_)
                     {
                     }
                  }
                  addr104:
                  return;
               }
               removeChild(this.§-_--§);
               §§goto(addr104);
            }
            §§pop();
            if(_loc1_)
            {
               §§goto(addr38);
               §§push(this.§-_--§ == null);
            }
            §§goto(addr52);
         }
         if(contains(this.§--__-_-§))
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
