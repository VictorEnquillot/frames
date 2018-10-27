(** {3 The functionalities for a Symbol for an Entity Fictive Basicnullary*.}  *)

let nam_cod = "Entity_fictive_basicnullary_symbol_v.ml";;

(** {6 Naming} *)

let name = function
  | Entity_fictive_basicnullary_symbol_t.Boolean s -> "boolean"
  | Entity_fictive_basicnullary_symbol_t.Float s -> "float"
  | Entity_fictive_basicnullary_symbol_t.Float_positive s -> "float_positive"
  | Entity_fictive_basicnullary_symbol_t.Float_zero_pi s -> "float_zero_pi"
  | Entity_fictive_basicnullary_symbol_t.Float_zero_twopi s -> "float_zero_twopi"
  | Entity_fictive_basicnullary_symbol_t.Integer s -> "integer"
  | Entity_fictive_basicnullary_symbol_t.Integer_positive s -> "integer_positive"
  | Entity_fictive_basicnullary_symbol_t.Integer_nonnegative s -> "integer_nonnegative"
  | Entity_fictive_basicnullary_symbol_t.String s -> "string"
;;

let string_off = function
  | Entity_fictive_basicnullary_symbol_t.Boolean s -> s
  | Entity_fictive_basicnullary_symbol_t.Float s -> s
  | Entity_fictive_basicnullary_symbol_t.Float_positive s -> s
  | Entity_fictive_basicnullary_symbol_t.Float_zero_pi s -> s
  | Entity_fictive_basicnullary_symbol_t.Float_zero_twopi s -> s
  | Entity_fictive_basicnullary_symbol_t.Integer s -> s
  | Entity_fictive_basicnullary_symbol_t.Integer_positive s -> s
  | Entity_fictive_basicnullary_symbol_t.Integer_nonnegative s -> s
  | Entity_fictive_basicnullary_symbol_t.String s -> s
;;

let longname sym_efb = 
  Format.sprintf "Entity_fictive_basicnullary_symbol_t.%s" 
    (String.capitalize (name sym_efb))
;;

let fullname sym_efb =
  Format.sprintf "%s \"%s\"" (longname sym_efb) (string_off sym_efb)
;;

let is_entity_fictive_basicnullary_symbol_of_string = 
  String_v.is_basictype_name_of_string
;;

let is_basicnullary sym_efb = 
  String_v.is_basictype_name_of_string (name sym_efb)
;;

(** {6 Listing} *)

let entity_fictive_basicnullary_symbol_list str =  (* alphabetic *)
  [
   Entity_fictive_basicnullary_symbol_t.Boolean str;
   Entity_fictive_basicnullary_symbol_t.Float str;
   Entity_fictive_basicnullary_symbol_t.Float_positive str;
   Entity_fictive_basicnullary_symbol_t.Float_zero_pi str;
   Entity_fictive_basicnullary_symbol_t.Float_zero_twopi str;
   Entity_fictive_basicnullary_symbol_t.Integer str;
   Entity_fictive_basicnullary_symbol_t.Integer_positive str;
   Entity_fictive_basicnullary_symbol_t.Integer_nonnegative str;
   Entity_fictive_basicnullary_symbol_t.String str;
 ]
;;

(** {6 Indexing} *)

let list_index_of_entity_fictive_basicnullary_symbol sym_efb =
  let str = string_off sym_efb in
  1 + (List_v.index_of_element_of_list sym_efb (entity_fictive_basicnullary_symbol_list str))
;;

let make nam s = 
  match nam with
  | "boolean" -> Entity_fictive_basicnullary_symbol_t.Boolean s 
  | "float" -> Entity_fictive_basicnullary_symbol_t.Float s
  | "float_positive" -> Entity_fictive_basicnullary_symbol_t.Float_positive s
  | "float_zero_pi" -> Entity_fictive_basicnullary_symbol_t.Float_zero_pi s
  | "float_zero_twopi" -> Entity_fictive_basicnullary_symbol_t.Float_zero_twopi s
  | "integer" -> Entity_fictive_basicnullary_symbol_t.Integer s
  | "integer_positive" -> Entity_fictive_basicnullary_symbol_t.Integer_positive s
  | "integer_nonnegative" -> Entity_fictive_basicnullary_symbol_t.Integer_nonnegative s
  | "string" -> Entity_fictive_basicnullary_symbol_t.String s
  | _ -> 
      let lis = entity_fictive_basicnullary_symbol_list "s" in
      Error_messages_v.print_error "fatal" nam_cod "make"
	(Format.sprintf "string >%s< were a kown Entity_fictive_basicnullary" nam)
	(Format.sprintf "the list of Entity_fictive_basicnullary is:@.   %s"
	   (List_v.name_with_separator name ";\n   " lis)
	) 
	"Check";
      failwith ("Not_Entity_fictive_basicnullary_symbol:Entity_fictive_basicnullary_symbol_v.ml:make")
;;

