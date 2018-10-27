(** {3 The Symbol for an Item in a Codefile.}  *)

type item_symbol =
  | Abbreviating_symbol
  | Building_symbol
  | Ending_symbol
  | Extracting_symbol
  | Heading_symbol
  | Including_symbol
  | Making_symbol
  | Modules_symbol
  | Naming_symbol
  | Printing_symbol
  | Providing_symbol
  | Querying_symbol
  | Register_symbol
  | Retrieving_symbol
  | Storing_symbol
  | Typing_symbol
  | Upgrading_symbol
;;

(** The items in a Codefile

   categories   s symbol   m tag   f formula   p provider   v value

   module        type      function    value  private_f private_v      
--------------------------------------------------------------------------------
   Heading        all        all        all      all       all

   Modules        all        all                 all

   Typing       s m f v                         s m f v   s m f v

   Making                   s m f v    s m f v  s m f v   s m f v

   Querying                 s m f v    s m f v  s m f v   s m f v

   Extracting               s m f v    s m f v  s m f v   s m f v 

   Upgrading                s m f v    s m f v  s m f v   s m f v
   
   Register                   p          p  

   Retrieving                f p         f p  

   Building                  f p         f p  

   Storing                    p          p  

   Abbreviating             s m f v    s m f v  s m f v   s m f v

   Including         

   Naming

   Printing

   Ending        s m f v    s m f v    s m f v  s m f v   s m f v


*)
