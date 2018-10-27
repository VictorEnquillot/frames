(** {3 The Key list for Provider management.}  *)

module Dbl_t = Doublet_list_t

(** {6 Typing.} *)

type key_list = (string, string) Dbl_t.doublet_list
;;
(** Example : 
    [
    ("entity", "atom"); 
    ("codefile", "function"); 
    ("category", "symbol"); 
    ("item", "extraction"); 
    ] 
         |             |
     type name      symbol name

    To simulate code_path. 

    string -> code_element_symbol

type code_element_symbol =
    | Entity_symbol of entity_symbol
    | Category_symbol of ...
    | Codefile_symbol
    | Item_symbol

 The hierarchy of Caml code elements, then key_list is no more a doublet list

   Example : 
    [
    Entity_symbol (Ens_t.String "atom"); 
    Codefile_symbol Cfs_t.function; 
    Category_symbol "symbol"; 
    Item_symbol "extraction"; 
    ] 
*)

