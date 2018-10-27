open Make_test_v;;

testing "Property_operand_external_container_v with
    Property_operand_external_container_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* Debuging *)

(* toplevel 
   #use "Property_operand_external_container_u_any.ml";; 

*)

open Property_operand_external_container_v;;

let nam_ibo = "Point_a_print";;
let nam_iba = "local";;

let tag_pro_l = Property_tag_all_list_by_inputbox_name_n_inputbase_name_provider_v.provide (nam_ibo, nam_iba);;

let pre_tag_sof sof tag = 
  let sym = Tag_v.entity_off_tag tag in
  (Property_symbol_v.is_property_operand_external_constructor sym) 
    &&
  (Property_symbol_v.string_off sym = sof)
;;

let sof_poe = "Poi_a";;
let tag_pro_poe = List_v.only_element_of_predicate_off_list (pre_tag_sof sof_poe) tag_pro_l;; 

test_number 1 (
(tag_pro_poe : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_external_symbol
      (Property_operand_external_symbol_t.Property_operand_external_constructor
        "Poi_a")),
   [2; 1; 28; 1; 18; 6])
);;

let tag_poe = Property_operand_external_tag_v.property_operand_external_tag_off_property_tag tag_pro_poe;;

test_number 2 (
(tag_poe :
  Property_operand_external_symbol_t.property_operand_external_symbol
  Tag_t.tag) =
  (Property_operand_external_symbol_t.Property_operand_external_constructor
    "Poi_a",
   [2; 1; 28; 1; 18; 6])
);;

let con_poe = container_of_tag tag_poe;;

test_number 3 (
(con_poe :
  Property_operand_external_symbol_t.property_operand_external_symbol
  Tag_t.tag Uno_t.uno ) =
  (Property_operand_external_symbol_t.Property_operand_external_constructor
    "Poi_a",
   [2; 1; 28; 1; 18; 6])
);;

(** {6 Builder Tag List} *)

let tag_ptc = Tag_v.map_entity (* Coerce Down *) 
    Property_symbol_v.property_operand_external_symbol_off_property_symbol
  tag_pro_ptc;;

test_number 3 (
(tag_ptc :
  Property_operand_external_symbol_t.property_operand_external_symbol
  Tag_t.tag ) =
  (Property_operand_external_symbol_t.Property_operand_external_constructor
    "Poi_h",
   [2; 1; 38; 18])
);;

let tag_pro_l = builder_tag_list tag_ptc;;

test_number 4 (
( tag_pro_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
  [(Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_creation_symbol
       (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
         (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
           "Hom_b_2"))),
    [1; 2; 1; 38; 18]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_external_symbol
       (Property_operand_external_symbol_t.Property_operand_external_constructor
         "Poi_a")),
    [2; 2; 1; 38; 18])]
);;  
  
(** {6 Builder Duo} *)

let tag_d = builder_tag_duo tag_ptc;;

test_number 5 (
(tag_d : Property_symbol_t.property_symbol Tag_t.tag Duo_t.duo ) =
  ((Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_creation_symbol
       (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
         (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
           "Hom_b_2"))),
    [1; 2; 1; 38; 18]),
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_external_symbol
       (Property_operand_external_symbol_t.Property_operand_external_constructor
         "Poi_a")),
    [2; 2; 1; 38; 18]))
);;

(** {6 Container} *)

let con_ptc = container_of_tag tag_ptc;;

test_number 6 (
(con_ptc :  
   (Property_operator_creation_symbol_t.property_operator_creation_symbol
   Tag_t.tag, Property_operand_symbol_t.property_operand_symbol Tag_t.tag)
  Doublet_t.doublet ) =
  ((Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
     (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
       "Hom_b_2"),
    [1; 2; 1; 38; 18]),
   (Property_operand_symbol_t.Property_operand_external_symbol
     (Property_operand_external_symbol_t.Property_operand_external_constructor
       "Poi_a"),
    [2; 2; 1; 38; 18]))
);;

(** {9 Operator Tag} *)

let tag_pro_poc = property_as_operator_creation_tag tag_ptc;;

test_number 7 (
(tag_pro_poc : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operator_symbol
    (Property_operator_symbol_t.Property_operator_creation_symbol
      (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
        (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
          "Hom_b_2"))),
   [1; 2; 1; 38; 18])
);;

let tag_poc = property_operator_creation_tag tag_ptc;;

test_number 8 (
( tag_poc :
  Property_operator_creation_symbol_t.property_operator_creation_symbol
  Tag_t.tag ) =
  (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
    (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
      "Hom_b_2"),
   [1; 2; 1; 38; 18])
);;

(** {9 Operand Tag} *)

let tag_pro_pop = property_as_operand_tag tag_ptc;;

test_number 9 (
(tag_pro_pop : Property_symbol_t.property_symbol Tag_t.tag ) =
  (Property_symbol_t.Property_operand_symbol
    (Property_operand_symbol_t.Property_operand_external_symbol
      (Property_operand_external_symbol_t.Property_operand_external_constructor
        "Poi_a")),
   [2; 2; 1; 38; 18])
);;

let tag_pop = property_operand_tag tag_ptc;;

test_number 10 (
(tag_pop : Property_operand_symbol_t.property_operand_symbol Tag_t.tag ) =
  (Property_operand_symbol_t.Property_operand_external_symbol
    (Property_operand_external_symbol_t.Property_operand_external_constructor
      "Poi_a"),
   [2; 2; 1; 38; 18])
);;

(** {6 Fence Tag off Tag} *)

let fen_pro_ptc_l = fence_as_list tag_ptc;;

test_number 11 (
(fen_pro_ptc_l : Property_symbol_t.property_symbol Tag_t.tag list ) =
 [(Property_symbol_t.Property_operator_symbol
     (Property_operator_symbol_t.Property_operator_creation_symbol
       (Property_operator_creation_symbol_t.Property_operator_creation_toentity_symbol
         (Property_operator_creation_toentity_symbol_t.Property_operator_creation_toentity_constructor
           "Hom_b_2"))),
    [1; 2; 1; 38; 18]);
   (Property_symbol_t.Property_operand_symbol
     (Property_operand_symbol_t.Property_operand_external_symbol
       (Property_operand_external_symbol_t.Property_operand_external_constructor
         "Poi_a")),
    [2; 2; 1; 38; 18])]
);; 

