(** {3 this_container_v} *)

(** {6 Documenting_for_container} *)

let documentation () = 
[
  "Current : FFIG:this_container_v";
  "Needs: ";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_mod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_container} *)

let name = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      Sibling_1_container_v.name con_sib_1

  | This_container_t.Sibling_2_container con_sib_2 ->
      Sibling_2_container_v.name con_sib_2
;;


(** {6 String_offing_for_container} *)

let string_off = function
  | This_container_t.Sibling_1_container con_sib_1 ->
      Sibling_1_container_v.string_off con_sib_1

  | This_container_t.Sibling_2_container con_sib_2 ->
      Sibling_2_container_v.string_off con_sib_2
;;

(** {6 Longnaming_for_container} *)

let longname con_ecl =
  Format.sprintf "this_container_t.%s" (String.capitalize (name con_ecl))
;;

(** {6 Fullnaming_for_container} *)

let fullname con_ecl =
  Format.sprintf "%s \"%s\"" (longname con_ecl) (string_off con_ecl)
;;

(** {6 Extracting_topson_notleaf_for_container} *)

let sibling_1_container_off_this_container = function
  | This_container_t.Sibling_1_container con_sib_1 -> con_sib_1
  | con_ecl -> Error_messages_v.print_fatal_error
      nam_mod "sibling_1_container_off_this_container"
      "Sibling_1_container"
      (name con_ecl) "check"
;;

let sibling_2_container_off_this_container = function
  | This_container_t.Sibling_2_container con_sib_2 -> con_sib_2
  | con_ecl -> Error_messages_v.print_fatal_error
      nam_mod "sibling_2_container_off_this_container"
      "Sibling_2_container"
      (name con_ecl) "check"
;;

(** {6 Querying_topson_notleaf_for_container} *)

let is_sibling_1_container_off_this_container = function
  | This_container_t.Sibling_1_container _ -> true
  | _ -> false
;;

let is_sibling_2_container_off_this_container = function
  | This_container_t.Sibling_2_container _ -> true
  | _ -> false
;;

(** {6 Upgrading_topson_notleaf_for_container} *)

let this_container_of_sibling_1_container con_sib_1 = 
  This_container_t.Sibling_1_container con_sib_1
;;

let this_container_of_sibling_2_container con_sib_2 = 
  This_container_t.Sibling_2_container con_sib_2
;;

(** {6 Making} *)

(** {6 Retrieving} *)

let container_of_tag tag_ecl =
  let soi_ecl = Tag_v.sole_index_off_tag tag_ecl in
  let sym_ecl = Tag_v.entity_off_tag tag_ecl in
  match sym_ecl with
  | This_symbol_t.Sibling_1_symbol sym_sib_1 ->
      let tag_sib_1 = Tag_v.make sym_sib_1 soi_ecl in
      let con_sib_1 = Sibling_1_container_v.container_of_tag tag_sib_1 in
      this_container_of_sibling_1_container con_sib_1 

  | This_symbol_t.Sibling_2_symbol sym_sib_2 ->
      let tag_sib_2 = Tag_v.make sym_sib_2 soi_ecl in
      let con_sib_2 = Sibling_2_container_v.container_of_tag tag_sib_2 in
      this_container_of_sibling_2_container con_sib_2 
;;

(** {6 Fence Elementary_units Tag} *)

