open Make_test_v;;

testing "Parameter_set_fence_container_v with
    Parameter_set_fence_container_u_test_ao_debug.ml";;

(* Deleting Registers *)


(* Tracing *)


(* toplevel 
   #use "Parameter_set_fence_container_u_test_ao_debug.ml";;

*)

(* Database file *)

let nam_dbo = "test_ao";;
let nam_dba = "nwchem";;

let tag_par_l = Parameter_tag_all_list_by_parameters_general_provider_v.provide () ;;

let pre_tag_eac_sof sof (s, i) = 
  (Parameter_symbol_v.parameter_set_fence_aopef_coefficient_constructor sof=s)
;;
 
let sof_par_eac = "he s 2 1";;

let tag_par_eac = List_v.only_element_of_predicate_off_list (pre_tag_eac_sof sof_par_eac) tag_par_l;;

test_number 1 (
(tag_par_eac : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_border_symbol
    (Parameter_border_symbol_t.Parameter_set_fence_symbol
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he s 2 1")))),
   [2; 3; 6; 5; 6])
);;

open Parameter_set_fence_container_v;; 
     
(* Argument *)

let tag_ebp = Tag_v.map_entity Parameter_symbol_v.parameter_set_fence_symbol_off_parameter_symbol tag_par_eac;;

test_number 2 (  
( tag_ebp :
  Parameter_set_fence_symbol_t.parameter_set_fence_symbol
  Tag_t.tag ) =
  (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
    (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
      (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
        "he s 2 1")),
   [2; 3; 6; 5; 6])
);;

(** {6 Coercing Up Parameter_set_fence_aopef_coefficient Tag} *)

test_number 3 (
tag_par_eac = coerce_up_tag tag_ebp
);;

(** {6 Builder Tag list} *)

let tag_bui_l = builder_tag_list tag_ebp;;

test_number 4 (
(tag_bui_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_fence_symbol
     (Parameter_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])]
);;

(** {6 Builder Tag Datastructure} *)

let tag_bui = builder_tag_uno tag_ebp;;

test_number 5 (
(tag_bui : Parameter_symbol_t.parameter_symbol Tag_t.tag Uno_t.uno ) =
  (Parameter_symbol_t.Parameter_fence_symbol
    (Parameter_fence_symbol_t.Units_symbol
      (Units_symbol_t.Units_length_symbol
        Units_length_symbol_t.Bohr)),
   [1; 2; 3; 6; 5; 6])
);;

(** {6 Building as Builder Tag uno} *)

let bug_ebp = building_of_tag tag_ebp;;

test_number 6 (
(bug_ebp : Parameter_symbol_t.parameter_symbol Tag_t.tag Uno_t.uno ) =
(Parameter_symbol_t.Parameter_fence_symbol
   (Parameter_fence_symbol_t.Units_symbol
      (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
 [1; 2; 3; 6; 5; 6])
);;

(** {6 Builder Tag tuple} *)

let tag_bui_t = builder_tag_tuple tag_ebp;;

test_number 7 (
(tag_bui_t :
   Parameter_symbol_t.parameter_symbol Tag_t.tag Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (Parameter_symbol_t.Parameter_fence_symbol
     (Parameter_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])
);;

(** {6 Coercing Down Builder Tag to Containee Tag} *)

let tag_ful = containee_tag_off_builder_tag tag_bui;;

test_number 8 (
(tag_ful :
  Units_length_symbol_t.units_length_symbol
  Tag_t.tag ) =
  (Units_length_symbol_t.Bohr, [1; 2; 3; 6; 5; 6])
);;

(** {6 Coercing Up Containee Tag} *)

let tag_bui = builder_tag_of_containee_tag tag_ful;;

test_number 9 (
(tag_bui : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_fence_symbol
    (Parameter_fence_symbol_t.Units_symbol
      (Units_symbol_t.Units_length_symbol
        Units_length_symbol_t.Bohr)),
   [1; 2; 3; 6; 5; 6])
);;

(** {6 Coercing Down Builder Tag to Containee Tag} *)

let cne_ebp = containee_tag_off_builder_tag tag_bui;;

test_number 10 (
( cne_ebp :
  Units_length_symbol_t.units_length_symbol
  Tag_t.tag ) =
  (Units_length_symbol_t.Bohr, [1; 2; 3; 6; 5; 6])
);;

(** {6 Container_of_tag : Containee Datastructure} *)

test_number 11 (
bug_ebp = builder_tag_uno tag_ebp
);;

(** {6 Containee Tag Datastructures} *)

test_number 12 (
tag_ful = containee_tag_uno tag_ebp
);;

let tag_ful_t = containee_tag_tuple tag_ebp;;

test_number 13 (
( tag_ful_t :
  Units_length_symbol_t.units_length_symbol
  Tag_t.tag Uno_t.uno Tuple_t.tuple ) =
  Tuple_t.Uno
   (Units_length_symbol_t.Bohr, [1; 2; 3; 6; 5; 6])
);;

(** {6 Fence *)

let fen_ebp_l = fence_as_list tag_ebp;;

test_number 14 (
(fen_ebp_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_fence_symbol
     (Parameter_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])]
);;

let fen_ebp_u = fence_as_uno tag_ebp;;

test_number 15 (
(fen_ebp_u : Parameter_symbol_t.parameter_symbol Tag_t.tag Uno_t.uno ) =
  (Parameter_symbol_t.Parameter_fence_symbol
    (Parameter_fence_symbol_t.Units_symbol
      (Units_symbol_t.Units_length_symbol
        Units_length_symbol_t.Bohr)),
   [1; 2; 3; 6; 5; 6])
);;

let fen_ebp_t = fence_as_tuple tag_ebp;;

test_number 16 (
( fen_ebp_t : Parameter_symbol_t.parameter_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Uno
   (Parameter_symbol_t.Parameter_fence_symbol
     (Parameter_fence_symbol_t.Units_symbol
       (Units_symbol_t.Units_length_symbol
         Units_length_symbol_t.Bohr)),
    [1; 2; 3; 6; 5; 6])
);;

let fen_ebp_tl = fence_as_tuple_list tag_ebp;;

test_number 17 (
(fen_ebp_tl :
  Parameter_symbol_t.parameter_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Uno
    (Parameter_symbol_t.Parameter_fence_symbol
      (Parameter_fence_symbol_t.Units_symbol
        (Units_symbol_t.Units_length_symbol
          Units_length_symbol_t.Bohr)),
     [1; 2; 3; 6; 5; 6])]
);;

