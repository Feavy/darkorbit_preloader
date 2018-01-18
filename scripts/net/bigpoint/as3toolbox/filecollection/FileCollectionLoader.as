package net.bigpoint.as3toolbox.filecollection
{
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   
   public class FileCollectionLoader extends URLLoader
   {
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
      }
      
      public var fileVO:FileVO;
      
      public var isLoading:Boolean;
      
      public function FileCollectionLoader()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super();
         }
      }
      
      public function loadFile(param1:Boolean = false, param2:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.isLoading = true;
            if(!_loc6_)
            {
            }
            addr69:
            addr79:
            load(new URLRequest(param2 + this.fileVO.getFileName(param1)));
            return;
         }
         §§push(this.fileVO.numTries);
         if(_loc6_)
         {
            §§push(§§pop() + 1);
         }
         if(_loc6_)
         {
            _loc3_.numTries = _loc4_;
         }
         if(!_loc5_)
         {
            §§goto(addr69);
         }
         §§goto(addr79);
      }
   }
}
