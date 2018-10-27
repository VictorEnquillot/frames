open Make_test_v;;

testing "Parameter_set_fence_aopef_container_v with
   Parameter_set_fence_aopef_container_u_lanl2dz_debug.ml";;

(* Deleting Registers *)






(* Tracing *)


(* toplevel 
   #use "Parameter_set_fence_aopef_container_u_lanl2dz_debug.ml";;

*)

let nam_dba = "nwchem";;
let nam_dbo = "lanl2dz";;


let tag_par_t = Parameter_tag_tree_by_parameters_general_provider_v.provide ();;
let tag_par_l = Parameter_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;
let tag_pdo = Parameter_context_domain_tag_by_unit_provider_v.provide ();;

(* Domain *)

test_number 1 (
(tag_pdo : Parameter_context_domain_symbol_t.parameter_context_domain_symbol Tag_t.tag ) =
  (Parameter_context_domain_symbol_t.Parameter_context_domain_constructor "parameter",
   [6])
);;

open Parameter_set_fence_aopef_container_v;;

(* Parameter_aopef_coefficient *)

let tag_par_pao = List.find 
    (fun t -> Parameter_symbol_v.is_parameter_parameter_aopef_symbol_off_parameter_symbol 
	(Tag_v.entity_off_tag t) ) 
    tag_par_l;;

test_number 2 (
( tag_par_pao : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_fence_symbol
    (Parameter_fence_symbol_t.Parameter_parameter_symbol
      (Parameter_parameter_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "ne s 1 1")))),
   [1; 1; 5; 5; 6])
);;

let tag_epa = Tag_v.map_entity Parameter_symbol_v.parameter_parameter_aopef_symbol_off_parameter_symbol tag_par_pao;;

test_number 3 (
( tag_epa : Parameter_set_fence_aopef_symbol_t.parameter_parameter_aopef_symbol Tag_t.tag ) =
  (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
    (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
      "ne s 1 1"),
   [1; 1; 5; 5; 6])
);;

let con_epa = container_of_tag tag_epa ;;

test_number 4 (
(con_epa : Parameter_set_fence_aopef_container_t.parameter_parameter_aopef_container ) =
  Parameter_set_fence_aopef_container_t.Parameter_set_fence_aopef_coefficient_container
   (Parameter_units_symbol_t.Parameter_units_length_symbol
     Parameter_units_length_symbol_t.Bohr,
    [1; 1; 1; 5; 5; 6])
);;

let fen_l = fence_as_list tag_epa;;

test_number 5 (
(fen_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_fence_symbol
     (Parameter_fence_symbol_t.Parameter_parameter_symbol
       (Parameter_parameter_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
           (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
             "ne s 1 1")))),
    [1; 1; 5; 5; 6])]
);;

let dfe_l = deepfence_as_list tag_epa;;

test_number 6 (
( dfe_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_deepfence_symbol
     (Parameter_deepfence_symbol_t.Parameter_units_symbol
       (Parameter_units_symbol_t.Parameter_units_length_symbol
         Parameter_units_length_symbol_t.Bohr)),
    [1; 1; 1; 5; 5; 6])]
);;

