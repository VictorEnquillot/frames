(** {3 Contentfile_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:Usagefile_symbol_list_by_contentfile_doutup_provider_v";
   "Current : IGNR:Contentfile_interface_v";
   "Needed-by : FGNR:Contentfile_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make_of_tuple qua_cof =
  let (sym_cof, sym_ent, sym_cat, sym_dos) = qua_cof in

  match sym_cat with
  | Category_symbol_t.Formula ->
	
      begin
	match sym_cof with 
	| Contentfile_symbol_t.Type_alone -> 

	    let sym_us1 = Usagefile_for_formula_symbol_v.implementation_for_formula in
	    [
	     Usagefile_symbol_v.usagefile_symbol_of_usagefile_for_formula_symbol sym_us1;
	   ]
	      
	| Contentfile_symbol_t.Type_n_value
	| Contentfile_symbol_t.Value_alone -> 

	    let sym_us1 = Usagefile_for_formula_symbol_v.implementation_for_formula in
	    let sym_us2 = Usagefile_for_formula_symbol_v.interface_for_formula in
	    [
	     Usagefile_symbol_v.usagefile_symbol_of_usagefile_for_formula_symbol sym_us1;
	     Usagefile_symbol_v.usagefile_symbol_of_usagefile_for_formula_symbol sym_us2;
	   ]

      end

  | Category_symbol_t.Symbol ->

      begin
	match sym_cof with 
	| Contentfile_symbol_t.Type_alone -> 

	    let sym_us1 = Usagefile_for_symbol_symbol_v.implementation_for_symbol in
	    [
	     Usagefile_symbol_v.usagefile_symbol_of_usagefile_for_symbol_symbol sym_us1;
	   ]
	      
	| Contentfile_symbol_t.Type_n_value
	| Contentfile_symbol_t.Value_alone -> 

	    let sym_us1 = Usagefile_for_symbol_symbol_v.implementation_for_symbol in
	    let sym_us2 = Usagefile_for_symbol_symbol_v.interface_for_symbol in
	    [
	     Usagefile_symbol_v.usagefile_symbol_of_usagefile_for_symbol_symbol sym_us1;
	     Usagefile_symbol_v.usagefile_symbol_of_usagefile_for_symbol_symbol sym_us2;
	   ]

      end


  | _ ->
      Error_messages_v.print_fatal_error nam_cod "build"
	"Category Symbol were Symbol"
	(Category_symbol_v.name sym_cat)
	"Check"

;;

