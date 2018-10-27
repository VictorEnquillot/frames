open Make_test_v;;

testing "Localinput_tag_all_list_by_domain_tag_provider_v with
   Localinput_tag_all_list_by_domain_tag_provider_u_figure_operator.ml";;

(* toplevel 
   #use "Localinput_tag_all_list_by_domain_tag_provider_u_figure_operator.ml";;

*)

(* Deleting Registers *)

















(* Tracing *)



let nam_dom = "user";;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

test_number 1 (
tag_dom
(* Domain_tag_t.domain_tag *)
= 
(Domain_symbol_t.Figure, [3])
);;

let bna_ibo = Basicname_v.basicname_inputbox_of_string "/keep/sources/ocaml_top/setup/frames/figureset/functional_tests/figure_operator";;
let nam_fil = Filename_p.filename nam_ibo;;

test_number 2 (
nam_fil
=
Localinputbox_name_by_domain_tag_provider_v.provide tag_dom
);;

  let tag_tar_l = Target_tag_list_by_domain_tag_provider_v.provide tag_dom;;
  let tag_loi_tar_l = List.map 
      (Tag_v.map_entity (* coerce up *)
	 Localinput_symbol_v.localinput_symbol_of_target_symbol) 
      tag_tar_l
 ;;
  let tag_mod_l = List.flatten 
      (List.map 
	 Model_tag_list_by_target_tag_provider_v.provide 
	 tag_tar_l)
 ;;
  let tag_loi_mod_l = List.map
      (Tag_v.map_entity (* coerce up *)
	 Localinput_symbol_v.localinput_symbol_of_model_symbol)
      tag_mod_l
 ;;

  let tag_loi_l = tag_loi_tar_l @ tag_loi_mod_l;;
  let sym_inp_l = Doublet_list_v.left_list_off_doublet_list tag_loi_l;;

let tag_loi_l = Localinput_tag_all_list_by_domain_tag_provider_v.provide tag_dom;;

test_number 3 (
tag_loi_l 
(* : Localinput_symbol_t.localinput_symbol Tag_t.tag list *)
=
  [(Localinput_symbol_t.Target_symbol
     (Target_symbol_t.Target_figureset_symbol
       (Target_figureset_symbol_t.Target_figureset_symbol_constructor
         "triangle_equilateral_homothety")),
    [1; 3]);
   (Localinput_symbol_t.Target_symbol
     (Target_symbol_t.Target_figureset_symbol
       (Target_figureset_symbol_t.Target_figureset_symbol_constructor
         "triangle_equilateral_translation")),
    [2; 3]);
   (Localinput_symbol_t.Model_symbol
     (Model_symbol_t.Model_figureset_symbol
       (Model_figureset_symbol_t.Model_figureset_symbol_constructor
         "triangle_equilateral_t")),
    [1; 1; 3]);
   (Localinput_symbol_t.Model_symbol
     (Model_symbol_t.Model_figureset_symbol
       (Model_figureset_symbol_t.Model_figureset_symbol_constructor
         "triangle_equilateral_t")),
    [1; 2; 3])]
);;
