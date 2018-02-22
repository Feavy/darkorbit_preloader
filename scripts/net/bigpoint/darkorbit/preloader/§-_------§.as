package net.bigpoint.darkorbit.preloader
{
   import §---____-§.§-_---_--§;
   import §---____-§.LoadingScreenSWFLoader;
   import §---____-§.MainSWFLoader;
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
      
      private static var §-__--_§:Class = §-__--__§;
      
      private static const port:String = "6242";
       
      
      private var errorHandler:GlobalErrorHandlerBpEventStream;
      
      private var params:Object;
      
      private var basePath:String;
      
      private var §-____---_§:§-_---_--§;
      
      private var loadingScreenLoader:LoadingScreenSWFLoader;
      
      private var mainLoader:MainSWFLoader;
      
      private const loaderInfoData:ByteArray = new ByteArray();
      
      public function §-_------§()
      {
         super();
         this.loaderInfoData.writeInt(loaderInfo.bytes.length);
         this.loaderInfoData.writeUTF(name);
         this.loaderInfoData.writeUTF(loaderInfo.parameters.pid || "");
         this.loaderInfoData.writeUTF(loaderInfo.parameters.sessionID || "");
         this.loaderInfoData.writeUTF(loaderInfo.parameters.userID || "");
         this.loaderInfoData.writeDouble(Math.random());
         this.loaderInfoData.compress();
         §-__-_---§.§-____----§("flash_preloader_construct",{
            "bytes":loaderInfo.bytes.length,
            "name":name,
            "stageWidth":stage.stageWidth,
            "stageHeight":stage.stageHeight,
            "counter":getSampleCount()
         });
         Font.registerFont(§-__--_§);
         var _loc1_:ContextMenu = new ContextMenu();
         _loc1_.hideBuiltInItems();
         _loc1_.builtInItems.quality = true;
         _loc1_.customItems.push(new ContextMenuItem("Build " + port));
         contextMenu = _loc1_;
         if(name == "root1")
         {
            addEventListener(Event.ADDED_TO_STAGE,this.init);
         }
      }
      
      public function getData() : *
      {
         this.loaderInfoData.uncompress();
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeBytes(this.loaderInfoData);
         this.loaderInfoData.compress();
         return _loc1_;
      }
      
      private function init(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.align = StageAlign.TOP_LEFT;
         try
         {
            Security.loadPolicyFile(loaderInfo.parameters.host + "/crossdomain.xml?_cv=" + loaderInfo.parameters.crossdomainHash);
            Security.allowDomain("*");
         }
         catch(e:Error)
         {
         }
         this.start();
      }
      
      private function start() : void
      {
         this.params = loaderInfo.parameters;
         var _loc1_:* = port;
         if(this.params.gameclientPath && this.params.gameclientPath.indexOf("acp") != -1)
         {
            _loc1_ = _loc1_ + " [cli]";
         }
         this.errorHandler = new GlobalErrorHandlerBpEventStream(_loc1_);
         this.errorHandler.addSource(loaderInfo.uncaughtErrorEvents);
         this.basePath = this.params.cdn || this.params.host + "/";
         this.§-______§();
         this.loadingScreenLoader = new LoadingScreenSWFLoader();
         this.errorHandler.addSource(this.loadingScreenLoader.§-_---__§.uncaughtErrorEvents);
         this.loadingScreenLoader.ready.setListener(this.onSWFReady);
         this.loadingScreenLoader.load(this.params,this.basePath);
         addChild(this.loadingScreenLoader);
      }
      
      private function onSWFReady(param1:String) : void
      {
         this.§---_-___§();
         §-__-_---§.§-____----§("flash_preloader_loadingScreenReady");
         this.mainLoader = new MainSWFLoader(this);
         this.errorHandler.addSource(this.mainLoader.§-_-__§.uncaughtErrorEvents);
         this.mainLoader.getProgressBar.add(this.§--_---_§);
         this.mainLoader.ready.add(this.§-__§);
         this.mainLoader.load(this.params,this.basePath,param1);
      }
      
      private function §--_---_§(param1:Number) : void
      {
         this.loadingScreenLoader.§--_---§ = param1;
      }
      
      private function §-__§(param1:Boolean) : void
      {
         if(param1)
         {
            this.§-_-_-§();
         }
         else
         {
            this.loadingScreenLoader.startGame.setListener(this.§-_-_-§);
            this.loadingScreenLoader.gameclientReady();
         }
      }
      
      private function §-_-_-§() : void
      {
         removeChild(this.loadingScreenLoader);
         this.loadingScreenLoader.§-______-§();
         this.mainLoader.startGame();
      }
      
      private function §-______§() : void
      {
         this.§---_-___§();
         this.§-____---_§ = new §-_---_--§(this.params.loadingClaim as String);
         this.§-____---_§.show();
         addChild(this.§-____---_§);
      }
      
      private function §---_-___§() : void
      {
         if(this.§-____---_§)
         {
            this.§-____---_§.hide();
            removeChild(this.§-____---_§);
            this.§-____---_§ = null;
         }
      }
   }
}
