open Make_test_v;;

testing "Camlline_duo_function_interface_v with
   Camlline_duo_function_interface_u_figure_symbol_figure_value_alone.ml";;

(* toplevel 
   #use "Camlline_duo_function_interface_u_figure_symbol_figure_value_alone.ml";;

*)

let nam_dos = "figure";;
let sym_dos = Domain_symbol_v.make nam_dos "";;

let sym_cat_l = Domainset_interface_v.make sym_dos;;

test_number 1 (
sym_cat_l 
(* : Category_symbol_t.category_symbol list *)
=
  [Category_symbol_t.Any;
   Category_symbol_t.Formula;
   Category_symbol_t.Mark;
   Category_symbol_t.Path;
   Category_symbol_t.Property;
   Category_symbol_t.Provider;
   Category_symbol_t.Symbol;
   Category_symbol_t.Tag;
   Category_symbol_t.Value;
   Category_symbol_t.Empty]
);;

let nam_cat = "symbol";;
let sym_cat = Category_symbol_v.make nam_cat;;
let dou_cat = (sym_cat, sym_dos) ;;

let sym_enp_l = Category_interface_v.make_of_tuple dou_cat;;

test_number 2 (
 sym_enp_l 
(* : Entity_propert.entity_proper_symbol list *)
=
  [Entity_symbol_t.Entity_proper "figure";
   Entity_symbol_t.Entity_proper "triangle";
   Entity_symbol_t.Entity_proper "triangle_isoceles";
   Entity_symbol_t.Entity_proper "triangle_scalene";
   Entity_symbol_t.Entity_proper "coordinate";
   Entity_symbol_t.Entity_proper "coordinate_cartesian";
   Entity_symbol_t.Entity_proper "coordinate_cylindrical";
   Entity_symbol_t.Entity_proper "coordinate_polar";
   Entity_symbol_t.Entity_proper "coordinate_spherical"]
);;

let nam_enp = "entity_proper";;
let str_enp = "figure";;
let sym_enp = Entity_symbol_v.make nam_enp str_enp;;
let sym_ent = Entity_symbol_v.entity_symbol_of_entity_proper_symbol sym_enp;;
let tri_enp = (sym_enp, sym_cat, sym_dos) ;;

let sym_cof_l = Entity_interface_v.make_of_tuple tri_enp;;

test_number 3 (
sym_cof_l 
(* : Contentfile_symbol_t.contentfile_symbol list *)
=
[Contentfile_symbol_t.Type_alone; 
 Contentfile_symbol_t.Value_alone]
);;

let nam_cof = "value_alone";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let qua_cof = (sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_usf_l = Contentfile_interface_v.make_of_tuple qua_cof;;

test_number 4 (
sym_usf_l 
(* : Usagefile_symbol_t.usagefile_symbol list *) 
=
  [Usagefile_symbol_t.Usagefile_implementation_symbol
    Usagefile_implementation_symbol_t.Implementation_for_symbol;
   Usagefile_symbol_t.Usagefile_interface_symbol
    Usagefile_interface_symbol_t.Interface_for_symbol]
);;

let nam_uim = "implementation_for_symbol";;
let sym_uim = Usagefile_implementation_symbol_v.make nam_uim;;
let sym_usf = Usagefile_symbol_v.make nam_uim;;
let qui_uim = (sym_uim, sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_ite_l = Usagefile_implementation_interface_v.make_of_tuple qui_uim;;

test_number 5 (
sym_ite_l 
(* :  Item_symbol_t.item_symbol list *)
=  
  [Item_symbol_t.Item_only_top_symbol
    (Item_only_top_symbol_t.Item_only_top_for_any_symbol
      Item_only_top_for_any_symbol_t.Heading);
   Item_symbol_t.Item_only_top_symbol
    (Item_only_top_symbol_t.Item_only_top_for_any_symbol
      Item_only_top_for_any_symbol_t.Documenting);
   Item_symbol_t.Item_all_topsons_symbol
    (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
      Item_all_topsons_for_symbol_symbol_t.Naming_for_symbol);
   Item_symbol_t.Item_all_topsons_symbol
    (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
      Item_all_topsons_for_symbol_symbol_t.String_offing_for_symbol);
   Item_symbol_t.Item_only_top_symbol
    (Item_only_top_symbol_t.Item_only_top_for_symbol_symbol
      Item_only_top_for_symbol_symbol_t.Longnaming_for_symbol);
   Item_symbol_t.Item_only_top_symbol
    (Item_only_top_symbol_t.Item_only_top_for_symbol_symbol
      Item_only_top_for_symbol_symbol_t.Fullnaming_for_symbol);
   Item_symbol_t.Item_each_topson_notleaf_symbol
    (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
      Item_each_topson_notleaf_for_symbol_symbol_t.Extracting_topson_for_symbol);
   Item_symbol_t.Item_each_grandson_notleaf_symbol
    (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
      Item_each_grandson_notleaf_for_symbol_symbol_t.Extracting_grandson_for_symbol);
   Item_symbol_t.Item_each_topson_notleaf_symbol
    (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
      Item_each_topson_notleaf_for_symbol_symbol_t.Querying_topson_for_symbol);
   Item_symbol_t.Item_each_grandson_notleaf_symbol
    (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
      Item_each_grandson_notleaf_for_symbol_symbol_t.Querying_grandson_for_symbol);
   Item_symbol_t.Item_each_topson_notleaf_symbol
    (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
      Item_each_topson_notleaf_for_symbol_symbol_t.Upgrading_topson_for_symbol);
   Item_symbol_t.Item_each_grandson_notleaf_symbol
    (Item_each_grandson_notleaf_symbol_t.Item_each_grandson_notleaf_for_symbol_symbol
      Item_each_grandson_notleaf_for_symbol_symbol_t.Upgrading_grandson_for_symbol);
   Item_symbol_t.Item_all_topsons_symbol
    (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
      Item_all_topsons_for_symbol_symbol_t.Making_for_symbol);
   Item_symbol_t.Item_only_top_symbol
    (Item_only_top_symbol_t.Item_only_top_for_any_symbol
      Item_only_top_for_any_symbol_t.Ending)]
);;

let nam_ifs = "Naming_for_symbol";;
let str_ifs = "";;
let sym_ifs = Item_all_topsons_for_symbol_symbol_v.make nam_ifs str_ifs;;
let sym_ite = Item_symbol_v.make nam_ifs str_ifs;;

let sym_cap_l = Item_all_topsons_for_symbol_interface_v.make sym_ifs;;

test_number 6 (
sym_cap_l 
(* : Camlparagraph_symbol_t.camlparagraph_symbol list *)
=
  [Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      (Camlparagraph_for_any_comment_symbol_t.Item_title "Naming_for_symbol"));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
        Camlparagraph_for_symbol_let_match_symbol_t.Let_name_equal_function_for_symbol))]
);;

let sym_cap = List.nth sym_cap_l (idx_cap-1);;
let sym_clm = Camlparagraph_symbol_v.camlparagraph_for_symbol_let_match_symbol_off_camlparagraph_symbol sym_cap;;
let sep_clm = (sym_clm, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_sec_l = Camlparagraph_for_symbol_let_match_interface_v.make sep_clm soi_cap;;

test_number 7 (
sym_sec_l
(* : Section_symbol_t.section_symbol list *)
=
  [Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol
        Section_for_symbol_header_constant_symbol_t.Let_name_equal_function));
   Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
        Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_for_symbol));
   Section_symbol_t.Section_for_any_symbol
    (Section_for_any_symbol_t.Section_for_any_footer_symbol
      (Section_for_any_footer_symbol_t.Section_for_any_footer_constant_symbol
        Section_for_any_footer_constant_symbol_t.Double_semicolon))]
);;

(* 1 Section_for_symbol_header_constant_symbol_t.Let_name_equal_function *)
let sym_sec = List.nth sym_sec_l (idx_sec-1);;
let sym_shc = Section_symbol_v.section_for_symbol_header_constant_symbol_off_section_symbol sym_sec;;
let oct_shc = (sym_shc, sym_cap, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_gro_l = Section_for_symbol_header_constant_interface_v.make oct_shc soi_sec;;

test_number 8 (
sym_gro_l
(* : Group_symbol_t.group_symbol list *)
=
  [Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol
        Group_for_symbol_header_constant_symbol_t.Let_name_equal_function))]
);;

let sym_gro = List.nth sym_gro_l (idx_gro-1);;
let sym_ghc = Group_symbol_v.group_for_symbol_header_constant_symbol_off_group_symbol sym_gro;;
let non_ghc = (sym_ghc, sym_sec, sym_cap, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_cal_l = Group_for_symbol_header_constant_interface_v.make non_ghc soi_gro;;

test_number 9 (
sym_cal_l 
(* : Camlline_symbol_t.camlline_symbol list *)
=
  [Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Let_name_equal_function)]
);;

let sym_cal = List.nth sym_cal_l (idx_cal-1);;
let sym_ccf = Camlline_symbol_v.camlline_constant_function_symbol_off_camlline_symbol sym_cal;;

let sym_ent_l = Camlline_constant_function_interface_v.make sym_ccf;;

test_number 10 (
sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  []
);;

(* 2 Section_for_symbol_body_son_top_symbol_t.Name_topson_pattern_for_symbol *)
let sym_sec = List.nth sym_sec_l (idx_sec-1);;
let sym_sst = Section_symbol_v.section_for_symbol_body_son_top_symbol_off_section_symbol sym_sec;;
let oct_sst = (sym_sst, sym_cap, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_enl_l = Tools_ignr_v.entity_topson_notleaf_symbol_list_of_octtup oct_sst;;

test_number 11 (
sym_enl_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "triangle");
   Entity_symbol_t.Entity_proper_symbol
    (Entity_symbol_t.Entity_proper "coordinate")]
);;

let sym_gnl_l = Tools_ignr_v.topson_notleaf_symbol_repeated_list_of_octtup_of_group_symbol oct_sst Group_symbol_v.pipe_upgrade_name_notleaf_function;;

test_number 12 (
sym_gnl_l 
(* : Group_symbol_t.group_symbol list *)
=
  [Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
        Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function));
   Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
        Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function))]
);;

let sym_elo_l = Tools_ignr_v.entity_topson_leaf_ofstring_symbol_list_of_octtup oct_sst;;

test_number 13 (
sym_elo_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Sonnullary "vector"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Sonnullary "point"))]
);;

let sym_glo_l = Tools_ignr_v.topson_leaf_ofstring_symbol_repeated_list_of_octtup_of_group_symbol oct_sst Group_symbol_v.pipe_upgrade_name_leaf_ofstring_function;;

test_number 14 (
sym_glo_l 
(* : Group_symbol_t.group_symbol list *)
=
  [Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
        Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_leaf_ofstring_function));
   Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
        Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_leaf_ofstring_function))]
);;

let sym_elb_l = Tools_ignr_v.entity_topson_leaf_bare_symbol_list_of_octtup oct_sst;;

test_number 15 (
sym_elb_l 
(* : Entity_symbol_t.entity_symbol list *)
= 
[]
);;

let sym_glb_l = Tools_ignr_v.topson_leaf_bare_symbol_repeated_list_of_octtup_of_group_symbol oct_sst Group_symbol_v.pipe_upgrade_name_leaf_bare_function;;

test_number 16 (
sym_glb_l 
(* : Group_symbol_t.group_symbol list *)
=
[]
);;

let sym_gro_l = Section_for_symbol_body_son_top_interface_v.make oct_sst soi_sec;;

test_number 17 (
sym_gro_l 
(* : Group_symbol_t.group_symbol list *)
=
  [Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
        Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function));
   Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
        Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function));
   Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
        Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_leaf_ofstring_function));
   Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_body_symbol
      (Group_for_symbol_body_symbol_t.Group_for_symbol_body_son_top_symbol
        Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_leaf_ofstring_function))]
);;

(* 1 Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function *)
let sym_gro = List.nth sym_gro_l (idx_gro-1);;
let sym_ghc = Group_symbol_v.group_for_symbol_body_son_top_symbol_off_group_symbol sym_gro;;
let non_ghc = (sym_ghc, sym_sec, sym_cap, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_cal_l = Group_for_symbol_body_son_top_interface_v.make non_ghc soi_gro;;

test_number 18 (
sym_cal_l 
(* : Camlline_symbol_t.camlline_symbol list *)
=
  [Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_space_ass_arrow);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Space2_Es_symbol_vdot_name_sym_as)]
);;

(* 1 Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_space_ass_arrow *)
let sym_cal = List.nth sym_cal_l (idx_cal-1);;
let sym_cdf = Camlline_symbol_v.camlline_duo_function_symbol_off_camlline_symbol sym_cal;;
let dec_cdf = (sym_cdf, sym_gro, sym_sec, sym_cap, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

let sym_ent_l = Camlline_duo_function_interface_v.make dec_cdf soi_cal;;

test_number 19 (
sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "triangle");
 Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "figure")]
);;

(* 2 Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_space_ass_arrow *)
let sym_cal = List.nth sym_cal_l (idx_cal-1);;
let sym_cdf = Camlline_symbol_v.camlline_duo_function_symbol_off_camlline_symbol sym_cal;;
let dec_cdf = (sym_cdf, sym_gro, sym_sec, sym_cap, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

let sym_ent_l = Camlline_duo_function_interface_v.make dec_cdf soi_cal;;

test_number 20 (
sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "triangle");
 Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "figure")]
);;

(* 2 Group_for_symbol_body_son_top_symbol_t.Pipe_upgrade_name_notleaf_function *)
let sym_gro = List.nth sym_gro_l (idx_gro-1);;
let sym_ghc = Group_symbol_v.group_for_symbol_body_son_top_symbol_off_group_symbol sym_gro;;
let non_ghc = (sym_ghc, sym_sec, sym_cap, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos) ;;

let sym_cal_l = Group_for_symbol_body_son_top_interface_v.make non_ghc soi_gro;;

test_number 21 (
sym_cal_l 
(* : Camlline_symbol_t.camlline_symbol list *)
=
  [Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_space_ass_arrow);
   Camlline_symbol_t.Camlline_duo_symbol
    (Camlline_duo_symbol_t.Camlline_duo_function_symbol
      Camlline_duo_function_symbol_t.Space2_Es_symbol_vdot_name_sym_as)]
);;

(* 1 Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_space_ass_arrow *)
let sym_cal = List.nth sym_cal_l (idx_cal-1);;
let sym_cdf = Camlline_symbol_v.camlline_duo_function_symbol_off_camlline_symbol sym_cal;;
let dec_cdf = (sym_cdf, sym_gro, sym_sec, sym_cap, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

let sym_ent_l = Camlline_duo_function_interface_v.make dec_cdf soi_cal;;

test_number 22 (
sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate");
 Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "figure")]
);;

(* 2 Camlline_duo_function_symbol_t.Pipe_Et_symbol_tdot_Es_symbol_space_ass_arrow *)
let sym_cal = List.nth sym_cal_l (idx_cal-1);;
let sym_cdf = Camlline_symbol_v.camlline_duo_function_symbol_off_camlline_symbol sym_cal;;
let dec_cdf = (sym_cdf, sym_gro, sym_sec, sym_cap, sym_ite, sym_usf, sym_cof, sym_ent, sym_cat, sym_dos);;

let sym_ent_l = Camlline_duo_function_interface_v.make dec_cdf soi_cal;;

test_number 23 (
sym_ent_l 
(* : Entity_symbol_t.entity_symbol list *)
=
[Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "coordinate");
 Entity_symbol_t.Entity_proper_symbol
   (Entity_symbol_t.Entity_proper "figure")]
);;

