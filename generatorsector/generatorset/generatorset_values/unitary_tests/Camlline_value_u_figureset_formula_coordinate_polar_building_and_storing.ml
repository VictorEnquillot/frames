open Make_test_v;;

testing "Camlline_value_v with
   Camlline_value_u_figureset_formula_coordinate_polar_building_and_storing.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_formula_coordinate_polar_building_and_storing.ml";;

*)

let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_ent = "coordinate_polar";;
let nam_cat = "formula";;
let nam_usf = "implementation_for_formula";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;

let tag_dom = Tag_v.make sym_dom soi_dom;;

test_number 1 (
tag_dom
(* : Domain_symbol_t.domain_symbol Tag_t.tag *)
= 
(Domain_symbol_t.Figure, [2])
);;

let tag_cat_l = Domain_formula_v.category_tag_list_off_domain_tag tag_dom;;

test_number 2 (
tag_cat_l
  =
  [(Category_symbol_t.Any, [1; 2]);
   (Category_symbol_t.Formula, [2; 2]);
   (Category_symbol_t.Mark, [3; 2]);
   (Category_symbol_t.Path, [4; 2]);
   (Category_symbol_t.Property, [5; 2]);
   (Category_symbol_t.Provider, [6; 2]);
   (Category_symbol_t.Symbol, [7; 2]);
   (Category_symbol_t.Tag, [8; 2]);
   (Category_symbol_t.Value, [9; 2]);
   (Category_symbol_t.Empty, [10; 2])]
);;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;

test_number 3 (
tag_cat
(* : Category_symbol_v.Category_symbol_t.category_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Category_symbol_t.Formula, [2; 2])
);;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent)
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 4 (
tag_ent
(* : Entity_symbol_t.entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
 (Entity_symbol_t.Entity_proper_symbol
    (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_polar"),
   [4; 2; 2])
);;

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_tag tag_ent;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;

test_number 5 (
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 4; 2; 2])
);;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_tag tag_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;

test_number 6 (
tag_usf
  =
  (Usagefile_symbol_t.Usagefile_for_formula_symbol
    Usagefile_for_formula_symbol_t.Implementation_for_formula,
   [1; 2; 4; 2; 2])
);;

let sym_ent = Tag_v.entity_off_tag tag_ent;;
let sym_cat = Tag_v.entity_off_tag tag_cat;;
let sym_dom = Tag_v.entity_off_tag tag_dom;;
let tri_ent = Triplet_v.make sym_ent sym_cat sym_dom;;
let sym_ets_l = Entity_topson_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;

test_number 7 (
sym_ets_l
(*: Entity_symbol_t.entity_symbol list *)
=
 [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "polar_rho"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "polar_theta"))]
);;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;

(* 1 Item_for_formula_by_group_topsons_symbol_t.Building_and_storing_basic_sons *)

let nam_ite = "building_and_storing_basic_sons";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 8 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_formula_symbol
    (Item_for_formula_symbol_t.Item_for_formula_only_top_symbol
      Item_for_formula_only_top_symbol_t.Building_and_storing_basic_sons),
   [3; 1; 2; 4; 2; 2])
);;

let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_tag tag_ite;;

(* 2 Camlparagraph_for_formula_let_argument_symbol_t.Let_build_n_store_basic_sons *)

let idx_cap = 2;;
let tag_cap = List.nth tag_cap_l (idx_cap-1);;

test_number 9 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_formula_symbol
    (Camlparagraph_for_formula_symbol_t.Camlparagraph_for_formula_let_symbol
      (Camlparagraph_for_formula_let_symbol_t.Camlparagraph_for_formula_let_argument_symbol
        Camlparagraph_for_formula_let_argument_symbol_t.Let_build_n_store_basic_sons)),
   [2; 3; 1; 2; 4; 2; 2])
);;

(* (\* camlparagraph_for_formula_let_argument : let_build_n_store_basic_sons *\) *)

(* (\* section_for_formula_header_top_main : let_build_n_store_basic_sons  *\) *)
(* (\* group_for_formula_header_top_main : let_build_n_store_basic_sons  *\) *)
(* let build_n_store sym_top soi_mai = *)

(* (\* group_for_formula_body_top_main : main_tag_off_top_symbol *\) *)
(*   let sym_mai = Main_symbol_v.main_symbol_of_top_symbol sym_top in *)
(*   let tag_mai = Tag_v.make sym_mai soi_mai in      (\* let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in *\) *)

(* (\* group_for_formula_body_top_builder : builder_stem_symbol_data_list *\) *)
(*   let sym_dat_l = Data_symbol_list_by_main_tag_provider_v.provide tag_mai in *)

(* (\* section_for_formula_body_top_data : builder_stem_sole_index_data_list  *\) *)

(* (\* group_for_formula_body_main_data : sole_index_data_list  *\) *)
(*   let soi_dat_l = *)
(*     Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index *)
(*       1 (List.length sym_dat_l) soi_mai in *)

(* (\* section_for_formula_body_data : data_tag_list  *\) *)

(* (\* group_for_formula_body_data_alone : generatorset_symbol_of_data *\) *)
(*   let gss_of_sym = Generatorset_symbol_v.generatorset_symbol_of_data_symbol in *)
(*   let gss_dat_l = List.map gss_of_sym sym_dat_l in *)

(* (\* group_for_formula_body_data_alone : store_data_tag_list *\) *)
(*   List.iter2 Generatorset_symbol_by_sole_index_register_v.store soi_dat_l gss_dat_l; *)
  
(* (\* group_for_formula_body_data_alone : make_data_tag_list *\) *)
(*   List.map2 Tag_v.make sym_dat_l soi_dat_l *)
(* ;; *)

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

(* (\* section_for_formula_header_top_main : let_build_n_store_basic_sons  *\) *)
(* (\* section_for_formula_body_top_data : builder_stem_sole_index_data_list  *\) *)
(* (\* section_for_formula_body_data : data_tag_list  *\) *)

test_number 10 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_header_symbol
       (Section_for_formula_header_symbol_t.Section_for_formula_header_top_main_symbol
         Section_for_formula_header_top_main_symbol_t.Let_build_n_store_basic_sons)),
    [1; 2; 3; 1; 2; 4; 2; 2]);
   (Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_body_symbol
       (Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_data_symbol
         Section_for_formula_body_top_main_data_symbol_t.Builder_stem_sole_index_data_list)),
    [2; 2; 3; 1; 2; 4; 2; 2]);
   (Section_symbol_t.Section_for_formula_symbol
     (Section_for_formula_symbol_t.Section_for_formula_body_symbol
       (Section_for_formula_body_symbol_t.Section_for_formula_body_localset_data_symbol
         Section_for_formula_body_localset_data_symbol_t.Data_tag_list)),
    [3; 2; 3; 1; 2; 4; 2; 2]);
   (Section_symbol_t.Section_for_any_symbol
     (Section_for_any_symbol_t.Section_for_any_footer_symbol
       Section_for_any_footer_symbol_t.Double_semicolon),
    [4; 2; 3; 1; 2; 4; 2; 2])]
);; 

(* 1 Section_for_formula_header_top_main_symbol_t.Let_build_n_store_basic_sons *)

(* section_for_formula_header_top_main : let_build_n_store_basic_sons  *)
(* group_for_formula_header_top_main : let_build_n_store_basic_sons  *)
(* let build_n_store sym_top soi_mai = *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 11 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_header_symbol
      (Section_for_formula_header_symbol_t.Section_for_formula_header_top_main_symbol
        Section_for_formula_header_top_main_symbol_t.Let_build_n_store_basic_sons)),
   [1; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 12 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_header_symbol
       (Group_for_formula_header_symbol_t.Group_for_formula_header_top_main_symbol
         Group_for_formula_header_top_main_symbol_t.Let_build_n_store_basic_sons)),
    [1; 1; 2; 3; 1; 2; 4; 2; 2])]
);;

(* 1 Group_for_any_header_constant_symbol_t.Type_et_any_equal *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 13 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_formula_symbol
    (Group_for_formula_symbol_t.Group_for_formula_header_symbol
      (Group_for_formula_header_symbol_t.Group_for_formula_header_top_main_symbol
        Group_for_formula_header_top_main_symbol_t.Let_build_n_store_basic_sons)),
   [1; 1; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;; 

test_number 14 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_top_main_symbol
         Camlline_for_any_duo_top_main_symbol_t.Let_build_n_store_sym_at_soi_am_equal)),
    [1; 1; 1; 2; 3; 1; 2; 4; 2; 2])]
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 15 (
str_l
(* : string list *)
=
["let build_n_store sym_cpo soi_coo ="]
);;

(* 1 Camlline_for_any_duo_top_main_symbol_t.Let_build_n_store_sym_at_soi_am_equal *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 16 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_any_symbol
    (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
      (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_top_main_symbol
        Camlline_for_any_duo_top_main_symbol_t.Let_build_n_store_sym_at_soi_am_equal)),
   [1; 1; 1; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 17 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_polar"),
    [1; 1; 1; 1; 2; 3; 1; 2; 4; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
    [2; 1; 1; 1; 2; 3; 1; 2; 4; 2; 2])]
);;

(* 2 Section_for_formula_body_top_main_data_symbol_t.Builder_stem_sole_index_data_list *)

(* Section_for_formula_body_top_main_data : builder_stem_sole_index_data_list  *)
(* Group_for_formula_body_top_main : main_tag_off_top_symbol *)
  (* let sym_mai = Main_symbol_v.main_symbol_of_top_symbol sym_top in *)
  (* let tag_mai = Tag_v.make sym_mai soi_mai in  *)

(* Group_for_formula_body_main_data : builder_stem_symbol_data_list *)
  (* let sym_dat_l = Data_symbol_list_by_main_tag_provider_v.provide tag_mai in *)

(* Group_for_formula_body_main_data : sole_index_data_list  *)
  (* let soi_dat_l = *)
  (*   Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index *)
  (*     1 (List.length sym_dat_l) soi_mai in *)

let idx_sec = 2;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 18 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_body_symbol
      (Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_data_symbol
        Section_for_formula_body_top_main_data_symbol_t.Builder_stem_sole_index_data_list)),
   [2; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

(* Group_for_formula_body_top_data : main_tag_off_top_symbol *)
(* Group_for_formula_body_main_data : builder_stem_symbol_data_list *)
(* Group_for_formula_body_main_data : sole_index_data_list  *)

test_number 19 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol
         (Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol
           Group_for_formula_body_top_main_symbol_t.Main_tag_off_top_symbol))),
    [1; 2; 2; 3; 1; 2; 4; 2; 2]);
   (Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_main_data_symbol
         Group_for_formula_body_main_data_symbol_t.Builder_stem_symbol_data_list)),
    [2; 2; 2; 3; 1; 2; 4; 2; 2]);
   (Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_main_data_symbol
         Group_for_formula_body_main_data_symbol_t.Sole_index_data_list)),
    [3; 2; 2; 3; 1; 2; 4; 2; 2])]
);;

(* 1 Group_for_formula_body_top_main_symbol_t.Main_tag_off_top_symbol *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 20 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
(Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_top_symbol
         (Group_for_formula_body_top_symbol_t.Group_for_formula_body_top_main_symbol
           Group_for_formula_body_top_main_symbol_t.Main_tag_off_top_symbol))),
    [1; 2; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

(*  let sym_dat_l = Data_symbol_list_by_main_tag_provider_v.provide tag_mai in *)

test_number 21 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
       (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_main_symbol
         Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in)),
    [1; 1; 2; 2; 3; 1; 2; 4; 2; 2]);
   (Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol
       (Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_main_symbol
         Camlline_for_formula_uno_main_symbol_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in)),
    [2; 1; 2; 2; 3; 1; 2; 4; 2; 2])]
);;

(* 1 Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 22 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
      (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_top_main_symbol
        Camlline_for_formula_duo_top_main_symbol_t.Let_sym_am_equal_em_symbol_vdot_em_symbol_of_et_symbol_sym_at_in)),
   [1; 1; 2; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 23 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_polar"),
    [1; 1; 1; 2; 2; 3; 1; 2; 4; 2; 2]);
   (Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
    [2; 1; 1; 2; 2; 3; 1; 2; 4; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 24 (
str 
(* : string *)
  =
 "  let sym_coo = Coordinate_symbol_v.coordinate_symbol_of_coordinate_polar_symbol sym_cpo in"
);;

(* 2 Camlline_for_formula_uno_main_symbol_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 25 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol
      (Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_main_symbol
        Camlline_for_formula_uno_main_symbol_t.Let_tag_am_equal_tag_vdot_make_sym_am_soi_am_in)),
   [2; 1; 2; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 26 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
    [1; 2; 1; 2; 2; 3; 1; 2; 4; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 27 (
str 
(* : string *)
  =
 "  let tag_coo = Tag_v.make sym_coo soi_coo in"
);;

(* 2 Group_for_formula_body_top_data_symbol_t.Builder_stem_symbol_data_list *)
(*  let sym_dat_l = Data_symbol_list_by_main_tag_provider_v.provide tag_mai in *)

let idx_gro = 2;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 28 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_formula_symbol
    (Group_for_formula_symbol_t.Group_for_formula_body_symbol
      (Group_for_formula_body_symbol_t.Group_for_formula_body_main_data_symbol
        Group_for_formula_body_main_data_symbol_t.Builder_stem_symbol_data_list)),
   [2; 2; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

(*  let sym_dat_l = Data_symbol_list_by_main_tag_provider_v.provide tag_mai in *)

test_number 29 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
       (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_data_symbol
         Camlline_for_formula_duo_main_data_symbol_t.Let_sym_ad_l_equal_ed_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in)),
    [1; 2; 2; 2; 3; 1; 2; 4; 2; 2])]
);;

(* 1 Camlline_for_formula_duo_top_builder_symbol_t.Let_sym_ab_l_equal_et_interface_vdot_make_sym_at_in *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 30 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
      (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_data_symbol
        Camlline_for_formula_duo_main_data_symbol_t.Let_sym_ad_l_equal_ed_symbol_list_by_em_tag_provider_vdot_provide_tag_am_in)),
   [1; 2; 2; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 31 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
 [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
    [1; 1; 2; 2; 2; 3; 1; 2; 4; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
       (Entity_fictive_basicnullary_symbol_t.Float "")),
    [2; 1; 2; 2; 2; 3; 1; 2; 4; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 32 (
str 
(* : string *)
  =
"  let sym_flo_l = Float_symbol_list_by_coordinate_tag_provider_v.provide tag_coo in"
);;

(* 3 Group_for_formula_body_main_data_symbol_t.Sole_index_data_list *)

let idx_gro = 3;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 33 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_formula_symbol
    (Group_for_formula_symbol_t.Group_for_formula_body_symbol
      (Group_for_formula_body_symbol_t.Group_for_formula_body_main_data_symbol
        Group_for_formula_body_main_data_symbol_t.Sole_index_data_list)),
   [3; 2; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

(* let soi_dat_l = *)
(*    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index *)
(*      1 (List.length sym_dat_l) soi_mai in *)

test_number 34 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol
       (Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_data_symbol
         Camlline_for_formula_uno_data_symbol_t.Let_soi_ad_l_equal)),
    [1; 3; 2; 2; 3; 1; 2; 4; 2; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index),
    [2; 3; 2; 2; 3; 1; 2; 4; 2; 2]);
   (Camlline_symbol_t.Camlline_for_formula_symbol
     (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
       (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_data_symbol
         Camlline_for_formula_duo_main_data_symbol_t.One_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in)),
    [3; 3; 2; 2; 3; 1; 2; 4; 2; 2])]
);;

(* 1 Camlline_for_formula_uno_data_symbol_t.Let_soi_ad_l_equal *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 35 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_uno_symbol
      (Camlline_for_formula_uno_symbol_t.Camlline_for_formula_uno_data_symbol
        Camlline_for_formula_uno_data_symbol_t.Let_soi_ad_l_equal)),
   [1; 3; 2; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 36 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
       (Entity_fictive_basicnullary_symbol_t.Float "")),
    [1; 1; 3; 2; 2; 3; 1; 2; 4; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 37 (
str
(* : string *)
  =
 "  let soi_flo_l ="
);;

(* 2 Camlline_for_formula_uno_builder_symbol_t.Let_soi_ab_l_equal *)

let idx_cal = 2;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 38 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Sole_index_vdot_son_sole_index_list_of_int_of_length_of_sole_index),
   [2; 3; 2; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 39 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  []
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 40 (
str
(* : string *)
  =
  "    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index"
);;

(* 3 Camlline_for_formula_uno_son_symbol_t.Sole_index_vdot_es_sole_index_list_of_int_of_length_of_sole_index *)

let idx_cal = 3;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 41 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_for_formula_symbol
    (Camlline_for_formula_symbol_t.Camlline_for_formula_duo_symbol
      (Camlline_for_formula_duo_symbol_t.Camlline_for_formula_duo_main_data_symbol
        Camlline_for_formula_duo_main_data_symbol_t.One_lpar_list_dot_length_sym_ad_l_rpar_soi_am_in)),
   [3; 3; 2; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 42 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol
     (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"),
    [1; 3; 3; 2; 2; 3; 1; 2; 4; 2; 2]);
   (Entity_symbol_t.Entity_fictive_symbol
     (Entity_fictive_symbol_t.Entity_fictive_basicnullary_symbol
       (Entity_fictive_basicnullary_symbol_t.Float "")),
    [2; 3; 3; 2; 2; 3; 1; 2; 4; 2; 2])]
);;

let str = Camlline_value_v.string_off_camlline_tag tag_cal;;

test_number 43 (
str
(* : string *)
  =
"    1 (List.length sym_flo_l) soi_coo in"
);;

let str_l = Group_value_v.string_list_off_group_tag tag_gro;;

test_number 44 (
str_l
(* : string list *)
=
  ["  let soi_flo_l =";
   "    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index";
   "    1 (List.length sym_flo_l) soi_coo in"]
);;

let str_l = Section_value_v.string_list_off_section_tag tag_sec;;

test_number 45 (
str_l 
(* : string list*)
 =
  ["  let sym_coo = Coordinate_symbol_v.coordinate_symbol_of_coordinate_polar_symbol sym_cpo in";
   "  let tag_coo = Tag_v.make sym_coo soi_coo in";
   "  let sym_flo_l = Float_symbol_list_by_coordinate_tag_provider_v.provide tag_coo in";
   "  let soi_flo_l =";
   "    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index";
   "    1 (List.length sym_flo_l) soi_coo in"]
);;

(* 3 Section_for_formula_body_builder_symbol_t.Tag_builder_basic_list *)

let idx_sec = 3;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 46 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_formula_symbol
    (Section_for_formula_symbol_t.Section_for_formula_body_symbol
      (Section_for_formula_body_symbol_t.Section_for_formula_body_localset_data_symbol
        Section_for_formula_body_localset_data_symbol_t.Data_tag_list)),
   [3; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 47 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_formula_symbol
     (Group_for_formula_symbol_t.Group_for_formula_body_symbol
       (Group_for_formula_body_symbol_t.Group_for_formula_body_data_alone_symbol
         Group_for_formula_body_data_alone_symbol_t.Make_data_tag_list)),
    [1; 3; 2; 3; 1; 2; 4; 2; 2])]
);;

(* 4 Section_for_formula_body_son_top_builder_symbol_t.Builder_tag_list_topson_pattern_bare_for_formula *)

let idx_sec = 4;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 48 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_any_symbol
    (Section_for_any_symbol_t.Section_for_any_footer_symbol
      Section_for_any_footer_symbol_t.Double_semicolon),
   [4; 2; 3; 1; 2; 4; 2; 2])
);;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;;

test_number 49 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_any_symbol
     (Group_for_any_symbol_t.Group_for_any_footer_symbol
       Group_for_any_footer_symbol_t.Double_semicolon),
    [1; 4; 2; 3; 1; 2; 4; 2; 2])]
);;

let str_l = Camlparagraph_value_v.string_list_off_camlparagraph_tag tag_cap;;

test_number 50 (
 str_l 
(* : string list *)
=
  ["let build_n_store sym_cpo soi_coo =";
   "  let sym_coo = Coordinate_symbol_v.coordinate_symbol_of_coordinate_polar_symbol sym_cpo in";
   "  let tag_coo = Tag_v.make sym_coo soi_coo in";
   "  let sym_flo_l = Float_symbol_list_by_coordinate_tag_provider_v.provide tag_coo in";
   "  let soi_flo_l =";
   "    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index";
   "    1 (List.length sym_flo_l) soi_coo in";
   "  List.map2 Tag_v.make sym_flo_l soi_flo_l";
   ";;"]
);;

let str_l = Item_value_v.string_list_off_item_tag tag_ite;; 

test_number 51 (
str_l 
(* : string list *) 
  =
["(** {6 Building_and_storing_basic_sons} *)";
 "let build_n_store sym_cpo soi_coo =";
 "  let sym_coo = Coordinate_symbol_v.coordinate_symbol_of_coordinate_polar_symbol sym_cpo in";
 "  let tag_coo = Tag_v.make sym_coo soi_coo in";
 "  let sym_flo_l = Float_symbol_list_by_coordinate_tag_provider_v.provide tag_coo in";
 "  let soi_flo_l =";
 "    Sole_index_v.son_sole_index_list_of_int_of_length_of_sole_index";
 "    1 (List.length sym_flo_l) soi_coo in";
 "  List.map2 Tag_v.make sym_flo_l soi_flo_l";
 ";;"]
);;

let val_ite = Item_value_v.retrieve tag_ite;;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;

test_number 52 (
nam_fil
(* : string *)
  =
  "./Coordinate_polar_formula_building_and_storing_basic_sons_v.ml"
);;

Item_value_v.write "./" tag_ite;;

