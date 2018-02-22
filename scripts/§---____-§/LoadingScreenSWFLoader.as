package §---____-§
{
   import §-___---_§.DOEvent;
   import com.greensock.§----_-__§;
   import flash.display.Loader;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.URLLoaderDataFormat;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.ByteArray;
   import net.bigpoint.as3toolbox.filecollection.FileCollection;
   import net.bigpoint.as3toolbox.filecollection.FileCollectionLoader;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   import net.bigpoint.as3toolbox.filecollection.vo.LocationVO;
   import net.bigpoint.darkorbit.§-__-_---§;
   
   public class LoadingScreenSWFLoader extends Sprite
   {
       
      
      private var resourceLoader:FileCollectionLoader;
      
      private var contentLoader:Loader;
      
      private var _content:Object;
      
      private var params:Object;
      
      private var _ready:DOEvent;
      
      private var §--_-_-_-§:DOEvent;
      
      private var key:String;
      
      public function LoadingScreenSWFLoader()
      {
         super();
         this._ready = new DOEvent();
         this.§--_-_-_-§ = new DOEvent();
         this.contentLoader = new Loader();
         this.contentLoader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onLoadingComplete);
      }
      
      public function load(param1:Object, param2:String) : void
      {
         this.params = param1;
         var _loc5_:* = param2 + "spacemap/";
         this.resourceLoader = new FileCollection.fileLoaderClass();
         this.resourceLoader.dataFormat = URLLoaderDataFormat.BINARY;
         this.resourceLoader.addEventListener(Event.COMPLETE,this.onSWFDownloaded);
         §-__-_---§.§-____----§("flash_preloader_loadingScreenLoadStart",{"url":_loc5_ + "loadingscreen.swf?__cv=" + this.params.loadingscreenHash});
         this.resourceLoader.fileVO = new FileVO("",new LocationVO("",""),"loadingscreen","swf","",new XML());
         this.resourceLoader.fileVO.cdnHash = "";
         this.resourceLoader.loadFile(true,_loc5_);
      }
      
      public function §-______-§() : void
      {
         if(this._content)
         {
            this._content.removeEventListener("ready",this.onSWFReady);
            this._content.removeEventListener("startGame",this.§-_-_-§);
         }
         if(this.contentLoader)
         {
            this.contentLoader.unloadAndStop(true);
         }
      }
      
      public function set §--_---§(param1:Number) : void
      {
         this._content.setGameclientLoadProgress(param1);
      }
      
      public function gameclientReady() : void
      {
         this._content.gameclientReady();
      }
      
      private function onSWFDownloaded(param1:Event) : void
      {
         var _loc2_:ByteArray = this.resourceLoader.data;
         try
         {
            _loc2_.uncompress();
            _loc2_ = this.decrypt(_loc2_);
         }
         catch(e:Error)
         {
         }
         var _loc3_:LoaderContext = new LoaderContext(false,new ApplicationDomain());
         _loc3_.allowCodeImport = true;
         _loc3_.parameters = this.params;
         this.contentLoader.loadBytes(_loc2_,_loc3_);
         this.contentLoader.visible = false;
      }
      
      private function setKey(param1:Event) : void
      {
         this._content.addEventListener("15552895791679648420",this.setKey);
         this.key = param1 + "";
      }
      
      private function onLoadingComplete(param1:Event) : void
      {
         this.contentLoader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadingComplete);
         this._content = param1.target.content;
         this._content.addEventListener("15552895791679648420",this.setKey);
         addChild(this.contentLoader);
         this._content.addEventListener("ready",this.onSWFReady);
         this._content.addEventListener("startGame",this.§-_-_-§);
      }
      
      private function onSWFReady(param1:Event) : void
      {
         this._content.removeEventListener("ready",this.onSWFReady);
         this.contentLoader.alpha = 0;
         this.contentLoader.visible = true;
         §----_-__§.to(this.contentLoader,0.5,{"alpha":1});
         this._ready.setValue(this.key);
      }
      
      private function §-_-_-§(param1:Event) : void
      {
         this.§--_-_-_-§.setValue();
      }
      
      private function decrypt(param1:ByteArray) : ByteArray
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc2_:uint = param1.length;
         param1.position = 0;
         var _loc5_:* = uint(57);
         var _loc6_:int = 0;
         while(_loc6_ < _loc2_)
         {
            _loc5_ = uint(_loc5_ + 3);
            _loc5_ = uint(uint(_loc5_ + 3) & 255);
            _loc4_ = _loc5_ & 4;
            _loc3_ = param1[_loc6_];
            param1[_loc6_] = _loc3_ ^ _loc5_;
            _loc6_++;
         }
         param1.position = 0;
         return param1;
      }
      
      public function get ready() : DOEvent
      {
         return this._ready;
      }
      
      public function get startGame() : DOEvent
      {
         return this.§--_-_-_-§;
      }
      
      public function get §-_---__§() : Loader
      {
         return this.contentLoader;
      }
   }
}
