(** {3 Camlline_constant_pervasive_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlline_constant_pervasive_formula_v";
   "Needed-by : FGNR:Camlline_uno_function_formula_v";
   "What-is-it : a Formula type defining directly its Leaf Sons Datastructure";
   "What-is-it : the Camlline_tag Datastructure expressing the Current formula";
   "Remark : It is a Constant_pervasive type";
   "Improve : ";
   "Example : ";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_ccp =
  match for_ccp with
  | Camlline_constant_pervasive_formula_t.Basic_type _ ->
      Camlline_constant_pervasive_symbol_t.Basic_type

  | Camlline_constant_pervasive_formula_t.Begin_line _ ->
      Camlline_constant_pervasive_symbol_t.Begin_line

  | Camlline_constant_pervasive_formula_t.Bracket_left _ ->
      Camlline_constant_pervasive_symbol_t.Bracket_left

  | Camlline_constant_pervasive_formula_t.Bracket_right _ ->
      Camlline_constant_pervasive_symbol_t.Bracket_right

  | Camlline_constant_pervasive_formula_t.Curly_bracket_left _ ->
      Camlline_constant_pervasive_symbol_t.Curly_bracket_left

  | Camlline_constant_pervasive_formula_t.Curly_bracket_right _ ->
      Camlline_constant_pervasive_symbol_t.Curly_bracket_right

  | Camlline_constant_pervasive_formula_t.Double_semicolon _ ->
      Camlline_constant_pervasive_symbol_t.Double_semicolon

  | Camlline_constant_pervasive_formula_t.Else_line _ ->
      Camlline_constant_pervasive_symbol_t.Else_line

  | Camlline_constant_pervasive_formula_t.Empty_line _ ->
      Camlline_constant_pervasive_symbol_t.Empty_line

  | Camlline_constant_pervasive_formula_t.End_line _ ->
      Camlline_constant_pervasive_symbol_t.End_line

  | Camlline_constant_pervasive_formula_t.Item_title _ ->
      Camlline_constant_pervasive_symbol_t.Item_title 

  | Camlline_constant_pervasive_formula_t.Parenthesis_left _ ->
      Camlline_constant_pervasive_symbol_t.Parenthesis_left

  | Camlline_constant_pervasive_formula_t.Parenthesis_right _ ->
      Camlline_constant_pervasive_symbol_t.Parenthesis_right

  | Camlline_constant_pervasive_formula_t.Semicolon _ ->
      Camlline_constant_pervasive_symbol_t.Semicolon

  | Camlline_constant_pervasive_formula_t.Then_false _ ->
      Camlline_constant_pervasive_symbol_t.Then_false

;;

(** {6 Naming_for_formula} *)

let name for_ccp = 
  let sym_ccp = symbol_of_formula for_ccp in
  Camlline_constant_pervasive_symbol_v.name sym_ccp
;;
(* ***

let string_off for_ccp =
  let sym_ccp = symbol_of_formula for_ccp in
  Camlline_constant_pervasive_symbol_v.string_off sym_ccp
;;

let longname for_ccp =
  Format.sprintf "Camlline_constant_pervasive_formula_t.%s" 
    (String.capitalize (name for_ccp))

let fullname for_ccp =
  Format.sprintf "%s \"%s\"" (longname for_ccp) (string_off for_ccp)
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_ccp soi_cal =
  let sym_ent_l = 
    Camlline_constant_pervasive_interface_v.make 
      sym_ccp
  in
  let soi_ent_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_ent_l)
      soi_cal
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_entity_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_ent_l soi_ent_l;
  
  List.map2 Tag_v.make sym_ent_l soi_ent_l
;;

(** {6 Making_for_formula} *)

let make sym_ccp soi_cal =
  let tag_ent_l = build_n_store sym_ccp soi_cal in

  match sym_ccp with
  | Camlline_constant_pervasive_symbol_t.Basic_type ->
      Camlline_constant_pervasive_formula_t.Basic_type tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.Begin_line ->
      Camlline_constant_pervasive_formula_t.Begin_line tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.Bracket_left ->
      Camlline_constant_pervasive_formula_t.Bracket_left tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.Bracket_right ->
      Camlline_constant_pervasive_formula_t.Bracket_right tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.Curly_bracket_left ->
      Camlline_constant_pervasive_formula_t.Curly_bracket_left tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.Curly_bracket_right ->
      Camlline_constant_pervasive_formula_t.Curly_bracket_right tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.Double_semicolon ->
      Camlline_constant_pervasive_formula_t.Double_semicolon tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.Else_line ->
      Camlline_constant_pervasive_formula_t.Else_line tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.Empty_line ->
      Camlline_constant_pervasive_formula_t.Empty_line tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.End_line ->
      Camlline_constant_pervasive_formula_t.End_line tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.Item_title ->
      Camlline_constant_pervasive_formula_t.Item_title tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.Parenthesis_left ->
      Camlline_constant_pervasive_formula_t.Parenthesis_left tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.Parenthesis_right ->
      Camlline_constant_pervasive_formula_t.Parenthesis_right tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.Semicolon ->
      Camlline_constant_pervasive_formula_t.Semicolon tag_ent_l
	
  | Camlline_constant_pervasive_symbol_t.Then_false ->
      Camlline_constant_pervasive_formula_t.Then_false tag_ent_l
;;

(** {6 Retrieving} *)

let retrieve tag_ccp =
  let soi_gro = Tag_v.sole_index_off_tag tag_ccp in
  let sym_ccp = Tag_v.entity_off_tag tag_ccp in
  make sym_ccp soi_gro 
;; 

(** {6 Builder_tag_listing} *)

let entity_tag_list_off_camlline_constant_pervasive_formula for_ccp =
  match for_ccp with
  | Camlline_constant_pervasive_formula_t.Basic_type tag_ent_l ->
 tag_ent_l

  | Camlline_constant_pervasive_formula_t.Begin_line tag_ent_l ->
 tag_ent_l

  | Camlline_constant_pervasive_formula_t.Bracket_left tag_ent_l ->
 tag_ent_l

  | Camlline_constant_pervasive_formula_t.Bracket_right tag_ent_l ->
 tag_ent_l

  | Camlline_constant_pervasive_formula_t.Curly_bracket_left tag_ent_l ->
 tag_ent_l

  | Camlline_constant_pervasive_formula_t.Curly_bracket_right tag_ent_l ->
 tag_ent_l

  | Camlline_constant_pervasive_formula_t.Double_semicolon tag_ent_l ->
 tag_ent_l

  | Camlline_constant_pervasive_formula_t.Else_line tag_ent_l ->
 tag_ent_l

  | Camlline_constant_pervasive_formula_t.Empty_line tag_ent_l ->
 tag_ent_l

  | Camlline_constant_pervasive_formula_t.End_line tag_ent_l ->
 tag_ent_l

  | Camlline_constant_pervasive_formula_t.Item_title tag_ent_l ->
      tag_ent_l
	
  | Camlline_constant_pervasive_formula_t.Parenthesis_left tag_ent_l ->
      tag_ent_l
	
  | Camlline_constant_pervasive_formula_t.Parenthesis_right tag_ent_l ->
      tag_ent_l

  | Camlline_constant_pervasive_formula_t.Semicolon tag_ent_l ->
 tag_ent_l

  | Camlline_constant_pervasive_formula_t.Then_false tag_ent_l ->
 tag_ent_l

;;

let entity_tag_list_off_camlline_constant_pervasive_tag tag_ccp =
  let for_ccp = retrieve tag_ccp in
  entity_tag_list_off_camlline_constant_pervasive_formula for_ccp
;; 

(** {6 Iterating_for_formula_constant_pervasive.} *)

let map f_of_tag_ent for_ccp = 
  let tag_ent_l = entity_tag_list_off_camlline_constant_pervasive_formula for_ccp in
  List.map f_of_tag_ent tag_ent_l
;;

let iter f_of_tag_ent for_ccp = 
  let tag_ent_l = entity_tag_list_off_camlline_constant_pervasive_formula for_ccp in
  List.iter f_of_tag_ent tag_ent_l ;;

let map2 f_of_tag_ent for_ccp_1 for_ccp_2  = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_constant_pervasive_formula for_ccp_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_constant_pervasive_formula for_ccp_2 in
  List.map2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2
;;

let iter2 f_of_tag_ent for_ccp_1 for_ccp_2 = 
  let tag_ent_l_1 = entity_tag_list_off_camlline_constant_pervasive_formula for_ccp_1 in
  let tag_ent_l_2 = entity_tag_list_off_camlline_constant_pervasive_formula for_ccp_2 in
  List.iter2 f_of_tag_ent tag_ent_l_1 tag_ent_l_2 
;;

