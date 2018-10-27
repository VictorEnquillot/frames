(** {3 Provides Contentfile_symbol for an Entity_proper_triplet_top_symbol} *)

let nam_cod = "Contentfile_symbol_list_by_entity_proper_tritup_provider_v.ml";;

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : AGNR:Kind_name_by_constructor_notleaf_trail_provider_v";
   "Current : IGNR:Contentfile_symbol_list_by_entity_proper_tritup_provider_v";
   "Definition : Contentfile Symbol is either type_alone, value_alone or type_n_value";
   "What-is-it : it is the list of Contentfile_symbol associated with a Entity_proper Tag";
   "How-is-it-done : for the time beeing : same for Formula and Symbol";
   "Remark : the Contentfile Symbol list for an Entity_proper in a Category is defined in the two Set files";
   "Remark : for Symbols this information is read directly from _symbols.set file";
   "Remark : Formulas are typed as their CT leaves Datastructures defined in localset_formulas.set file";
   "Remark : to define the contentfile for an Entity Formula needs to get it from its sons in the CT";
   "Improve : for Formulas this information may be read directly from _formulas.set file";
   "Improve : ... by adding some token ";
   "Improve : At present this information is trivially provided";
  ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Registering} *)

let nam_reg = "contentfile_symbol_list_by_entity_tritup_register";;

let contentfile_symbol_list_by_entity_tritup_register : 
    ( (Entity_proper_symbol_t.entity_proper_symbol,
       Category_symbol_t.category_symbol,
       Domain_symbol_t.domain_symbol) Triplet_t.triplet, 
      Contentfile_symbol_t.contentfile_symbol list) 
    Register_t.register = Register_v.make 137
;;

let store tri_enp sym_cof_l =
  try Register_v.store 
      contentfile_symbol_list_by_entity_tritup_register tri_enp sym_cof_l
  with Failure ("Already_stored:Register_v.ml:store") ->
    failwith ("Already_stored:"^nam_cod^":store")
;;

let is_stored tri_enp =
  Register_v.is_stored 
    contentfile_symbol_list_by_entity_tritup_register 
    tri_enp
;;

let retrieve tri_enp =
  try Register_v.retrieve 
      contentfile_symbol_list_by_entity_tritup_register 
      tri_enp
  with Failure ("Not_stored:Register_v.ml:retrieve") ->
    failwith ("Not_stored:"^nam_cod^":retrieve")
;;  

let build_for_symbol tra_enp =
  let nam_kin =
    Kind_name_by_constructor_notleaf_trail_provider_v.provide 
      tra_enp
  in

  let sym_kin = Kind_symbol_v.make nam_kin in
 
  match sym_kin with
  | Kind_symbol_t.Kind_type -> 
	[Contentfile_symbol_v.type_alone; 
	Contentfile_symbol_v.value_alone;]
  | Kind_symbol_t.Kind_type_private -> 
	[Contentfile_symbol_v.type_n_value; ]
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "build"
	"kind were type|type_private"
	(Kind_symbol_v.name sym_kin) "Check"
;;

let build tri_enp =
  let (sym_enp, sym_cat, sym_dos) = tri_enp in
  let sym_ent = 
    Entity_symbol_v.entity_symbol_of_entity_proper_symbol
      sym_enp
  in
  let tra_enp =
    Translating_trail_of_symbol_v.entity_trail_of_entity_tritup 
      (sym_ent, sym_cat, sym_dos) 
  in

  match sym_cat with
  | Category_symbol_t.Formula
  | Category_symbol_t.Symbol
  | Category_symbol_t.Tag -> build_for_symbol tra_enp
  | _ ->
      Error_messages_v.print_fatal_error nam_cod "build"
	"category were Symbol|Tag|Formula"
	(Category_symbol_v.name sym_cat) "Check"
;;

let build_n_store tri_enp =
  let sym_cof_l = build tri_enp in
  store tri_enp sym_cof_l; 
  sym_cof_l
;;

let provide tri_enp =
  if Register_v.is_stored 
      contentfile_symbol_list_by_entity_tritup_register 
      tri_enp 
  then retrieve tri_enp
  else build_n_store tri_enp 
;;

