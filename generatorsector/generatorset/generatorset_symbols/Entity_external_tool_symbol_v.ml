(** {3 The functionalities for a Symbol for an Entity External Tool.}  *)

let nam_cod = "Entity_external_tool_symbol_v.ml";;

(** {6 Naming} *)

let name = function
  | Entity_external_tool_symbol_t.Error_messages -> "error_messages"
  | Entity_external_tool_symbol_t.Messages -> "messages"
  | Entity_external_tool_symbol_t.Utils -> "utils"
;;

let longname sym_ext = 
  Format.sprintf "Entity_external_tool_symbol_t.%s" 
    (String.capitalize (name sym_ext))
;;

let string_off sym_ext = "";; 

let fullname sym_ito =
  Format.sprintf "%s \"%s\"" (longname sym_ito) (string_off sym_ito)
;;

let is_entity_external_tool_symbol_of_string = function
  | "error_messages" 
  | "messages" 
  | "utils" -> true
  | _ -> false
;;

let make = function
  | "error_messages" -> Entity_external_tool_symbol_t.Error_messages
  | "messages" -> Entity_external_tool_symbol_t.Messages   
  | "utils" -> Entity_external_tool_symbol_t.Utils   
  | s -> failwith (Format.sprintf "Not_entity_external_tool_symbol %s" s) 
;;

(** {6 Listing} *)

let entity_external_tool_symbol_list str =  (* alphabetic *)
  [
   Entity_external_tool_symbol_t.Error_messages;
   Entity_external_tool_symbol_t.Messages;
   Entity_external_tool_symbol_t.Utils;
 ]
;;

(** {6 Indexing} *)

let list_index_of_entity_external_tool_symbol sym_ext =
  let str = string_off sym_ext in
  1 + (List_v.index_of_element_of_list sym_ext (entity_external_tool_symbol_list str))
;;
