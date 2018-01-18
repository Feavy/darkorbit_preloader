package net.bigpoint.as3toolbox.filecollection.event
{
   import flash.events.Event;
   
   public class FileCollectionEvent extends Event
   {
      
      public static const RESOURCE_FILE_LOADED:String = "FileCollectionEvent.RESOURCE_FILE_LOADED";
      
      public static const RESOURCE_FILE_NOT_FOUND:String = "FileCollectionEvent.RESOURCE_FILE_NOT_FOUND";
      
      public static const EMBEDDED_OBJECT_NOT_FOUND:String = "FileCollectionEvent.EMBEDDED_OBJECT_NOT_FOUND";
      
      public static const RESOURCE_FILE_SECURITY_BREACH:String = "FileCollectionEvent.RESOURCE_FILE_SECURITY_BREACH";
      
      public static const RESOURCE_FILE_FORMAT_ERROR:String = "FileCollectionEvent.RESOURCE_FILE_SECURITY_BREACH";
      
      public static const ALL_FILES_LOADED:String = "FileCollectionEvent.ALL_FILES_LOADED";
      
      public static const RESOURCE_XML_PARSED:String = "FileCollectionEvent.RESOURCE_XML_PARSED";
      
      public static const RESOURCE_CLEARED:String = "FileCollectionEvent.RESOURCE_CLEARED";
      
      {
         if(_loc2_)
         {
            RESOURCE_FILE_LOADED = "FileCollectionEvent.RESOURCE_FILE_LOADED";
            if(_loc2_)
            {
               if(_loc1_)
               {
                  while(true)
                  {
                     ALL_FILES_LOADED = "FileCollectionEvent.ALL_FILES_LOADED";
                     if(_loc2_)
                     {
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              if(_loc2_)
                              {
                              }
                              RESOURCE_XML_PARSED = "FileCollectionEvent.RESOURCE_XML_PARSED";
                              if(_loc1_)
                              {
                              }
                              addr120:
                              while(!_loc2_)
                              {
                                 while(true)
                                 {
                                    EMBEDDED_OBJECT_NOT_FOUND = "FileCollectionEvent.EMBEDDED_OBJECT_NOT_FOUND";
                                 }
                              }
                              return;
                           }
                           loop3:
                           while(true)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    addr102:
                                    while(true)
                                    {
                                       RESOURCE_FILE_SECURITY_BREACH = "FileCollectionEvent.RESOURCE_FILE_SECURITY_BREACH";
                                    }
                                 }
                                 §§goto(addr131);
                              }
                              addr161:
                              while(true)
                              {
                                 if(!_loc2_)
                                 {
                                    break loop3;
                                 }
                                 §§goto(addr131);
                              }
                           }
                           §§goto(addr172);
                        }
                        addr91:
                        while(_loc1_)
                        {
                           §§goto(addr102);
                        }
                        continue;
                     }
                     if(!_loc2_)
                     {
                     }
                  }
               }
               while(true)
               {
                  RESOURCE_FILE_NOT_FOUND = "FileCollectionEvent.RESOURCE_FILE_NOT_FOUND";
                  §§goto(addr161);
               }
            }
            while(true)
            {
               if(_loc1_)
               {
                  addr87:
                  while(true)
                  {
                     RESOURCE_FILE_FORMAT_ERROR = "FileCollectionEvent.RESOURCE_FILE_SECURITY_BREACH";
                     §§goto(addr91);
                  }
               }
               addr117:
               while(true)
               {
                  RESOURCE_CLEARED = "FileCollectionEvent.RESOURCE_CLEARED";
                  §§goto(addr120);
               }
            }
         }
         while(true)
         {
            if(!_loc2_)
            {
               §§goto(addr117);
            }
            else
            {
               §§goto(addr87);
            }
            §§goto(addr102);
         }
      }
      
      private var _xml:XML;
      
      private var _text:String;
      
      public function FileCollectionEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super(param1,param2,param3);
         }
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function set text(param1:String) : void
      {
         this._text = param1;
      }
      
      public function get xml() : XML
      {
         return this._xml;
      }
      
      public function set xml(param1:XML) : void
      {
         this._xml = param1;
      }
   }
}
