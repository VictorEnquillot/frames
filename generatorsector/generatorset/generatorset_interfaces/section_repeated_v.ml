(** {3 Section_stem_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : SGNR:Section_stem_symbol_v";
   "Needs : IGNR:Entity_someson_notleaf_symbol_list_by_entity_tritup_provider_v";
   "Current : IGNR:Section_stem_interface_v";
   "Needed-by : FGNR:Section_stem_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol} *)

let builder_symbol_of_section_each_someson_notleaf_symbol sym_sss =
  match sym_sss with
  | Section_stem_symbol_t.Leaf_1 ->

       Builder_symbol_v.let_longname_argument_for_symbol
      
  | Section_stem_symbol_t.Leaf_2 ->

       Builder_symbol_v.let_fullname_argument_for_symbol

;;

(** {6 Builder_symbol Datastructure} *)

let someson_builder_symbol_repeated_list sym_bbb tri_enp =
  let sym_ent_grl_l = 
    Entity_someson_notleaf_symbol_list_by_entity_tritup_provider_v.provide
      tri_enp
  in
  let count = List.length sym_ent_grl_l in
  List_v.repeated_list_of_count_of_element count sym_bbb
;;

let someson_builder_symbol_title sym_sss =
    let nam_sss = Section_stem_symbol_v.name sym_sss in
    Builder_symbol_v.section_title nam_sss
;;

(** {6 Building Builders Symbol Datastructure} *)

(** {6 Building.} *)

let build sym_sss tri_enp =
    let sym_bbb_tit = someson_builder_symbol_title sym_sss in

    let sym_bbb = 
      builder_symbol_of_section_each_someson_notleaf_symbol 
	sym_sss 
    in
    let sym_bbb_l = 
     someson_builder_symbol_repeated_list sym_bbb tri_enp
    in

    sym_bbb_tit :: sym_bbb_l
;;

let make oct_sss =
  let sym_sss = Octuplet_v.left_off_octuplet oct_sss in
  let (sym_ent_top, sym_cat, sym_dos) = 
    Octuplet_v.right_triplet_off_octuplet 
      oct_sss 
  in
  let sym_enp = Entity_symbol_v.entity_proper_symbol_off_entity_symbol sym_ent_top in
  let tri_enp = (sym_enp, sym_cat, sym_dos) in

  match sym_cat with
  | Category_symbol_t.Formula -> 
      build sym_sss tri_enp

  | _ ->
      Error_messages_v.print_fatal_error nam_cod
	"interface"
	"Category_symbol were Formula"
	(Format.sprintf ">%s<" (Category_symbol_v.name sym_cat))
	"Check"
;;



