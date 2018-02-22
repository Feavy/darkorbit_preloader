package net.bigpoint.as3toolbox.filecollection
{
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import net.bigpoint.as3toolbox.filecollection.vo.FileVO;
   
   public class FileCollectionLoader extends URLLoader
   {
       
      
      public var fileVO:FileVO;
      
      public var isLoading:Boolean;
      
      public function FileCollectionLoader()
      {
         super();
      }
      
      public function loadFile(param1:Boolean = false, param2:String = "") : void
      {
         this.isLoading = true;
         this.fileVO.numTries++;
         load(new URLRequest(param2 + this.fileVO.getFileName(param1)));
      }
   }
}
