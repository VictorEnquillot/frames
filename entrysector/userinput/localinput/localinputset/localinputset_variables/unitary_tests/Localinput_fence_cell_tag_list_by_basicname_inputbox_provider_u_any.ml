open Make_test_v;;

testing "Localinput_fence_cell_tag_list_by_basicname_inputbox_provider_v with
    Localinput_fence_cell_tag_list_by_basicname_inputbox_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)

(* toplevel 
   #use "Localinput_fence_cell_tag_list_by_basicname_inputbox_provider_u_any.ml";; 

*)

open Localinput_fence_cell_tag_list_by_basicname_inputbox_provider_v;;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "Print_homothety_point_a";;

let tag_lif_l = 
    Localinput_fence_tag_list_by_basicname_inputbox_provider_v.provide 
      nam_ibo;;

let pre_tag_lif (s, i) = 
  Localinput_fence_symbol_v.is_localinput_fence_cell_symbol_off_localinput_fence_symbol s ;;

let tag_lif_sl = List.filter pre_tag_lif tag_lif_l;;

test_number 1 (
(tag_lif_sl :
  Localinput_fence_symbol_t.localinput_fence_symbol Tag_t.tag list ) =
  [(Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_database_symbol
       (Localinput_fence_cell_database_symbol_t.Localinput_fence_cell_database_constructor
         "db1")),
    [1; 2; 2; 2; 1; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_domain_symbol
       (Localinput_fence_cell_domain_symbol_t.Localinput_fence_cell_domain_constructor
         "figure")),
    [2; 2; 2; 2; 1; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_createdby_symbol
       (Localinput_fence_cell_createdby_symbol_t.Localinput_fence_cell_createdby_constructor
         "Hom_b_2")),
    [1; 2; 2; 2; 2; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_domain_symbol
       (Localinput_fence_cell_domain_symbol_t.Localinput_fence_cell_domain_constructor
         "figure")),
    [2; 2; 2; 2; 2; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_name_symbol
       (Localinput_fence_cell_external_name_symbol_t.Localinput_fence_cell_external_name_constructor
         "BC_B")),
    [2; 2; 2; 2; 3; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
       (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
         "Con_db1")),
    [3; 2; 2; 2; 3; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_name_symbol
       (Localinput_fence_cell_external_name_symbol_t.Localinput_fence_cell_external_name_constructor
         "T_A")),
    [2; 2; 2; 2; 4; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
       (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
         "Con_db1")),
    [3; 2; 2; 2; 4; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_operation_symbol
       (Localinput_fence_cell_operation_symbol_t.Localinput_fence_cell_operation_constructor
         "homothety")),
    [2; 2; 2; 2; 5; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_ondomain_symbol
       (Localinput_fence_cell_ondomain_symbol_t.Localinput_fence_cell_ondomain_constructor
         "figure")),
    [3; 2; 2; 2; 5; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_cofactor_basic_symbol
       (Localinput_fence_cell_cofactor_basic_symbol_t.Localinput_fence_cell_cofactor_basic_constructor
         "2.0")),
    [1; 4; 2; 2; 2; 5; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_cofactor_entity_symbol
       (Localinput_fence_cell_cofactor_entity_symbol_t.Localinput_fence_cell_cofactor_entity_constructor
         "Cen_b")),
    [2; 4; 2; 2; 2; 5; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_target_operator_symbol
       (Localinput_fence_cell_target_operator_symbol_t.Localinput_fence_cell_target_operator_constructor
         "Hom_b_2")),
    [2; 2; 2; 2; 6; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_target_operand_symbol
       (Localinput_fence_cell_target_operand_symbol_t.Localinput_fence_cell_target_operand_constructor
         "Poi_a")),
    [3; 2; 2; 2; 6; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
       (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
         "Con_nwc")),
    [2; 2; 2; 2; 7; 38; 1; 21; 1]);
   (Localinput_fence_symbol_t.Localinput_fence_cell_symbol
     (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
       (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
         "Con_nwc")),
    [2; 2; 2; 2; 8; 38; 1; 21; 1])]
);;

let tag_lfc_l = List.map (* Coerce Down *)
    (Tag_v.map_entity
       Localinput_fence_symbol_v.localinput_fence_cell_symbol_off_localinput_fence_symbol)
    tag_lif_sl;;

test_number 2 (
(tag_lfc_l :
  Localinput_fence_cell_symbol_t.localinput_fence_cell_symbol Tag_t.tag list ) =
  [(Localinput_fence_cell_symbol_t.Localinput_fence_cell_database_symbol
     (Localinput_fence_cell_database_symbol_t.Localinput_fence_cell_database_constructor
       "db1"),
    [1; 2; 2; 2; 1; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_domain_symbol
     (Localinput_fence_cell_domain_symbol_t.Localinput_fence_cell_domain_constructor
       "figure"),
    [2; 2; 2; 2; 1; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_createdby_symbol
     (Localinput_fence_cell_createdby_symbol_t.Localinput_fence_cell_createdby_constructor
       "Hom_b_2"),
    [1; 2; 2; 2; 2; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_domain_symbol
     (Localinput_fence_cell_domain_symbol_t.Localinput_fence_cell_domain_constructor
       "figure"),
    [2; 2; 2; 2; 2; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_name_symbol
     (Localinput_fence_cell_external_name_symbol_t.Localinput_fence_cell_external_name_constructor
       "BC_B"),
    [2; 2; 2; 2; 3; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
     (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
       "Con_db1"),
    [3; 2; 2; 2; 3; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_name_symbol
     (Localinput_fence_cell_external_name_symbol_t.Localinput_fence_cell_external_name_constructor
       "T_A"),
    [2; 2; 2; 2; 4; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
     (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
       "Con_db1"),
    [3; 2; 2; 2; 4; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_operation_symbol
     (Localinput_fence_cell_operation_symbol_t.Localinput_fence_cell_operation_constructor
       "homothety"),
    [2; 2; 2; 2; 5; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_ondomain_symbol
     (Localinput_fence_cell_ondomain_symbol_t.Localinput_fence_cell_ondomain_constructor
       "figure"),
    [3; 2; 2; 2; 5; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_cofactor_basic_symbol
     (Localinput_fence_cell_cofactor_basic_symbol_t.Localinput_fence_cell_cofactor_basic_constructor
       "2.0"),
    [1; 4; 2; 2; 2; 5; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_cofactor_entity_symbol
     (Localinput_fence_cell_cofactor_entity_symbol_t.Localinput_fence_cell_cofactor_entity_constructor
       "Cen_b"),
    [2; 4; 2; 2; 2; 5; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_target_operator_symbol
     (Localinput_fence_cell_target_operator_symbol_t.Localinput_fence_cell_target_operator_constructor
       "Hom_b_2"),
    [2; 2; 2; 2; 6; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_target_operand_symbol
     (Localinput_fence_cell_target_operand_symbol_t.Localinput_fence_cell_target_operand_constructor
       "Poi_a"),
    [3; 2; 2; 2; 6; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
     (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
       "Con_nwc"),
    [2; 2; 2; 2; 7; 38; 1; 21; 1]);
   (Localinput_fence_cell_symbol_t.Localinput_fence_cell_external_context_symbol
     (Localinput_fence_cell_external_context_symbol_t.Localinput_fence_cell_external_context_constructor
       "Con_nwc"),
    [2; 2; 2; 2; 8; 38; 1; 21; 1])]
);;

test_number 3 (
tag_lfc_l = provide nam_ibo
);;

