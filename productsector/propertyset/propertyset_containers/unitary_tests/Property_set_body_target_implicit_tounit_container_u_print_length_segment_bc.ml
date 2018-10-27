open Make_test_v;;

testing "Property_set_body_target_implicit_tounit_container_v with
        Property_set_body_target_implicit_tounit_container_u_print_length_segment_bc.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Property_set_body_target_implicit_tounit_container_u_print_length_segment_bc.ml";; 

*)

open Property_set_body_target_implicit_tounit_container_v;;

let nam_ibo = "Print_length_segment_bc";;
let nam_iba = "local";;

let tag_pro_l = Property_tag_all_list_by_inputbox_name_n_inputbase_name_provider_v.provide (nam_ibo, nam_iba);;

test_number 1 (
(tag_pro_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_sector_symbol
       (Property_context_sector_symbol_t.Property_context_sector_constructor
         "product")),
    [6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_domain_symbol
       (Property_context_domain_symbol_t.Property_context_domain_constructor
         "property")),
    [18; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbase_symbol
       (Property_context_inputbase_symbol_t.Property_context_inputbase_constructor
         "local")),
    [1; 18; 6]);
   (Property_symbol_t.Property_context_symbol
     (Property_context_symbol_t.Property_context_inputbox_symbol
       (Property_context_inputbox_symbol_t.Property_context_inputbox_constructor
         "Print_length_segment_bc")),
    [41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_body_symbol
       (Property_set_body_symbol_t.Property_set_body_target_implicit_symbol
         (Property_set_body_target_implicit_symbol_t.Property_set_body_target_implicit_tounit_symbol
           (Property_set_body_target_implicit_tounit_symbol_t.Property_set_body_target_implicit_tounit_constructor
             "Len_bc")))),
    [1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Property_set_fence_operator_symbol
         (Property_set_fence_operator_symbol_t.Property_set_fence_operator_tounit_symbol
           (Property_set_fence_operator_tounit_symbol_t.Property_set_fence_operator_tounit_print_symbol
             (Property_set_fence_operator_tounit_print_symbol_t.Property_set_fence_operator_tounit_print_constructor
               "Len_bc"))))),
    [1; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_body_symbol
       (Property_set_body_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
           (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_measured_symbol
             (Property_set_body_operand_target_measured_symbol_t.Property_set_body_operand_target_measured_constructor
               "Len_bc"))))),
    [2; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Property_set_fence_operator_symbol
         (Property_set_fence_operator_symbol_t.Property_set_fence_operator_creation_symbol
           (Property_set_fence_operator_creation_symbol_t.Property_set_fence_operator_creation_tomeasure_symbol
             (Property_set_fence_operator_creation_tomeasure_symbol_t.Property_set_fence_operator_creation_tomeasure_constructor
               "Len"))))),
    [1; 2; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Property_set_fence_operand_external_symbol
         (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
           "Seg_bc"))),
    [2; 2; 1; 41; 1; 18; 6])]
);;

let pre_tag_pit_sof sof (s, i) = (Property_symbol_v.property_set_body_target_implicit_tounit_constructor sof = s);;
let sof_pit = "Len_bc";;
let tag_pro_pit = List_v.only_element_of_predicate_off_list (pre_tag_pit_sof sof_pit) tag_pro_l;;

test_number 2 (
(tag_pro_pit : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_set_symbol
    (Property_set_symbol_t.Property_set_body_symbol
      (Property_set_body_symbol_t.Property_set_body_target_implicit_symbol
        (Property_set_body_target_implicit_symbol_t.Property_set_body_target_implicit_tounit_symbol
          (Property_set_body_target_implicit_tounit_symbol_t.Property_set_body_target_implicit_tounit_constructor
            "Len_bc")))),
   [1; 41; 1; 18; 6])
);;

(* Argument tag_pit *)

let tag_pit = Property_set_body_target_implicit_tounit_tag_v.property_set_body_target_implicit_tounit_tag_off_property_tag 
    tag_pro_pit;;

test_number 3 (
(tag_pit :
  Property_set_body_target_implicit_tounit_symbol_t.property_set_body_target_implicit_tounit_symbol
  Tag_t.tag ) =
  (Property_set_body_target_implicit_tounit_symbol_t.Property_set_body_target_implicit_tounit_constructor
    "Len_bc",
   [1; 41; 1; 18; 6])
);;

(** {6 Coercing Up Tag} *)

test_number 4 ( 
tag_pro_pit = coerce_up_tag tag_pit
);;

(** {6 Builder Tag List} *)

let bui_pit_l = builder_tag_list_of_tag tag_pit;;

test_number 5 (
( bui_pit_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Property_set_fence_operator_symbol
         (Property_set_fence_operator_symbol_t.Property_set_fence_operator_tounit_symbol
           (Property_set_fence_operator_tounit_symbol_t.Property_set_fence_operator_tounit_print_symbol
             (Property_set_fence_operator_tounit_print_symbol_t.Property_set_fence_operator_tounit_print_constructor
               "Len_bc"))))),
    [1; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_body_symbol
       (Property_set_body_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
           (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_measured_symbol
             (Property_set_body_operand_target_measured_symbol_t.Property_set_body_operand_target_measured_constructor
               "Len_bc"))))),
    [2; 1; 41; 1; 18; 6])]
);;  
  
(** {9 Builder Tag Datastructures} *)

let bui_pit_d = builder_tag_duo tag_pit ;;

test_number 6 (
(bui_pit_d : Property_symbol_t.property_symbol Tag_t.tag Duo_t.duo ) =
  ((Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Property_set_fence_operator_symbol
         (Property_set_fence_operator_symbol_t.Property_set_fence_operator_tounit_symbol
           (Property_set_fence_operator_tounit_symbol_t.Property_set_fence_operator_tounit_print_symbol
             (Property_set_fence_operator_tounit_print_symbol_t.Property_set_fence_operator_tounit_print_constructor
               "Len_bc"))))),
    [1; 1; 41; 1; 18; 6]),
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_body_symbol
       (Property_set_body_symbol_t.Property_set_body_operand_symbol
         (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
           (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_measured_symbol
             (Property_set_body_operand_target_measured_symbol_t.Property_set_body_operand_target_measured_constructor
               "Len_bc"))))),
    [2; 1; 41; 1; 18; 6]))
);;

(** {9 Building as Builder Tag duo} *)

test_number 7 (
bui_pit_d = building_of_tag tag_pit
);;

(** {6 Container} *)

(** {9 Container_of_tag : Containee Datastructure} *)

let con_pit = container_of_tag tag_pit;;

test_number 8 (
(con_pit :
  (Property_set_fence_operator_tounit_symbol_t.property_set_fence_operator_tounit_symbol
   Tag_t.tag,
   Property_set_body_operand_symbol_t.property_set_body_operand_symbol
   Tag_t.tag)
  Doublet_t.doublet ) =
  ((Property_set_fence_operator_tounit_symbol_t.Property_set_fence_operator_tounit_print_symbol
     (Property_set_fence_operator_tounit_print_symbol_t.Property_set_fence_operator_tounit_print_constructor
       "Len_bc"),
    [1; 1; 41; 1; 18; 6]),
   (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
     (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_measured_symbol
       (Property_set_body_operand_target_measured_symbol_t.Property_set_body_operand_target_measured_constructor
         "Len_bc")),
    [2; 1; 41; 1; 18; 6]))
);;

(** {9 Extracting Containees off Tag} *)

let con_fir_pit = first_containee_tag tag_pit;;

test_number 9 (
(con_fir_pit :
  Property_set_fence_operator_tounit_symbol_t.property_set_fence_operator_tounit_symbol
  Tag_t.tag ) =
  (Property_set_fence_operator_tounit_symbol_t.Property_set_fence_operator_tounit_print_symbol
    (Property_set_fence_operator_tounit_print_symbol_t.Property_set_fence_operator_tounit_print_constructor
      "Len_bc"),
   [1; 1; 41; 1; 18; 6])
);;

let con_sec_pit = second_containee_tag tag_pit;;

test_number 10 (
(con_sec_pit :
  Property_set_body_operand_symbol_t.property_set_body_operand_symbol
  Tag_t.tag ) =
  (Property_set_body_operand_symbol_t.Property_set_body_operand_target_symbol
    (Property_set_body_operand_target_symbol_t.Property_set_body_operand_target_measured_symbol
      (Property_set_body_operand_target_measured_symbol_t.Property_set_body_operand_target_measured_constructor
        "Len_bc")),
   [2; 1; 41; 1; 18; 6])
);;

(** {6 Fence *)

let fen_pro_pit_l = fence_as_list_of_tag tag_pit;;

test_number 11 (
(fen_pro_pit_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Property_set_fence_operator_symbol
         (Property_set_fence_operator_symbol_t.Property_set_fence_operator_tounit_symbol
           (Property_set_fence_operator_tounit_symbol_t.Property_set_fence_operator_tounit_print_symbol
             (Property_set_fence_operator_tounit_print_symbol_t.Property_set_fence_operator_tounit_print_constructor
               "Len_bc"))))),
    [1; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Property_set_fence_operator_symbol
         (Property_set_fence_operator_symbol_t.Property_set_fence_operator_creation_symbol
           (Property_set_fence_operator_creation_symbol_t.Property_set_fence_operator_creation_tomeasure_symbol
             (Property_set_fence_operator_creation_tomeasure_symbol_t.Property_set_fence_operator_creation_tomeasure_constructor
               "Len"))))),
    [1; 2; 1; 41; 1; 18; 6]);
   (Property_symbol_t.Property_set_symbol
     (Property_set_symbol_t.Property_set_fence_symbol
       (Property_set_fence_symbol_t.Property_set_fence_operand_external_symbol
         (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
           "Seg_bc"))),
    [2; 2; 1; 41; 1; 18; 6])]
);; 


let fen_pro_pit_t = fence_as_tuple_of_tag tag_pit;;

test_number 12 (
(fen_pro_pit_t : Property_symbol_t.property_symbol Tag_t.tag Tuple_t.tuple ) =
  Tuple_t.Trio
   ((Property_symbol_t.Property_set_symbol
      (Property_set_symbol_t.Property_set_fence_symbol
        (Property_set_fence_symbol_t.Property_set_fence_operator_symbol
          (Property_set_fence_operator_symbol_t.Property_set_fence_operator_tounit_symbol
            (Property_set_fence_operator_tounit_symbol_t.Property_set_fence_operator_tounit_print_symbol
              (Property_set_fence_operator_tounit_print_symbol_t.Property_set_fence_operator_tounit_print_constructor
                "Len_bc"))))),
     [1; 1; 41; 1; 18; 6]),
    (Property_symbol_t.Property_set_symbol
      (Property_set_symbol_t.Property_set_fence_symbol
        (Property_set_fence_symbol_t.Property_set_fence_operator_symbol
          (Property_set_fence_operator_symbol_t.Property_set_fence_operator_creation_symbol
            (Property_set_fence_operator_creation_symbol_t.Property_set_fence_operator_creation_tomeasure_symbol
              (Property_set_fence_operator_creation_tomeasure_symbol_t.Property_set_fence_operator_creation_tomeasure_constructor
                "Len"))))),
     [1; 2; 1; 41; 1; 18; 6]),
    (Property_symbol_t.Property_set_symbol
      (Property_set_symbol_t.Property_set_fence_symbol
        (Property_set_fence_symbol_t.Property_set_fence_operand_external_symbol
          (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
            "Seg_bc"))),
     [2; 2; 1; 41; 1; 18; 6]))
);;

let fen_pro_pit_tl = fence_as_tuple_list_of_tag tag_pit;;
 
test_number 13 (
( fen_pro_pit_tl :
  Property_symbol_t.property_symbol Tag_t.tag Tuple_t.tuple list ) =
  [Tuple_t.Trio
    ((Property_symbol_t.Property_set_symbol
       (Property_set_symbol_t.Property_set_fence_symbol
         (Property_set_fence_symbol_t.Property_set_fence_operator_symbol
           (Property_set_fence_operator_symbol_t.Property_set_fence_operator_tounit_symbol
             (Property_set_fence_operator_tounit_symbol_t.Property_set_fence_operator_tounit_print_symbol
               (Property_set_fence_operator_tounit_print_symbol_t.Property_set_fence_operator_tounit_print_constructor
                 "Len_bc"))))),
      [1; 1; 41; 1; 18; 6]),
     (Property_symbol_t.Property_set_symbol
       (Property_set_symbol_t.Property_set_fence_symbol
         (Property_set_fence_symbol_t.Property_set_fence_operator_symbol
           (Property_set_fence_operator_symbol_t.Property_set_fence_operator_creation_symbol
             (Property_set_fence_operator_creation_symbol_t.Property_set_fence_operator_creation_tomeasure_symbol
               (Property_set_fence_operator_creation_tomeasure_symbol_t.Property_set_fence_operator_creation_tomeasure_constructor
                 "Len"))))),
      [1; 2; 1; 41; 1; 18; 6]),
     (Property_symbol_t.Property_set_symbol
       (Property_set_symbol_t.Property_set_fence_symbol
         (Property_set_fence_symbol_t.Property_set_fence_operand_external_symbol
           (Property_set_fence_operand_external_symbol_t.Property_set_fence_operand_external_constructor
             "Seg_bc"))),
      [2; 2; 1; 41; 1; 18; 6]))]
);; 
