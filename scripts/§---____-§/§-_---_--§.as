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
       
      
      private var §--__-_-§:MovieClip;
      
      private var §-_--§:TextField;
      
      private var §-__--___§:Class;
      
      private var §----_-_-§:String;
      
      public function §-_---_--§(param1:String)
      {
         this.§-__--___§ = §-___---§;
         super();
         this.§--__-_-§ = new this.§-__--___§();
         this.§----_-_-§ = param1 || "LOADING...";
         addEventListener(Event.ADDED_TO_STAGE,this.init);
         addEventListener(Event.REMOVED_FROM_STAGE,this.§---__§);
      }
      
      private function init(param1:Event) : void
      {
         stage.addEventListener(Event.RESIZE,this.§-__---__§);
         this.§-__---__§();
      }
      
      private function §---__§(param1:Event) : void
      {
         stage.removeEventListener(Event.RESIZE,this.§-__---__§);
      }
      
      private function §-__---__§(param1:Event = null) : void
      {
         x = stage.stageWidth * 0.5;
         y = stage.stageHeight * 0.5;
      }
      
      public function §-_-_---_§() : void
      {
         §-_-__-__§ = new TextFormat("EurostileHeaFl",§--___-_§,16434692);
         §-_-__-__§.align = TextFormatAlign.CENTER;
         this.§--__-_-§.y = -(this.§--__-_-§.height / 2);
         this.§-_--§ = new TextField();
         this.§-_--§.defaultTextFormat = §-_-__-__§;
         this.§-_--§.embedFonts = §-_____-_§;
         this.§-_--§.y = this.§--__-_-§.y + this.§--__-_-§.height / 2 + §----_-_§;
         this.§-_--§.width = 220;
         this.§-_--§.height = §--___-_§ + 6;
         this.§-_--§.x = -(this.§-_--§.width / 2);
         this.§-_--§.antiAliasType = AntiAliasType.ADVANCED;
         this.§-_--§.selectable = false;
         this.§-_--§.textColor = §-_-_---§;
         this.§-_--§.text = this.§----_-_-§;
      }
      
      public function show() : void
      {
         if(this.§--__-_-§ == null || this.§-_--§ == null)
         {
            this.§-_-_---_§();
         }
         if(!contains(this.§--__-_-§))
         {
            addChild(this.§--__-_-§);
         }
         this.§--__-_-§.gotoAndPlay(1);
         if(!contains(this.§-_--§))
         {
            addChild(this.§-_--§);
         }
      }
      
      public function hide() : void
      {
         if(this.§--__-_-§ == null || this.§-_--§ == null)
         {
            return;
         }
         this.§--__-_-§.gotoAndStop(1);
         if(contains(this.§--__-_-§))
         {
            removeChild(this.§--__-_-§);
         }
         if(contains(this.§-_--§))
         {
            removeChild(this.§-_--§);
         }
      }
   }
}
