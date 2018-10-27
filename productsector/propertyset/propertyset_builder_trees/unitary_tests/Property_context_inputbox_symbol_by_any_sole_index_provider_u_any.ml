open Make_test_v;;

testing "Property_context_inputbox_symbol_by_any_sole_index_provider_v with
    Property_context_inputbox_symbol_by_any_sole_index_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Property_context_inputbox_symbol_by_any_sole_index_provider_u_any.ml";; 

*)


open Property_context_inputbox_symbol_by_any_sole_index_provider_v;;

let nam_ibo = "Point_a_print";;
let nam_iba = "local";;

let tag_pro_l = Property_tag_all_list_by_basicname_inputbox_n_basicname_inputbase_provider_v.provide (nam_ibo, nam_iba);;

let pre_tag_sof sof tag = 
  let sym = Tag_v.entity_off_tag tag in
  (Property_symbol_v.is_operator_fence_tounit_print_constructor sym) 
    &&
  (Property_symbol_v.string_off sym = sof)
;;

let sof_any = "Poi_a";;
let tag_any = List_v.only_element_of_predicate_off_list (pre_tag_sof sof_any) tag_pro_l;; 

test_number 1 (
(tag_any : Property_symbol_t.property_symbol Tag_t.tag ) =
   (Property_symbol_t.Operator_fence_symbol
     (Operator_fence_symbol_t.Operator_fence_tounit_symbol
       (Operator_fence_tounit_symbol_t.Operator_fence_tounit_print_symbol
         (Operator_fence_tounit_print_symbol_t.Operator_fence_tounit_print_constructor
           "Poi_a"))),
    [1; 1; 28; 1; 18; 6]);
);;

let soi_any = Tag_v.sole_index_off_tag tag_any;;

test_number 2 (
(soi_any : Sole_index_t.sole_index ) = 
[1; 1; 28; 1; 18; 6]
);;

test_number 3 (
nam_ibo = Property_context_inputbox_name_by_any_sole_index_provider_v.provide soi_any
);;

let sym_ibo = Property_context_inputbox_symbol_v.property_context_inputbox_constructor nam_ibo;;

test_number 4 (
(sym_ibo :
  Property_context_inputbox_symbol_t.property_context_inputbox_symbol ) =
  Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
   "Point_a_print"
);;

test_number 5 (
sym_ibo = provide soi_any
);;
