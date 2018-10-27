open Make_test_v;;

testing "Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v with
    Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_u_any.ml";;

(* Deleting Registers *)



(* Tracing *)


(* Debugging *)



(* toplevel 
   #use "Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_u_any.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

open Property_tag_tree_by_basicname_inputbox_n_basicname_inputbase_provider_v;;

let sym_pro_ibo_st = 
    Property_symbol_subtree_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

let sym_pro_roo = Tree_v.root_off_tree sym_pro_ibo_st;;

test_number 1 (
(sym_pro_roo : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_context_symbol
   (Property_context_symbol_t.Property_context_inputfile_symbol
     (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
       "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a"))
);;

let tag_pro_ibo =
    Property_context_inputfile_tag_by_basicname_inputbox_provider_v.provide
      nam_ibo;;

test_number 2 (
(tag_pro_ibo : Property_symbol_t.property_symbol Tag_t.tag ) =
(Property_symbol_t.Property_context_symbol
   (Property_context_symbol_t.Property_context_inputfile_symbol
      (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
         "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a")),
 [38; 18])
);;

let soi_pro_ibo = Tag_v.sole_index_off_tag tag_pro_ibo;;

test_number 3 (
(soi_pro_ibo : Sole_index_t.sole_index ) = 
[38; 18]
);;

let soi_pro_ibo_st = 
    Sole_index_v.sole_index_tree_of_tree_of_root_sole_index 
      sym_pro_ibo_st soi_pro_ibo;;

test_number 4 (
( soi_pro_ibo_st : Sole_index_t.sole_index Tree_t.tree ) =
  Tree_t.Inner ([38; 18],
   [Tree_t.Inner ([1; 38; 18],
     [Tree_t.Leaf [1; 1; 38; 18];
      Tree_t.Inner ([2; 1; 38; 18],
       [Tree_t.Leaf [1; 2; 1; 38; 18]; Tree_t.Leaf [2; 2; 1; 38; 18]])])])
);;

let tag_pro_ibo_st = 
    Tree_v.map2 Tag_v.make 
      sym_pro_ibo_st 
      soi_pro_ibo_st;;

let tag_pdo = Property_context_domain_tag_by_unit_provider_v.provide ();;
 
test_number 5 (
(tag_pdo :
   Property_context_domain_symbol_t.property_context_domain_symbol Tag_t.tag ) =
 (Property_context_domain_symbol_t.Property_context_domain_constructor
    "property",
  [18])
);;

let tag_pro_dom = 
      Property_context_domain_tag_v.property_tag_of_property_context_domain_tag 
      tag_pdo;;

test_number 6 (
(tag_pro_dom : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_context_symbol
    (Property_context_symbol_t.Property_context_domain_symbol
      (Property_context_domain_symbol_t.Property_context_domain_constructor
        "property")),
   [18])
);;

let tag_pro_t = Tree_v.make_of_node tag_pro_dom [tag_pro_ibo_st];;

test_number 7 (
tag_pro_t = provide nam_ibo
);;

Property_tag_tree_by_basicname_inputbox_register_v.dump ();;

