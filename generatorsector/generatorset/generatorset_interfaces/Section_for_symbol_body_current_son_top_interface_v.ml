(** {6 Section_for_symbol_body_current_son_top_interface} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : IGNR:";
   "Current : IGNR:Section_for_symbol_body_current_son_top_interface_v";
   "Needed-by : FGNR:Section_for_symbol_body_current_son_top_interface_v";
   "What-is-it : It defines the Builder_symbol Datastructure for a Leaf Entity"; 
   "Remark : It is a Repeated list of the same Builder";
   "Improve : should be read from localset_formulas.set";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Interface} *)

let make sym_sst =
  match sym_sst with
  | Section_for_symbol_body_current_son_top_symbol_t.Grandson_symbol_off_topson_notleaf_symbol_off_top_symbol ->

      let sym_gst = Group_for_symbol_body_current_son_top_symbol_v.grandson_symbol_off_topson_notleaf_symbol_off_top_symbol in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_body_current_son_top_symbol sym_gst;
     ]

  | Section_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_bare_end 
  | Section_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_ofstring_end ->

      let sym_gst = Group_for_symbol_body_current_son_top_symbol_v.if_not_is_topson_begin_leaf_end in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_body_current_son_top_symbol sym_gst;
     ]
  | Section_for_symbol_body_current_son_top_symbol_t.If_not_is_topson_begin_notleaf_end ->

      let sym_gst = Group_for_symbol_body_current_son_top_symbol_v.if_not_is_topson_begin_notleaf_end in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_body_current_son_top_symbol sym_gst;
     ]

  | Section_for_symbol_body_current_son_top_symbol_t.Upgrade_grandson_symbol ->
   (* let sym_tri = Triangle_symbol_v.triangle_symbol_of_triangle_isoceles_symbol sym_tis in *)
   (*    geometryset_symbol_of_triangle_symbol sym_tri *)

      let sym_gst = Group_for_symbol_body_current_son_top_symbol_v.upgrade_grandson_symbol in
      [
       Group_symbol_v.group_symbol_of_group_for_symbol_body_current_son_top_symbol sym_gst;
     ]

;;

