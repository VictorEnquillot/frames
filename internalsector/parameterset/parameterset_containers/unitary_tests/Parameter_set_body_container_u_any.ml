open Make_test_v;;

testing "Parameter_set_body_container_v with
    Parameter_set_body_container_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Parameter_set_body_container_u_any.ml";;

*)

open Parameter_set_body_tuple_container_v;; 
     
let nam_dbo = "try_ao";;
let nam_dba = "nwchem";;

let tag_par_l = Parameter_tag_all_list_by_databox_name_n_database_name_provider_v.provide (nam_dbo, nam_dba);;

let pre_tag_pta_sof sof (s, i) = 
  (Parameter_symbol_v.parameter_set_body_tuple_aopef_constructor sof=s)
;;

let sof_par_pta = "he p 2 2";;

let tag_par_pta = List_v.only_element_of_predicate_off_list (pre_tag_pta_sof sof_par_pta) tag_par_l;;

test_number 1 (
( tag_par_pta : Parameter_symbol_t.parameter_symbol Tag_t.tag ) =
  (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_body_symbol 
    (Parameter_set_body_symbol_t.Parameter_set_body_tuple_symbol
      (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
        (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
          "he p 2 2")))),
   [5; 22; 5; 6; 5])
);;

(* Argument *)

let tag_pbt = Tag_v.map_entity Parameter_symbol_v.parameter_set_body_tuple_symbol_off_parameter_symbol tag_par_pta;;

test_number 2 (  
(tag_pbt :
 Parameter_set_body_tuple_symbol_t.parameter_set_body_tuple_symbol
  Tag_t.tag ) =
  (Parameter_set_body_tuple_symbol_t.Parameter_set_body_tuple_aopef_symbol
    (Parameter_set_body_tuple_aopef_symbol_t.Parameter_set_body_tuple_aopef_constructor
      "he p 2 2"),
   [5; 22; 5; 6; 5])
);;

(** {6 Coercing Up Parameter_set_body_tuple_coefficient Tag} *)

test_number 3 (
tag_par_pta = coerce_up_tag tag_pbt
);;

(** {6 Builders} *)

(** {9 Builder Tag list} *)

let tag_bui_l = builder_tag_list tag_pbt;;

test_number 4 (
(tag_bui_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
         (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
           "he p 2 2")))),
    [1; 5; 22; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
         (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
           "he p 2 2")))),
    [2; 5; 22; 5; 6; 5])]
);;

(** {9 Builder Tag Tuple} *)

let tag_bui_t = builder_tag_tuple tag_pbt;;

test_number 5 (
(tag_bui_t : Parameter_symbol_t.parameter_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Parameter_symbol_t.Parameter_set_symbol
      (Parameter_set_symbol_t.Parameter_set_fence_symbol
        (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
          (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
            (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
              "he p 2 2")))),
     [1; 5; 22; 5; 6; 5]),
    (Parameter_symbol_t.Parameter_set_symbol
      (Parameter_set_symbol_t.Parameter_set_fence_symbol
        (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
          (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
            (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
              "he p 2 2")))),
     [2; 5; 22; 5; 6; 5]))
);;

(** {9 Building as Builder Tag duo} *)

let bug_pbt = building_of_tag tag_pbt;;

test_number 6 (
(bug_pbt : Parameter_symbol_t.parameter_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 2 2")))),
     [1; 5; 22; 5; 6; 5]),
    (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 2 2")))),
     [2; 5; 22; 5; 6; 5]))
);;

(** {6 Container} *)

(** {9 Coercing Down Builder Tag to Containee Tag} *)

let tag_cnu_l = List.map containee_up_tag_off_builder_tag tag_bui_l;;

test_number 7 (
(tag_cnu_l :
  Parameter_set_fence_symbol_t.parameter_set_fence_symbol
  Tag_t.tag list ) =
 [(Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he p 2 2")),
    [1; 5; 22; 5; 6; 5]);
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he p 2 2")),
    [2; 5; 22; 5; 6; 5])]
);;

(** {9 Coercing Up Containee_up to Builder} *)

test_number 8 (
tag_bui_l = List.map builder_tag_of_containee_up_tag tag_cnu_l
);;

(** {9 Containee_up Tag list} *)

let tag_cnu_l = containee_up_tag_list tag_pbt;;

test_number 9 (
(tag_cnu_l :
  Parameter_set_fence_symbol_t.parameter_set_fence_symbol
  Tag_t.tag list ) =
  [(Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
       (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
         "he p 2 2")),
    [1; 5; 22; 5; 6; 5]);
   (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
     (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
       (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
         "he p 2 2")),
    [2; 5; 22; 5; 6; 5])]
);;

(** {9 Extracting Containees off Containee_up} *)

(** {9 Container_of_tag : Containee Datastructure} *)

(** {9 Extracting Containees off Tag} *)

(** {6 Fence *)

let fen_pbt_l = fence_as_list tag_pbt;;

test_number 10 (
(fen_pbt_l : Parameter_symbol_t.parameter_symbol Tag_t.tag list ) =
  [(Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
         (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
           "he p 2 2")))),
    [1; 5; 22; 5; 6; 5]);
   (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
     (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
       (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
         (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
           "he p 2 2")))),
    [2; 5; 22; 5; 6; 5])]
);;

let fen_pbt_t = fence_as_tuple tag_pbt;;

test_number 11 (
( fen_pbt_t : Parameter_symbol_t.parameter_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Duo
   ((Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
          (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
            "he p 2 2")))),
     [1; 5; 22; 5; 6; 5]),
    (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
      (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
        (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
          (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
            "he p 2 2")))),
     [2; 5; 22; 5; 6; 5]))
);;

let fen_pbt_tl = fence_as_tuple_list tag_pbt;;

test_number 12 (
(fen_pbt_tl :
  Parameter_symbol_t.parameter_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Duo
    ((Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_exponent_symbol
           (Parameter_set_fence_aopef_exponent_symbol_t.Parameter_set_fence_aopef_exponent_constructor
             "he p 2 2")))),
      [1; 5; 22; 5; 6; 5]),
     (Parameter_symbol_t.Parameter_set_symbol ( Parameter_set_symbol_t.Parameter_set_fence_symbol 
       (Parameter_set_fence_symbol_t.Parameter_set_fence_aopef_symbol
         (Parameter_set_fence_aopef_symbol_t.Parameter_set_fence_aopef_coefficient_symbol
           (Parameter_set_fence_aopef_coefficient_symbol_t.Parameter_set_fence_aopef_coefficient_constructor
             "he p 2 2")))),
      [2; 5; 22; 5; 6; 5]))]
);;


