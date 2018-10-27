let pre_tag_bty (s, i) = Localinput_symbol_v.is_localinput_body_box_type s;;
let pre_tag_kty (s, i) = Localinput_symbol_v.is_localinput_fence_keyword_type s;;

(* this works in toplevel
   when compiled :

let tag_pre_tre = Tree_v.has_two_nodes_of_node_predicate_of_node_predicate_off_tree pre_tag_kty  pre_tag_bty;;

File "Localinput_as_body_handle_command_tag_subtree_list_by_basicname_inputbox_provider_u_define_operator_hom_b_2.ml", line 153, characters 18-113:
Error: The type of this expression,
       (Localinput_symbol_t.localinput_symbol * '_a) Tree_t.tree -> bool,

*)

let tag_pre_tre t = Tree_v.has_two_nodes_of_node_predicate_of_node_predicate_off_tree pre_tag_kty pre_tag_bty t;;

let tag_pre_tre = Tree_v.has_two_nodes_of_node_predicate_of_node_predicate_off_tree pre_tag_kty  pre_tag_bty;;
