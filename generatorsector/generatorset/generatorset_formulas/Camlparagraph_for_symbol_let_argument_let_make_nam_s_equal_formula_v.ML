(** {3 Camlparagraph_for_symbol_let_argument_let_make_nam_s_equal_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Camlline_symbol_list_by_camlparagraph_for_symbol_let_argument_let_make_nam_s_equal_sextup_provider_v";
   "Current : FGNR:Camlparagraph_for_symbol_let_argument_let_make_nam_s_equal_formula_v";
   "Needed-by : FGNR:Camlparagraph_for_symbol_let_argument_formula_v";
   "What-is-it : the Camlline_symbol list expressing Camlparagraph_for_symbol_let_argument Let_make_nam_s_equal";
   "How-is-it-done : by dividing the Camlparagraph into header body and footer";
   "How-is-it-done : the header is Camlline Let_make...";
   "How-is-it-done : the body for a topson leaf is Camlline | \"thing\" -> Thing_symbol_v.thing";
   "How-is-it-done : the body for a topson notleaf is Camllines let try ... with Failure ... in ... make";
   "Remark : ";
   "Improve : ";
   "Example : let make_of_topson_leaf nam s =";
   "Example :   let nam_low = String.lowercase nam in";
   "Example :   match nam_low with";
   "Example :   | \"vector\" -> vector";
   "Example :   | \"point\" -> point";
   "Example :   | _ -> failwith \"Not_a_topson_leaf:Geometryset_symbol_v.ml:make\"";
   "Example : ;;";
   "Example : let make_of_topson_notleaf nam s =";
   "Example :   try geometryset_symbol_of_triangle_symbol";
   "Example :       (Triangle_symbol_v.make nam s)";
   "Example :   with Failure \"Not_Triangle_symbol:Triangle_symbol_v:make\" ->";
   "Example :   try geometryset_symbol_of_coordinate_symbol";
   "Example :       (Coordinate_symbol_v.make nam s)";
   "Example :   with Failure \"Not_Coordinate_symbol:Coordinate_symbol_v:make\" ->";
   "Example :   failwith \"Not_a_topson_notleaf:Geometryset_symbol_v.ml:make\"";
   "Example : ;;";
   "Example : let make nam s =";
   "Example :     try make_of_topson_leaf nam s";
   "Example :     with Failure \"Not_a_topson_leaf:Geometryset_symbol_v.ml:make\" ->";
   "Example :     try make_of_topson_notleaf nam s";
   "Example :     with Failure \"Not_a_topson_notleaf:Geometryset_symbol_v.ml:make\" ->";
   "Example :     Error_messages_v.print_fatal_error nam_cod \"make\"";
   "Example :       (Format.sprintf \"strings \"%s\" and \"%s\" represent an existing Vector subtype\" nam s)";
   "Example :       \"it does not exists\"";
   "Example :       \"Check file vector_symbol_v.ml\" ";
   "Example : ;;";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name for_cla = "let_argument_let_make_nam_s_equal_formula";;

let longname for_cla =
  Format.sprintf "Camlparagraph_for_symbol_let_argument_symbol_formula_t.%s" 
    (String.capitalize (name for_cla))

let string_off for_cla = "";;

let fullname for_cla =
  Format.sprintf "%s \"%s\"" (longname for_cla) (string_off for_cla)
;;

(** {6 Topson_leaf.} *)

let entity_topson_leaf_symbol_list sep_cla =
  let (sym_cla, sym_ite, sym_usf, sym_cof, sym_ent_top, sym_cat, sym_dos) = sep_cla in
  let sym_enp_top =
    Entity_symbol_v.entity_proper_symbol_off_entity_symbol 
      sym_ent_top
  in
  let tri_enp = (sym_enp_top, sym_cat, sym_dos) in
  Entity_topson_leaf_symbol_list_by_entity_proper_tritup_provider_v.provide 
    tri_enp
;;

let topson_leaf_header_camlline_symbol_list sep_cla =
  [
   Camlline_symbol_v.space_let_nam_low_equal_string_lowercase_nam_in;
   Camlline_symbol_v.space_match_nam_low_with;
 ]
;;

let topson_leaf_body_camlline_symbol_list sep_cla =
(* Ex.:  | "vector" -> vector s *)
  [
   Camlline_symbol_v.pipe_ecstring_arrow_ec_space_sarg
 ]
;;

let topson_leaf_footer_camlline_symbol_list sep_cla =
  [
   Camlline_constant_function_symbol_v.pipe_underscore_arrow;
 ]
;;

(** {6 Topson_notleaf.} *)

let entity_topson_notleaf_symbol_list sep_cla =
  let (sym_cla, sym_ite, sym_usf, sym_cof, sym_ent_top, sym_cat, sym_dos) = sep_cla in
  let sym_enp_top =
    Entity_symbol_v.entity_proper_symbol_off_entity_symbol 
      sym_ent_top
  in
  let tri_enp = (sym_enp_top, sym_cat, sym_dos) in
  Entity_topson_notleaf_symbol_list_by_entity_proper_tritup_provider_v.provide 
    tri_enp
;;

let topson_notleaf_body_camlline_symbol_list sep_cla =
  [  
     Camlline_symbol_v.comment_s_comment; 
     Camlline_symbol_v.try_et_symbol_of_es_symbol;
     Camlline_symbol_v.lpar_es_symbol_vdot_make_of_string_of_string_rpar;
     Camlline_symbol_v.with_failure_not_es_symbol_arrow;
   ]
;;

let topson_notleaf_footer_camlline_symbol_list sep_cla =
  [
   Camlline_symbol_v.failwith_not_es_symbol
 ]
;;

(* Whole Camlparagraph *)

let header_camlline_symbol_list sep_cla =
  let son_lea_cou = List.length (entity_topson_leaf_symbol_list sep_cla) in
  let son_nol_cou = List.length (entity_topson_notleaf_symbol_list sep_cla) in 

  let hea_lea_l =
    match (son_lea_cou, son_nol_cou) with
    | (0, 0) -> 
	Error_messages_v.print_fatal_error nam_cod "header_camlline_symbol_list"
	  "there were some topson" "zero for both leaf and notleaf topson"
	  "Check Entity_topson_leaf_symbol_list_by_entity_proper_tritup_provider_v.ml 
	  or Entity_topson_notleaf_symbol_list_by_entity_proper_tritup_provider_v"
    | (0, _) ->  
	[]
    | (_, 0)
    | (_, _) ->
	topson_leaf_header_camlline_symbol_list sep_cla
  in
  
  Camlline_symbol_v.let_make_nam_s_equal :: hea_lea_l
;;

let body_camlline_symbol_list sep_cla =
  let son_lea_cou = List.length (entity_topson_leaf_symbol_list sep_cla) in
  let son_nol_cou = List.length (entity_topson_notleaf_symbol_list sep_cla) in 

  match (son_lea_cou, son_nol_cou) with
  | (0, 0) -> 
      Error_messages_v.print_fatal_error nam_cod "body_camlline_symbol_list"
	"there were some topson" "zero for both leaf and notleaf topson"
	"Check Entity_topson_leaf_symbol_list_by_entity_proper_tritup_provider_v.ml 
	or Entity_topson_notleaf_symbol_list_by_entity_proper_tritup_provider_v"
	
  | (0, n) ->  
      
      let son_nol_l = topson_notleaf_body_camlline_symbol_list sep_cla in
      List_v.repeated_list_of_count_of_list son_nol_cou son_nol_l
	
  | (l, 0) ->
      
      let son_lea_l = topson_leaf_body_camlline_symbol_list sep_cla in
      List_v.repeated_list_of_count_of_list son_lea_cou son_lea_l
	
  | (l, n) ->
      
      let son_lea_l = topson_leaf_body_camlline_symbol_list sep_cla in
      let bod_lea = 
      List_v.repeated_list_of_count_of_list 
	  son_lea_cou 
	  son_lea_l
      in

      let son_nol_l = topson_notleaf_body_camlline_symbol_list sep_cla in
      let bod_nol = 
      List_v.repeated_list_of_count_of_list 
	  son_nol_cou 
	  son_nol_l
      in
      
      bod_lea @ bod_nol
;;

let footer_camlline_symbol_list sep_cla =
  [  
     Camlline_symbol_v.print_fatal_error_make_of_string_of_string;
     Camlline_symbol_v.double_semicolon;
   ]
;;

(** {6 Building.} *)

let build sep_cla =
[
Section_symbol_v.
]
;;

(** {6 Making.} *)

let make sym_cla soi_cap =
  let tag_cla = Tag_v.make sym_cla soi_cap in
  let sep_cla =
    Camlparagraph_for_symbol_let_argument_tag_v.camlparagraph_for_symbol_let_argument_septup_off_camlparagraph_for_symbol_let_argument_tag 
      tag_cla
  in
  let sym_cap_l = build sep_cla in
  let soi_cap_l = 
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_cap_l)
      soi_cap
  in

  List.map2 Tag_v.make sym_cap_l soi_cap_l 
;;

(** {6 Retrieving.} *)

let retrieve tag_cla = 
  let sym_cla = Tag_v.symbol_off_tag tag_cla in
  let soi_cap = Tag_v.sole_index_off_tag tag_cla in
  make sym_cla soi_cap
;;

