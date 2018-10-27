(** {3 Group_for_any_header_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Camlline_symbol";  
   "Needs : IGNR:None";
   "Current : IGNR:Group_for_any_header_top_camlline_symbol_datastructure_v";
   "Needed-by : FGNR:Group_for_any_header_top_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Builder_symbol Datastructure} *)

let make sym_gbt =
  match sym_gbt with 
   | Group_for_any_header_top_symbol_t.Camlfile_title ->

       let sym_ca1 = Camlline_for_any_uno_camlfile_symbol_v.camlfile_title in      
       [
	Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_camlfile_symbol sym_ca1;
      ]

   | Group_for_any_header_top_symbol_t.Item_title ->

       let sym_ca1 = Camlline_constant_pervasive_symbol_v.item_title in      

       [ 
	 Camlline_symbol_v.camlline_symbol_of_camlline_constant_pervasive_symbol sym_ca1;
       ]

  | Group_for_any_header_top_symbol_t.Let_fullname_argument_equal ->
(* let longname sym_enp = *)
     [
       Camlline_symbol_v.let_fullname_ac_at_equal;
     ]

  | Group_for_any_header_top_symbol_t.Let_longname_argument_equal ->
(* let fullname sym_enp = *)
      [
       Camlline_symbol_v.let_longname_ac_at_equal;
     ]

  | Group_for_any_header_top_symbol_t.Let_name_argument_equal -> 

      let sym_ca1 = Camlline_for_any_uno_top_symbol_v.let_name_ac_at_equal in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_top_symbol sym_ca1;
     ]

  | Group_for_any_header_top_symbol_t.Let_retrieve_tag_top_equal -> 

      let sym_ca1 = Camlline_for_any_uno_top_symbol_v.let_retrieve_tag_top_equal in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_top_symbol sym_ca1;
     ]

  | Group_for_any_header_top_symbol_t.Let_string_off_argument_equal -> 

      let sym_ca1 = Camlline_for_any_uno_top_symbol_v.let_string_off_ac_at_equal in
      [
       Camlline_symbol_v.camlline_symbol_of_camlline_for_any_uno_top_symbol sym_ca1;
     ]

;;

