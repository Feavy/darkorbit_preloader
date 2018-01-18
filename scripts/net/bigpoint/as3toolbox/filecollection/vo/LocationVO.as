package net.bigpoint.as3toolbox.filecollection.vo
{
   public class LocationVO
   {
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
      }
      
      public var id:String;
      
      public var path:String;
      
      public function LocationVO(param1:String, param2:String)
      {
         if(_loc4_)
         {
            super();
            if(_loc3_)
            {
            }
            loop0:
            while(!_loc4_)
            {
               while(true)
               {
                  this.id = param1;
                  loop1:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.path = param2;
                        if(_loc4_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  break loop0;
               }
            }
            return;
         }
         if(!_loc4_)
         {
            §§goto(addr46);
         }
         §§goto(addr73);
      }
   }
}
