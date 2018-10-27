(** {3 Category_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Entity_proper_list_by_category_doutup_provider_v";
   "Current : IGNR:Category_interface_v";
   "Needed-by : FGNR:Category_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make_of_tuple dou_cat =
  let (sym_cat, sym_dom) = dou_cat in
  
  let sym_eci_l = 
    Entity_constructor_inner_symbol_list_by_domain_symbol_provider_v.provide 
      sym_dom 
  in

  match sym_cat with
  | Category_symbol_t.Any 
  | Category_symbol_t.Mark 
  | Category_symbol_t.Path 
  | Category_symbol_t.Property
  | Category_symbol_t.Provider ->

      Utilities_v.not_yet_implemented nam_cod "make_of_tuple"

  | Category_symbol_t.Symbol
  | Category_symbol_t.Tag ->

      let nam_dom = Domain_symbol_v.name sym_dom in
      let sym_ent_dom = Entity_symbol_v.make "entity_proper_with_sons" nam_dom in

      sym_ent_dom :: sym_eci_l

  | Category_symbol_t.Formula
  | Category_symbol_t.Value ->

      sym_eci_l

  | Category_symbol_t.Empty ->
      []
;;

