package §---____-§
{
   import §-___---_§.DOProgressBar;
   import §-___---_§.DOScene;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.ProgressEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.as3toolbox.filecollection.vo.LocationVO;
   import net.bigpoint.darkorbit.§-__-_---§;
   import net.bigpoint.darkorbit.fooskater.embed.dolls.encryption.algorithms.Decrypter;
   
   public class MainSWFLoader
   {
       
      
      private var §--_-_--§:DisplayObjectContainer;
      
      private var resourceLoader:FileCollectionLoader;
      
      private var mainLoader:Loader;
      
      private var §-_---___§:DisplayObject;
      
      private var §-_---_§:DisplayObject;
      
      private var params:Object;
      
      private var progressBar:DOScene;
      
      private var _ready:DOScene;
      
      private var key:String;
      
      public function MainSWFLoader(param1:DisplayObjectContainer)
      {
         super();
         this.§--_-_--§ = param1;
         this.progressBar = new DOProgressBar(Number);
         this._ready = new DOProgressBar(Boolean);
         this.mainLoader = new Loader();
         this.mainLoader.addEventListener("mx.managers.SystemManager.isBootstrapRoot",this.§-_--_--§);
         this.mainLoader.addEventListener("mx.managers.SystemManager.isStageRoot",this.§-_--_--§);
         this.mainLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§-__-_-_§);
      }
      
      public function load(param1:Object, param2:String, param3:String) : void
      {
         this.params = param1;
         this.key = param3;
         §-__-_---§.§-____----§("flash_loadingscreen_loadGameClient",{});
         this.resourceLoader = new FileCollection.fileLoaderClass();
         this.resourceLoader.dataFormat = URLLoaderDataFormat.BINARY;
         this.resourceLoader.addEventListener(Event.COMPLETE,this.onSWFDownloaded);
         this.resourceLoader.addEventListener(ProgressEvent.PROGRESS,this.onMainDownloadProgress);
         !!this.params.gameclientPath?param2 + this.params.gameclientPath:null;
         var _loc4_:* = this.params.resourcesPath || param2 + this.params.basePath + "/";
         if(_loc4_.lastIndexOf("/") != _loc4_.length - 1)
         {
            _loc4_ = _loc4_ + "/";
         }
         var _loc6_:String = this.params.gameclientHash;
         this.resourceLoader.fileVO = new FileVO("",new LocationVO("",""),"main","swf","",new XML());
         this.resourceLoader.fileVO.cdnHash = _loc6_;
         this.resourceLoader.loadFile(true,_loc4_);
      }
      
      public function startGame() : void
      {
         this.§-_---_§["startGame"]();
      }
      
      public function get getProgressBar() : DOScene
      {
         return this.progressBar;
      }
      
      public function get ready() : DOScene
      {
         return this._ready;
      }
      
      private function onMainDownloadProgress(param1:ProgressEvent) : void
      {
         this.progressBar.setValue(0.3 * param1.bytesLoaded / param1.bytesTotal);
      }
      
      private function onSWFDownloaded(param1:Event) : void
      {
         var _loc2_:ByteArray = this.resourceLoader.data;
         _loc2_.uncompress();
         _loc2_.position = 0;
         _loc2_ = this.decrypt(_loc2_);
         _loc2_.position = 0;
         var _loc3_:LoaderContext = new LoaderContext(false,new ApplicationDomain());
         _loc3_.allowCodeImport = true;
         _loc3_.parameters = this.params;
         this.mainLoader.loadBytes(_loc2_,_loc3_);
      }
      
      private function §-_--_--§(param1:Event) : void
      {
         param1.preventDefault();
      }
      
      private function §-__-_-_§(param1:Event) : void
      {
         this.mainLoader.removeEventListener("mx.managers.SystemManager.isBootstrapRoot",this.§-_--_--§);
         this.mainLoader.removeEventListener("mx.managers.SystemManager.isStageRoot",this.§-_--_--§);
         this.mainLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§-__-_-_§);
         this.mainLoader = null;
         this.§-_---___§ = param1.target.content as DisplayObject;
         this.§-_---___§.addEventListener(ProgressEvent.PROGRESS,this.§--------§);
         this.§-_---___§.addEventListener(Event.COMPLETE,this.§-______-_§);
         this.§--_-_--§.addChildAt(this.§-_---___§,0);
      }
      
      private function §--------§(param1:ProgressEvent) : void
      {
         this.progressBar.setValue(0.3 + 0.7 * param1.bytesLoaded / param1.bytesTotal);
      }
      
      private function §-______-_§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         this.§-_---___§.removeEventListener(ProgressEvent.PROGRESS,this.§--------§);
         this.§-_---___§.removeEventListener(Event.COMPLETE,this.§-______-_§);
         this.§-_---_§ = Object(this.§-_---___§).document as DisplayObject;
         if(this.§-_---_§["startGame"] is Function)
         {
            §-__-_---§.§-____----§("flash_loadingscreen_gameClientFullyLoaded",{});
            _loc2_ = this.§-_---_§["autoStartEnabled"] as Boolean;
            this._ready.setValue(_loc2_);
         }
         else
         {
            this.§-_---_§.addEventListener("creationComplete",this.§-__-___§);
         }
      }
      
      private function §-__-___§(param1:Event) : void
      {
         §-__-_---§.§-____----§("flash_loadingscreen_gameClientFullyLoaded",{});
         this.§-_---_§.removeEventListener("creationComplete",this.§-__-___§);
         this._ready.setValue(this.§-_---_§["autoStartEnabled"] as Boolean);
      }
      
      private function decrypt(param1:ByteArray) : ByteArray
      {
         param1.position = 0;
         new Decrypter(this.format(this.key)).decrypt(param1);
         param1.position = 0;
         return param1;
      }
      
      protected function format(param1:String) : ByteArray
      {
         param1 = param1.replace(/\s|:/gm,"");
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:* = param1.length & 1;
         if(_loc3_ == 1)
         {
            param1 = "0" + param1;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < param1.length)
         {
            _loc2_[_loc4_ / 2] = parseInt(param1.substr(_loc4_,2),16);
            _loc4_ = _loc4_ + 2;
         }
         return _loc2_;
      }
      
      public function get §-___-§() : DisplayObject
      {
         return this.§-_---___§;
      }
      
      public function get §-_-__§() : Loader
      {
         return this.mainLoader;
      }
   }
}
