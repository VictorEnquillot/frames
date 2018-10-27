(** {3 Section_for_symbol_header_son_top_interface_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Made-of : Group_symbol";  
   "Needs : IGNR:";
   "Current : IGNR:Section_for_symbol_header_son_top_group_symbol_datastructure_v";
   "Needed-by : FGNR:Section_for_symbol_header_son_top_v";
   "What-is-it : It defines the Group_symbol Datastructure for a Leaf Entity"; 
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Group_symbol Datastructure} *)

let make sym_shc =
  match sym_shc with 
  | Section_for_symbol_header_son_top_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol_equal_function ->
      
      let sym_gr1 = Group_for_symbol_header_son_top_symbol_v.let_is_topson_notleaf_symbol_off_top_symbol_equal_function in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_son_top_symbol sym_gr1;
     ]
	
  | Section_for_symbol_header_son_top_symbol_t.Let_top_symbol_of_topson_notleaf_symbol_argument_equal ->
      (* "let geometryset_symbol_of_triangle_symbol sym_tri ="; *)

      let sym_gr1 = Group_for_symbol_header_son_top_symbol_v.let_top_symbol_of_topson_notleaf_symbol_argument_equal in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_son_top_symbol sym_gr1;
     ]

  | Section_for_symbol_header_son_top_symbol_t.Let_topson_notleaf_symbol_off_top_symbol_equal_function ->
      
      let sym_gr1 = Group_for_symbol_header_son_top_symbol_v.let_topson_notleaf_symbol_off_top_symbol_equal_function in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_son_top_symbol sym_gr1;
     ]

  | Section_for_symbol_header_son_top_symbol_t.Let_abbreviate_topson_bare -> 
   (* let triangle_scalene_right = Triangle_scalene_symbol_t.triangle_scalene_right;; *)

      let sym_gr1 = Group_for_symbol_header_son_top_symbol_v.let_abbreviate_topson_bare in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_son_top_symbol sym_gr1;
     ]

  | Section_for_symbol_header_son_top_symbol_t.Let_abbreviate_topson_ofstring -> 
   (* let entity_proper str = Entity_symbol_t.Entity_proper str;; *)

      let sym_gr1 = Group_for_symbol_header_son_top_symbol_v.let_abbreviate_topson_ofstring in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_header_son_top_symbol sym_gr1;
     ]

;;

