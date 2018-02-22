package §--__----§
{
   public class §-_--___§
   {
       
      
      private var §-____--__§:Boolean;
      
      private var value;
      
      private var §-_--____§:§-_---__-§;
      
      private var §--_--§:§-_____--_§;
      
      public function §-_--___§(param1:String, param2:Boolean)
      {
         super();
         this.§-____--__§ = param2;
         this.§-_--____§ = new §-_---__-§(param1,param2);
         this.§-_-__-§();
         this.value = this.§-__-__--§();
         if(param2 && this.§-_-__-§() != null)
         {
            this.§-_--____§.§-__--_--§("Unexpected characters left in input stream");
         }
      }
      
      private function §-_-__-§() : §-_____--_§
      {
         return this.§--_--§ = this.§-_--____§.§--_---_-§();
      }
      
      private function §-_§() : Object
      {
         var _loc2_:String = null;
         var _loc1_:Object = new Object();
         this.§-_-__-§();
         if(this.§--_--§.type == §-_----_-§.§-____--§)
         {
            return _loc1_;
         }
         if(!this.§-____--__§ && this.§--_--§.type == §-_----_-§.§-____-_§)
         {
            this.§-_-__-§();
            if(this.§--_--§.type == §-_----_-§.§-____--§)
            {
               return _loc1_;
            }
            this.§-_--____§.§-__--_--§("Leading commas are not supported.  Expecting \'}\' but found " + this.§--_--§.value);
         }
         while(true)
         {
            if(this.§--_--§.type == §-_----_-§.§---_-_-§)
            {
               _loc2_ = String(this.§--_--§.value);
               this.§-_-__-§();
               if(this.§--_--§.type == §-_----_-§.§-______--§)
               {
                  this.§-_-__-§();
                  _loc1_[_loc2_] = this.§-__-__--§();
                  this.§-_-__-§();
                  if(this.§--_--§.type == §-_----_-§.§-____--§)
                  {
                     break;
                  }
                  if(this.§--_--§.type == §-_----_-§.§-____-_§)
                  {
                     this.§-_-__-§();
                     if(!this.§-____--__§)
                     {
                        if(this.§--_--§.type == §-_----_-§.§-____--§)
                        {
                           return _loc1_;
                        }
                     }
                  }
                  else
                  {
                     this.§-_--____§.§-__--_--§("Expecting } or , but found " + this.§--_--§.value);
                  }
               }
               else
               {
                  this.§-_--____§.§-__--_--§("Expecting : but found " + this.§--_--§.value);
               }
            }
            else
            {
               this.§-_--____§.§-__--_--§("Expecting string but found " + this.§--_--§.value);
            }
         }
         return _loc1_;
      }
      
      private function §---_-§() : Array
      {
         var _loc1_:Array = new Array();
         this.§-_-__-§();
         if(this.§--_--§.type == §-_----_-§.§-_--__-§)
         {
            return _loc1_;
         }
         if(!this.§-____--__§ && this.§--_--§.type == §-_----_-§.§-____-_§)
         {
            this.§-_-__-§();
            if(this.§--_--§.type == §-_----_-§.§-_--__-§)
            {
               return _loc1_;
            }
            this.§-_--____§.§-__--_--§("Leading commas are not supported.  Expecting \']\' but found " + this.§--_--§.value);
         }
         while(true)
         {
            _loc1_.push(this.§-__-__--§());
            this.§-_-__-§();
            if(this.§--_--§.type == §-_----_-§.§-_--__-§)
            {
               break;
            }
            if(this.§--_--§.type == §-_----_-§.§-____-_§)
            {
               this.§-_-__-§();
               if(!this.§-____--__§)
               {
                  if(this.§--_--§.type == §-_----_-§.§-_--__-§)
                  {
                     return _loc1_;
                  }
               }
            }
            else
            {
               this.§-_--____§.§-__--_--§("Expecting ] or , but found " + this.§--_--§.value);
            }
         }
         return _loc1_;
      }
      
      public function §-__--_-§() : *
      {
         return this.value;
      }
      
      private function §-__-__--§() : Object
      {
         if(this.§--_--§ == null)
         {
            this.§-_--____§.§-__--_--§("Unexpected end of input");
         }
         switch(this.§--_--§.type)
         {
            case §-_----_-§.§--_-_-§:
               return this.§-_§();
            case §-_----_-§.§-----___§:
               return this.§---_-§();
            case §-_----_-§.§---_-_-§:
            case §-_----_-§.§---_----§:
            case §-_----_-§.§--_--_-§:
            case §-_----_-§.§-_-_-_-_§:
            case §-_----_-§.§--___§:
               return this.§--_--§.value;
            case §-_----_-§.§---_--§:
               if(!this.§-____--__§)
               {
                  return this.§--_--§.value;
               }
               this.§-_--____§.§-__--_--§("Unexpected " + this.§--_--§.value);
            default:
               this.§-_--____§.§-__--_--§("Unexpected " + this.§--_--§.value);
               return null;
         }
      }
   }
}
