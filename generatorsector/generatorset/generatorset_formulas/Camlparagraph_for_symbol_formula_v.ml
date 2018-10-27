(** {3 Camlparagraph_for_symbol_formula_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : FGNR:Camlparagraph_for_symbol_formula_v";
   "Needed-by : FGNR:Camlparagraph_formula_v";
   "What-is-it : It upgrades Formula type as Symbol type";
   "Builders : Camlparagraph";
   "Builder_data : Camlline";
   "Remark : It is a Node and Stem type";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Symbolizing} *)

let symbol_of_formula for_cfs = 
  match for_cfs with
  | Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_let_formula for_cc1 ->
      Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
        (Camlparagraph_for_symbol_let_formula_v.symbol_of_formula for_cc1)

  | Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_type _ ->
      Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type
;;

(** {6 Naming_for_formula} *)

let name for_cfs =
  let sym_cfs = symbol_of_formula for_cfs in
  Camlparagraph_for_symbol_symbol_v.name sym_cfs
;;
(* ***
let longname for_cfs =
  let sym_cfs = symbol_of_formula for_cfs in
  Camlparagraph_for_symbol_symbol_v.longname sym_cfs
;;

let string_off for_cfs =
  let sym_cfs = symbol_of_formula for_cfs in
  Camlparagraph_for_symbol_symbol_v.string_off sym_cfs
;;

let fullname for_cfs =
  let sym_cfs = symbol_of_formula for_cfs in
  Camlparagraph_for_symbol_symbol_v.longname sym_cfs
;;
*** *)

(** {6 Building_and_storing} *)

let build_n_store sym_cfs soi_cap =
  let sym_sec_l =
    Camlparagraph_for_symbol_interface_v.make
      sym_cfs
  in
  let soi_sec_l =               (* Sole_index_datastructure_of_datastructure_of_sole_index *)
    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index
      1 (List.length sym_sec_l)
      soi_cap
  in

  let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_section_symbol in
  Tools_fgnr_v.store_builder_gss_datastructure gss_of_sym sym_sec_l soi_sec_l;
  
  List.map2 Tag_v.make sym_sec_l soi_sec_l
;;

(** {6 Making_for_formula} *)

let make sym_cfs soi_sec =
  match sym_cfs with 
  | Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol sym_cc1 ->
      Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_let_formula 
        (Camlparagraph_for_symbol_let_formula_v.make sym_cc1 soi_sec)

  | Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_type ->
      let tag_sec_l = build_n_store sym_cfs soi_sec in
      Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_type tag_sec_l
;;

(** {6 Retrieving} *)

let retrieve tag_cfs =
  let soi_sec = Tag_v.sole_index_off_tag tag_cfs in
  let sym_cfs = Tag_v.entity_off_tag tag_cfs in
  make sym_cfs soi_sec 
;; 

(** {6 Builder_tag_listing} *)

let section_tag_list_off_camlparagraph_for_symbol_formula for_cfs =
  match for_cfs with 
  | Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_let_formula for_cc1 ->
      Camlparagraph_for_symbol_let_formula_v.section_tag_list_off_camlparagraph_for_symbol_let_formula for_cc1
	
  | Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_type tag_sec_l ->
      tag_sec_l
;;

let section_tag_list_off_camlparagraph_for_symbol_tag tag_sec =
  let for_sec = retrieve tag_sec in
  section_tag_list_off_camlparagraph_for_symbol_formula for_sec
;;
    
(** {6 Data_tag_listing} *)

let camlline_tag_list_off_camlparagraph_for_symbol_formula for_cfs =
  let tag_sec_l = 
    section_tag_list_off_camlparagraph_for_symbol_formula 
      for_cfs 
  in
  let for_sec_l = List.map
      Section_formula_v.retrieve 
      tag_sec_l 
  in
  let tag_cal_ll = List.map
      Section_formula_v.camlline_tag_list_off_section_formula 
      for_sec_l
  in 
  List.flatten tag_cal_ll
;;

let camlline_tag_list_off_camlparagraph_for_symbol_tag tag_sec =
  let for_sec = retrieve tag_sec in
  camlline_tag_list_off_camlparagraph_for_symbol_formula for_sec
;;

(** {6 Iterating_for_formula} *)

let map f_of_tag_sec for_cfs = 
  match for_cfs with 
  | Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_let_formula for_cc1 ->
        Camlparagraph_for_symbol_let_formula_v.map f_of_tag_sec for_cc1

  | Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_type tag_sec_l ->
        List.map f_of_tag_sec tag_sec_l
;;

let iter f_of_tag_sec for_cfs = 
  match for_cfs with 
  | Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_let_formula for_cc1 ->
        Camlparagraph_for_symbol_let_formula_v.iter f_of_tag_sec for_cc1

  | Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_type tag_sec_l ->
        List.iter f_of_tag_sec tag_sec_l
;;

let map2 f_of_tag_sec for_cfs1 for_cfs2 = 
  match (for_cfs1, for_cfs2) with
  | (Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_let_formula for_cc11, 
     Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_let_formula for_cc12) ->
	 Camlparagraph_for_symbol_let_formula_v.map2 f_of_tag_sec for_cc11 for_cc12
	 
  | (Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_type tag_sec_l_1, 
     Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_type tag_sec_l_2) ->
       List.map2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2
	 
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "map2"
	"both map2 arguments had the same Camlparagraph type" 
	(Format.sprintf "couple (%s, %s)" (name for_cfs1) (name for_cfs2))
	"Check"
;;

let iter2 f_of_tag_sec for_cfs1 for_cfs2 = 
  match (for_cfs1, for_cfs2) with
  | (Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_let_formula for_cc11, 
     Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_let_formula for_cc12) ->
	 Camlparagraph_for_symbol_let_formula_v.iter2 f_of_tag_sec for_cc11 for_cc12
	 
  | (Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_type tag_sec_l_1, 
     Camlparagraph_for_symbol_formula_t.Camlparagraph_for_symbol_type tag_sec_l_2) ->
       List.iter2 f_of_tag_sec tag_sec_l_1 tag_sec_l_2
	 
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "iter2"
	"both iter2 arguments had the same Camlparagraph type" 
	(Format.sprintf "couple (%s, %s)" (name for_cfs1) (name for_cfs2))
	"Check"
;;

