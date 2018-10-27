open Make_test_v;;

testing "Measure_homogeneous_tuple_list_by_basicname_target_operand_n_basicname_variable_operator_n_basicname_inputbox_provider_v
        Measure_homogeneous_tuple_list_by_basicname_target_operand_n_basicname_variable_operator_n_basicname_inputbox_provider_u_print_translation_tra_bc_point_a.ml"

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
(*          external_name "A" *)
(*          external_context Con_pa *)
(*          end -- external *)
(*        end -- define *)

(* define Poi_t *)
(*        target  *)
(*          type [ "property" "operand" "body" "target" "created" "constructor" ] *)
(*          target_operator Tra_bc *)
(*          target_operand Poi_a *)
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
   #use "Measure_homogeneous_tuple_list_by_basicname_target_operand_n_basicname_variable_operator_n_basicname_inputbox_provider_u_print_translation_tra_bc_point_a.ml";;
   
 *)

open Measure_homogeneous_tuple_list_by_basicname_target_operand_n_basicname_variable_operator_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_translation_tra_bc_point_a";;
let nam_iba = "local";;
let nam_tar_opd = "Poi_a";;
let nam_var_ope = "Tra_bc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;
let bna_iba = Basicname_v.basicname_inputbase_of_string nam_iba;;
let bna_tar_opd = Basicname_v.basicname_target_operand_of_string nam_tar_opd;;
let bna_var_ope = Basicname_v.basicname_variable_operator_of_string nam_var_ope;;

Basicname_v.check_is_basicname_target_operand_of_basicname bna_tar_opd;;
Basicname_v.check_is_basicname_variable_operator_of_basicname bna_var_ope;;
Basicname_v.check_is_basicname_inputbox_of_basicname bna_ibo;;

(* Operation *)
let bna_opt =
  Basicname_operation_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo);;

test_number 1 (
(bna_opt : Basicname_t.basicname ) = 
Basicname_t.Operation "translation"
);;

let nam_opt = Basicname_v.string_off bna_opt;;

(* Cofactor_entity *)

let bna_cof_ent =
  Basicname_cofactor_entity_by_basicname_variable_operator_n_basicname_inputbox_provider_v.provide
    (bna_var_ope, bna_ibo);;

test_number 2 (
( bna_cof_ent : Basicname_t.basicname ) =
Basicname_t.Cofactor_entity "Seg_bc"
);;

let bna_var = Basicname_v.basicname_variable_of_basicname_cofactor_entity bna_cof_ent;;

let kin_var = 
  Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
    (bna_var, bna_ibo);;

test_number 3 (
( kin_var :
    Localinput_set_fence_variable_kind_symbol_t.localinput_set_fence_variable_kind_symbol ) =
Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_entity_symbol
  (Localinput_set_fence_variable_kind_entity_symbol_t.Localinput_set_fence_variable_kind_entity_external_symbol
     (Localinput_set_fence_variable_kind_entity_external_symbol_t.Localinput_set_fence_variable_kind_entity_external_constructor
	"Seg_bc"))
);;

let mea_hom_cof_tl =
  Measure_homogeneous_tuple_list_by_basicname_cofactor_entity_n_basicname_inputbox_provider_v.provide
    (bna_cof_ent, bna_ibo);;

test_number 4 (
(mea_hom_cof_tl : Measure_t.measure Tuple_t.tuple list ) =
[Tuple_t.Trio
   ((1.,
     Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
    (0.,
     Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
    (0.,
     Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)));
 Tuple_t.Trio
   ((6.12303176911188629e-17,
     Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
    (1.,
     Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)),
    (1.,
     Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Angstrom)))]
);;

(* Check case external or not  *)
 
let bna_var_cof = Basicname_v.basicname_variable_of_basicname_cofactor_entity bna_cof_ent;;
      
let kin_var_cof = 
  Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
    (bna_var_cof, bna_ibo);;

test_number 5 (
( kin_var_cof :
  Localinput_set_fence_variable_kind_symbol_t.localinput_set_fence_variable_kind_symbol ) =
  Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_entity_symbol
   (Localinput_set_fence_variable_kind_entity_symbol_t.Localinput_set_fence_variable_kind_entity_external_symbol
     (Localinput_set_fence_variable_kind_entity_external_symbol_t.Localinput_set_fence_variable_kind_entity_external_constructor
       "Seg_bc"))
);;

(* Measure_homogeneous_tuple_list of Operand *)

let bna_var_opd = Basicname_v.basicname_variable_of_basicname_target_operand bna_tar_opd;;

let kin_var_opd = 
  Localinput_set_fence_variable_kind_symbol_by_basicname_variable_n_basicname_inputbox_provider_v.provide 
    (bna_var_opd, bna_ibo);;

test_number 6 (
(kin_var_opd :
  Localinput_set_fence_variable_kind_symbol_t.localinput_set_fence_variable_kind_symbol ) =
  Localinput_set_fence_variable_kind_symbol_t.Localinput_set_fence_variable_kind_entity_symbol
   (Localinput_set_fence_variable_kind_entity_symbol_t.Localinput_set_fence_variable_kind_entity_external_symbol
     (Localinput_set_fence_variable_kind_entity_external_symbol_t.Localinput_set_fence_variable_kind_entity_external_constructor
       "Poi_a"))
);;
		  
let nam_tar_opd = Basicname_v.string_off bna_tar_opd;;
		  
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_tar_opd;;

test_number 7 (
(bna_var_ext : Basicname_t.basicname ) =
Basicname_t.Variable_external "Poi_a"
);;
	  
let mea_hom_opd_tl =
  Measure_homogeneous_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
    (bna_var_ext, bna_ibo)
;;

test_number 8 (	
(mea_hom_opd_tl : Measure_t.measure Tuple_t.tuple list ) =
[Tuple_t.Trio
   ((0.5,
     Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
    (0.499999999999999889,
     Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
    (0.707106781186547573,
     Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))]
);;
  
let mea_hom_tl = Coordinate_operation_measure_v.translation mea_hom_opd_tl mea_hom_cof_tl;;

test_number 9 (
( mea_hom_tl : (float, Units_t.units) Doublet_t.doublet Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((2.38972612456506184,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (-1.38972612456506184,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)),
     (-1.18261934337851438,
      Units_t.Units_actual
       (Units_actual_t.Units_actual_length Units_actual_length_t.Bohr)))]
);;
