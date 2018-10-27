open Make_test_v;;

testing "Figure_field_body_segment closure_v with
   Figure_field_body_segment_envelope_u_any.ml"
;;

(* toplevel 
   #use "Figure_field_body_segment_closure_v.ml";; 

*)



let nam_dom = "figure";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

let nam_fil = Filename_p.filename "/keep/sources/ocaml_top/setup/frames/figureset/functional_tests/segment.inp";;
Input_filename_by_domain_tag_register_v.store tag_dom nam_fil;;

let tag_tar_l = Target_tag_list_by_domain_tag_provider_v.provide tag_dom;;

test_number 1 (
tag_tar_l 
(* : Target_symbol_t.target_symbol Tag_t.tag list *)
=
   [(Target_symbol_t.Target_figureset_symbol
     (Target_figureset_symbol_t.Target_figureset_symbol_constructor "segment"),
    [1; 3])]
);;

(* 1 Target "segment_length" *)

let nam_tar = "target_figureset";;
let sto_tar = "segment";;
let sym_tar = Target_symbol_v.make nam_tar sto_tar;;
let tag_tar = Doublet_list_v.find_if_left (fun s -> s = sym_tar) tag_tar_l;;

let inf_mod_l = Model_information_list_by_target_tag_provider_v.provide tag_tar;;

test_number 2 (
inf_mod_l
(* : Model_information_t.model_information list *)
=
  [Model_information_t.Model_figureset_information
    {Model_figureset_information_t.model_name = "segment";
     Model_figureset_information_t.model_title = "a segment";
     Model_figureset_information_t.coordinate_what = "cartesian";
     Model_figureset_information_t.coordinate_units_angle =
      Units_angle_t.Radian;
     Model_figureset_information_t.coordinate_units_length =
      Units_length_t.Meter;
     Model_figureset_information_t.database_name = "db1";
     Model_figureset_information_t.entity_what = "segment";
     Model_figureset_information_t.entity_name = "bc"}]
);;

let tag_mod_l = Model_tag_list_by_target_tag_provider_v.provide tag_tar;;

test_number 3 (
tag_mod_l 
(* : Model_symbol_t.model_symbol Tag_t.tag list *)
=
  [(Model_symbol_t.Model_figureset_symbol
     (Model_figureset_symbol_t.Model_figureset_symbol_constructor "segment"),
    [1; 1; 3])]
);;

(* 1 Model_tag "segment" *)

let nam_mod = "model_figureset";;
let sto_mod = "segment";;
let sym_mod = Model_symbol_v.make nam_mod sto_mod;;
let tag_mod = Doublet_list_v.find_if_left (fun s -> s = sym_mod) tag_mod_l;;

let tag_mfi = Tag_v.map_entity Model_symbol_v.model_figureset_symbol_off_model_symbol tag_mod;;

(* 1 Figure_tag "triangle_equilateral" *)

let tag_fig = Figure_tag_from_model_figureset_tag_translator_v.translate tag_mfi;;

test_number 4 (
tag_fig 
(* : Figure_symbol_t.figure_symbol * int list *)
=
 (Figure_symbol_t.Figure_field_body_segment_symbol (Figure_field_body_segment_symbol_t.Figure_field_body_segment_constructor "bc"),
   [1; 1; 3])
);;

let tag_vec = Tag_v.map_entity Figure_symbol_v.segment_symbol_off_figure_symbol tag_fig;;

test_number 5 (
tag_vec 
(* : Figure_field_body_segment_symbol_t.segment_symbol Tag_t.tag *)
=
(Figure_field_body_segment_symbol_t.Figure_field_body_segment_constructor "bc", [1; 1; 3])
);; 

let val_vec = Figure_field_body_segment_closure_v.retrieve tag_vec;;

test_number 6 (
val_vec 
=

);;

