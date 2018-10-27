(** {3 Camlline_uno_function_symbol_formula_t} *)

(** {6 Typing} *)

type camlline_uno_function_symbol_formula = 
  | Let_et_symbol_equal_Et_symbol_tdot_Et                   of Entity_tag_t.entity_tag list (* Ex.: let vector = Vector_symbol_t.Vector;; *)
  | Lpar_Es_symbol_vdot_make_of_string_of_string_rpar       of Entity_tag_t.entity_tag list (* Ex.: (Entity_fictive_symbol_v.make nam s)*)
  | Pipe_Et_symbol_tdot_Et_symbol_arrow_string              of Entity_tag_t.entity_tag list (* Ex.: | Vector_symbol_t.Vector -> "vector" *)
  | Pipe_ecstring_arrow_ec                      of Entity_tag_t.entity_tag list (* Ex.: | "o_c" -> o_c *)
  | Pipe_ecstring_arrow_ec_sarg           of Entity_tag_t.entity_tag list (* Ex.: | "cluster_fromid" -> cluster_fromid s *)
  | Pipe_string_arrow_ec                        of Entity_tag_t.entity_tag list (* Ex.: | "machin" -> truc *)
  | Space_Et_symbol_vdot_name_sym_at                  of Entity_tag_t.entity_tag list (* Ex.: Atom_symbol_v.name sym_ato *)
  | Failwith_not_Es_symbol                of Entity_tag_t.entity_tag list (* Ex.: failwith "Not_Entity_fictive_symbol:Entity_fictive_symbol_v.ml:make" *)
  | Failwith_not_a_topson_leaf_Et_symbol_make  of Entity_tag_t.entity_tag list (* Ex.: failwith "Not_a_topson_leaf:Figureset_symbol_v.ml:make" *)
  | Failwith_not_a_topson_notleaf_Et_symbol_make  of Entity_tag_t.entity_tag list (* Ex.: failwith "Not_a_topson_notleaf:Figureset_symbol_v.ml:make" *)
  | Let_sym_at_equal_Et_symbol_vdot_make_nam_at_s_in of Entity_tag_t.entity_tag list (*   let sym_ato = Atom_symbol_v.make nam_ato s in *)
  | Print_fatal_error_make_of_string_of_string  of Entity_tag_t.entity_tag list (* Ex.: Error_messages_v.print_fatal_error nam_cod "make" ...*)
  | With_failure_not_Es_symbol_arrow      of Entity_tag_t.entity_tag list (* Ex.: with Failure "Not_Found:Entity..._v.ml:make" -> *)
  | With_failure_not_a_topson_leaf_Et_symbol_arrow  of Entity_tag_t.entity_tag list (* Ex.: with Failure "Not_a_topson_leaf:Figureset_symbol_v.ml:make" -> *)
  | With_failure_not_a_topson_notleaf_Et_symbol_arrow  of Entity_tag_t.entity_tag list (* Ex.: with Failure "Not_a_topson_notleaf:Figureset_symbol_v.ml:make" -> *)
;;

