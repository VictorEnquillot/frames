open Make_test_v;;

testing "Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v with
        Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_u_print_translation_tra_bc_point_a.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_bc *)
(*        context *)
(*          databox "segment_BC" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Con_pa *)
(*        context *)
(*          databox "Point_a" *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_bc *)
(*          end -- external *)
(*        end -- define *)

(* define Tra_bc *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "transformation" "constructor" ] *)
(*          operation "translation" *)
(*          ondomain "figure"   *)
(*          cofactor  *)
(*            cofactor_entity Seg_bc *)
(*            end -- cofactor	 *)
(*          end -- operator *)
(*        end -- define *)

(* define Poi_a         *)
(*        external  *)
(*          type [ "figure" "set" "fence" "point" "constructor" ] *)
(*          external_name "T_A" *)
(*          external_context Con_pa *)
(*          end -- external *)
(*        end -- define *)

(* define Poi_t *)
(*        target  *)
(*          type [ "property" "operand" "target" "created" "constructor" ] *)
(*          operator Tra_bc *)
(*          operand Poi_a *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          end -- external *)
(*        end -- define *)

(* print Poi_t *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_u_print_translation_tra_bc_point_a.ml";; 

*)

open Property_symbol_subtree_by_localinput_set_fence_variable_name_entity_tag_provider_v;;

let nam_ibo = "Print_translation_tra_bc_point_a";;
let nam_iba = "local";;

let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;

let tag_loi_l = Localinput_tag_all_list_by_basicname_inputbox_provider_v.provide bna_ibo;;

let tag_loi_poi_t_l = List.filter
    (fun (s, i) -> 
      (Localinput_symbol_v.is_localinput_set_fence_variable_name_entity_symbol_off_localinput_symbol s)
	&& (Localinput_symbol_v.string_off s = "Poi_t")
    )
    tag_loi_l
;;

test_number 1 (
(tag_loi_poi_t_l : Localinput_symbol_t.localinput_symbol Tag_t.tag list ) =
  [(Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
         (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
           (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
             (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
               "Poi_t"))))),
    [1; 2; 6; 54; 1; 22; 1]);
   (Localinput_symbol_t.Localinput_set_symbol
     (Localinput_set_symbol_t.Localinput_set_fence_symbol
       (Localinput_set_fence_symbol_t.Localinput_set_fence_variable_name_symbol
         (Localinput_set_fence_variable_name_symbol_t.Localinput_set_fence_variable_name_entity_symbol
           (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
             (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
               "Poi_t"))))),
    [1; 2; 8; 54; 1; 22; 1])]
);;

let tag_lct_l = 
     Localinput_set_body_handle_command_tounit_tag_list_by_basicname_inputbox_provider_v.provide
       bna_ibo;;

let tag_lct = List.hd tag_lct_l;;

test_number 2 (
(tag_lct :
   Localinput_set_body_handle_command_tounit_symbol_t.localinput_set_body_handle_command_tounit_symbol
   Tag_t.tag) =
(Localinput_set_body_handle_command_tounit_symbol_t.Localinput_set_body_handle_command_tounit_print_symbol
   (Localinput_set_body_handle_command_tounit_print_symbol_t.Localinput_set_body_handle_command_tounit_print_constructor
      "Poi_t"),
 [8; 54; 1; 22; 1])
);;

let sym_lct = Tag_v.entity_off_tag tag_lct;;

let soi_lct = Tag_v.sole_index_off_tag tag_lct;;
  
let bna_ibo = Localinput_basicname_inputbox_by_any_sole_index_provider_v.provide soi_lct;;

test_number 3 (
(bna_ibo : Basicname_t.basicname ) =
Basicname_t.Inputbox "Print_translation_tra_bc_point_a"
);;

let nam_var = Localinput_set_body_handle_command_tounit_symbol_v.string_off sym_lct;;

test_number 4 (
(nam_var : string ) = 
"Poi_t"
);;

let sym_pro_ope = 
  Property_symbol_v.property_operator_fence_tounit_print_constructor 
    nam_var;;

test_number 5 (
(sym_pro_ope : Property_symbol_t.property_symbol ) =
  Property_symbol_t.Property_operator_symbol
   (Property_operator_symbol_t.Property_operator_fence_symbol
     (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
       (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
         (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
           "Poi_t"))))
);;

let sym_pro_ope_f = Tree_v.make_of_leaf sym_pro_ope;;

test_number 6 (
(sym_pro_ope_f : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_tounit_symbol
         (Property_operator_fence_tounit_symbol_t.Property_operator_fence_tounit_print_symbol
           (Property_operator_fence_tounit_print_symbol_t.Property_operator_fence_tounit_print_constructor
             "Poi_t")))))
);;

let sym_pro_pit = 
  Property_symbol_v.property_target_body_implicit_tounit_constructor 
    nam_var;;

test_number 7 (
(sym_pro_pit : Property_symbol_t.property_symbol ) =
Property_symbol_t.Property_target_symbol
  (Property_target_symbol_t.Property_target_body_symbol
     (Property_target_body_symbol_t.Property_target_body_implicit_symbol
	(Property_target_body_implicit_symbol_t.Property_target_body_implicit_tounit_symbol
           (Property_target_body_implicit_tounit_symbol_t.Property_target_body_implicit_tounit_constructor
              "Poi_t"))))
);;

let sym_lcd = 
  Localinput_set_body_handle_command_creation_define_symbol_v.localinput_set_body_handle_command_creation_define_constructor 
    nam_var;;

test_number 8 (
(sym_lcd :
   Localinput_set_body_handle_command_creation_define_symbol_t.localinput_set_body_handle_command_creation_define_symbol ) =
Localinput_set_body_handle_command_creation_define_symbol_t.Localinput_set_body_handle_command_creation_define_constructor
  "Poi_t"
);;

(* Argument Poi_t *)

let tag_lne = 
  Localinput_set_fence_variable_name_entity_tag_by_basicname_inputbox_n_localinput_set_body_handle_command_creation_define_symbol_provider_v.provide
    (bna_ibo, sym_lcd);;

test_number 9 (
(tag_lne :
  Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_target_symbol
    (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
      "Poi_t"),
   [1; 2; 6; 54; 1; 22; 1])
);;

let tag_lne_cur = tag_lne;;

(* Start recursion*)

let (sym_lne_cur, soi_lne_cur) = tag_lne_cur;;

(* Operator of Target *)

let sym_let_cur = Localinput_set_fence_variable_name_entity_symbol_v.localinput_set_fence_variable_name_entity_target_symbol_off_localinput_set_fence_variable_name_entity_symbol sym_lne_cur;;

let tag_let_cur = Tag_v.make sym_let_cur soi_lne_cur;;

test_number 10 (
( tag_let_cur :
  Localinput_set_fence_variable_name_entity_target_symbol_t.localinput_set_fence_variable_name_entity_target_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_target_symbol_t.Localinput_set_fence_variable_name_entity_target_constructor
    "Poi_t",
   [1; 2; 6; 54; 1; 22; 1])
);;
 
let tag_lto_ope = 
   Localinput_set_fence_cell_target_operator_tag_by_localinput_set_fence_variable_name_entity_target_tag_provider_v.provide
     tag_let_cur
;;

test_number 11 (
(tag_lto_ope :
  Localinput_set_fence_cell_target_operator_symbol_t.localinput_set_fence_cell_target_operator_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_cell_target_operator_symbol_t.Localinput_set_fence_cell_target_operator_constructor
    "Tra_bc",
   [2; 2; 2; 2; 6; 54; 1; 22; 1])
);;

let tag_lvo =
  Localinput_set_fence_variable_name_operator_tag_by_localinput_set_fence_cell_target_operator_tag_provider_v.provide
    tag_lto_ope
;;

test_number 12 (
(tag_lvo :
  Localinput_set_fence_variable_name_operator_symbol_t.localinput_set_fence_variable_name_operator_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_operator_symbol_t.Localinput_set_fence_variable_name_operator_constructor
    "Tra_bc",
   [1; 2; 4; 54; 1; 22; 1])
);;

let sym_pro_ope_f = 
  Property_symbol_leaf_by_localinput_set_fence_variable_name_operator_tag_provider_v.provide
    tag_lvo
;;

test_number 13 (
(sym_pro_ope_f : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_fence_symbol
       (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
         (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_tomeasure_symbol
           (Property_operator_fence_creation_tomeasure_symbol_t.Property_operator_fence_creation_tomeasure_constructor
             "Tra_bc")))))
);;

(* Operand of Target *)

let tag_lto_opd = 
  Localinput_set_fence_cell_target_operand_tag_by_localinput_set_fence_variable_name_entity_target_tag_provider_v.provide
    tag_let_cur
;;

test_number 14 (
(tag_lto_opd :
  Localinput_set_fence_cell_target_operand_symbol_t.localinput_set_fence_cell_target_operand_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_cell_target_operand_symbol_t.Localinput_set_fence_cell_target_operand_constructor
    "Seg_bc",
   [3; 2; 2; 2; 6; 54; 1; 22; 1])
);;

let tag_lne_opd = 
  Localinput_set_fence_variable_name_entity_tag_by_localinput_set_fence_cell_target_operand_tag_provider_v.provide
    tag_lto_opd
;;

test_number 15 (
( tag_lne_opd :
  Localinput_set_fence_variable_name_entity_symbol_t.localinput_set_fence_variable_name_entity_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_symbol_t.Localinput_set_fence_variable_name_entity_external_symbol
    (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
      "Seg_bc"),
   [1; 2; 3; 42; 1; 22; 1])
);;

(* New tag_lne_opd is external Seg_bc *)

let (sym_lne_cur, soi_lne_cur) = tag_lne_opd;;
let sym_loi_cur = Localinput_symbol_v.localinput_symbol_of_localinput_set_fence_variable_name_entity_symbol sym_lne_cur;;
let sym_lee_cur = Localinput_symbol_v.localinput_set_fence_variable_name_entity_external_symbol_off_localinput_symbol sym_loi_cur;;

test_number 16 (
(sym_lee_cur :
  Localinput_set_fence_variable_name_entity_external_symbol_t.localinput_set_fence_variable_name_entity_external_symbol ) =
  Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
   "Seg_bc"
);;

let tag_lee_cur = Tag_v.make sym_lee_cur soi_lne_cur;;

test_number 17 (
(tag_lee_cur :
  Localinput_set_fence_variable_name_entity_external_symbol_t.localinput_set_fence_variable_name_entity_external_symbol
  Tag_t.tag ) =
  (Localinput_set_fence_variable_name_entity_external_symbol_t.Localinput_set_fence_variable_name_entity_external_constructor
    "Seg_bc",
   [1; 2; 3; 42; 1; 22; 1])
);;

let sof_lee_cur = Localinput_set_fence_variable_name_entity_external_symbol_v.string_off sym_lee_cur;;
let sym_pro_opd = Property_symbol_v.property_operand_fence_external_constructor sof_lee_cur;;

test_number 18 (
(sym_pro_opd : Property_symbol_t.property_symbol ) =
 Property_symbol_t.Property_operand_symbol
   (Property_operand_symbol_t.Property_operand_fence_symbol
     (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
       (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
         "Seg_bc")))
);;

let sym_pro_poe_f = Tree_v.make_of_leaf sym_pro_opd ;;

test_number 19 (
( sym_pro_poe_f : Property_symbol_t.property_symbol Tree_t.tree ) =
  Tree_t.Leaf
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_fence_symbol
       (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
         (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
           "Seg_bc"))))
);;

(* Sum *)

let sym_pro_opd_st = sym_pro_poe_f;;

(* Root symbol from Operator kind *)

let sym_pro_cur =
  Property_as_operand_body_target_symbol_by_localinput_set_fence_variable_name_entity_target_tag_provider_v.provide
    tag_let_cur
;;

let sym_pro_st = Tree_v.make_of_node sym_pro_cur (sym_pro_ope_f :: [sym_pro_opd_st] );;

test_number 20 (
( sym_pro_st : Property_symbol_t.property_symbol Tree_t.tree ) =
Tree_t.Inner
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_body_symbol
       (Property_operand_body_symbol_t.Property_operand_body_target_symbol
         (Property_operand_body_target_symbol_t.Property_operand_body_target_measured_symbol
           (Property_operand_body_target_measured_symbol_t.Property_operand_body_target_measured_constructor
             "Poi_t")))),
   [Tree_t.Leaf
     (Property_symbol_t.Property_operator_symbol
       (Property_operator_symbol_t.Property_operator_fence_symbol
         (Property_operator_fence_symbol_t.Property_operator_fence_creation_symbol
           (Property_operator_fence_creation_symbol_t.Property_operator_fence_creation_tomeasure_symbol
             (Property_operator_fence_creation_tomeasure_symbol_t.Property_operator_fence_creation_tomeasure_constructor
               "Tra_bc")))));
    Tree_t.Leaf
     (Property_symbol_t.Property_operand_symbol
       (Property_operand_symbol_t.Property_operand_fence_symbol
         (Property_operand_fence_symbol_t.Property_operand_fence_external_symbol
           (Property_operand_fence_external_symbol_t.Property_operand_fence_external_constructor
             "Seg_bc"))))])
);;

test_number 21 (
sym_pro_st = provide tag_lne
);;

