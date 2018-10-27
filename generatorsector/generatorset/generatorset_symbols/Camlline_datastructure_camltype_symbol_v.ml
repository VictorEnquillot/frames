(** {3 Camlline_datastructure_camltype_symbol_v}  *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : ";
   "Current : SGNR:Camlline_datastructure_camltype_symbol_v";
   "Needed-by : ";
   "What-is-it : ";
   "How-is-it-done : ";
   "Remark : ";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Camlline_datastructure_camltype_symbol_t.Lpar_a_tag_rpar s ->
      "lpar_a_tag_rpar"     (* Ex.: Tree_v.name A_v.name t *)
  | Camlline_datastructure_camltype_symbol_t.Lpar_a_b_tag_rpar s ->
      "lpar_a_b_tag_rpar"   (* Ex.: Dbt_v.name A_v.name B_v.name t *)
  | Camlline_datastructure_camltype_symbol_t.Lpar_a_b_c_tag_rpar s ->
      "lpar_a_b_c_tag_rpar" (* Ex.: Trp_v.name A_v.name B_v.name C_v.name t *)
;;

let longname sym_cdf = 
  Format.sprintf "Entity_external_datastructure_symbol_t.%s" 
    (String.capitalize (name sym_cdf))
;;

let string_off = function
  | Camlline_datastructure_camltype_symbol_t.Lpar_a_tag_rpar s -> s
  | Camlline_datastructure_camltype_symbol_t.Lpar_a_b_tag_rpar s -> s
  | Camlline_datastructure_camltype_symbol_t.Lpar_a_b_c_tag_rpar s -> s
;;

let fullname sym_cdf =
  Format.sprintf "%s \"%s\"" (longname sym_cdf) (string_off sym_cdf)
;;

(** {6 Abbreviating} *)

let lpar_a_tag_rpar s = Camlline_datastructure_camltype_symbol_t.Lpar_a_tag_rpar s;;
let lpar_a_b_tag_rpar s = Camlline_datastructure_camltype_symbol_t.Lpar_a_b_tag_rpar s;;
let lpar_a_b_c_tag_rpar s = Camlline_datastructure_camltype_symbol_t.Lpar_a_b_c_tag_rpar s;;

(** {6 Listing} *)

let symbol_list str =  (* alphabetic *)
  [
   Camlline_datastructure_camltype_symbol_t.Lpar_a_tag_rpar str;
   Camlline_datastructure_camltype_symbol_t.Lpar_a_b_tag_rpar str;
   Camlline_datastructure_camltype_symbol_t.Lpar_a_b_c_tag_rpar str;
 ]
;;

(** {6 Indexing} *)

let list_index_of_camlline_datastructure_camltype_symbol sym_cdf =
  let str = string_off sym_cdf in
  1 + (List_v.index_of_element_of_list sym_cdf (symbol_list str))
;;

let hash_index_of_camlline_datastructure_camltype_symbol sym_cdf =
  let str = string_off sym_cdf in
  Hashtbl.hash str
;;
