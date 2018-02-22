package net.bigpoint.as3toolbox.filecollection.vo
{
   import §----_§.§-_______§;
   import flash.utils.ByteArray;
   
   public class FileVO
   {
       
      
      public var id:String;
      
      public var location:LocationVO;
      
      public var name:String;
      
      public var type:String;
      
      public var loaded:Boolean;
      
      private var _data;
      
      public var fileNode:XML;
      
      public var params:Object;
      
      public var numTries:int = 0;
      
      public var callbackComplete:Vector.<Function>;
      
      public var callbackError:Vector.<Function>;
      
      public var cdnHash:String;
      
      public var fileHash:String;
      
      public var size:uint;
      
      public function FileVO(param1:String, param2:LocationVO, param3:String, param4:String, param5:String, param6:XML)
      {
         super();
         this.initCollections();
         this.loaded = false;
         this.id = param1;
         this.location = param2;
         this.name = param3;
         this.type = param4;
         this.extractParams(param6);
      }
      
      public function getFileName(param1:Boolean = false) : String
      {
         var _loc2_:String = this.location.path + this.name + "." + this.type;
         if(param1 && this.cdnHash != null)
         {
            _loc2_ = _loc2_ + ("?__cv=" + this.cdnHash);
         }
         return _loc2_;
      }
      
      private function initCollections() : void
      {
         this.callbackComplete = new Vector.<Function>();
         this.callbackError = new Vector.<Function>();
      }
      
      private function extractParams(param1:XML) : void
      {
         var _loc2_:XML = null;
         this.params = new Object();
         for each(_loc2_ in param1.param)
         {
            this.params[String(_loc2_.@name)] = String(_loc2_.@value);
         }
      }
      
      public function setData(param1:*, param2:uint, param3:Boolean = false) : void
      {
         this._data = param1;
         this.size = param2;
         if(param1 is ByteArray)
         {
            if(param3)
            {
               this.fileHash = §-_______§.§---___--§(param1 as ByteArray);
               this.fileHash = this.fileHash.substr(0,this.fileHash.length - 2) + "00";
            }
         }
      }
      
      public function getData() : *
      {
         return this._data;
      }
      
      public function disposeData() : void
      {
         this._data = null;
      }
   }
}
