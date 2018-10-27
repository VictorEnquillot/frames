open Make_test_v;;

testing "Section_for_symbol_header_constant_interface_v with
   Section_for_symbol_header_constant_interface_u_figure_symbol_figure.ml";;

(* toplevel 
   #use "Section_for_symbol_header_constant_interface_u_figure_symbol_figure.ml";;

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
   Entity_symbol_t.Entity_proper "coordinate";
   Entity_symbol_t.Entity_proper "coordinate_cartesian";
   Entity_symbol_t.Entity_proper "coordinate_cylindrical";
   Entity_symbol_t.Entity_proper "coordinate_polar";
   Entity_symbol_t.Entity_proper "coordinate_spherical";
   Entity_symbol_t.Entity_proper "triangle";
   Entity_symbol_t.Entity_proper "triangle_isoceles";
   Entity_symbol_t.Entity_proper "triangle_scalene"]
);;

let nam_enp = "entity_proper";;
let str_enp = "coordinate_cartesian";;
let sym_enp = Entity_symbol_v.make nam_enp str_enp;;
let tri_enp = (sym_enp, sym_cat, sym_dos) ;;

let sym_cof_l = Entity_interface_v.make_of_tuple tri_enp;;

test_number 3 (
sym_cof_l 
(* : Contentfile_symbol_t.contentfile_symbol list *)
=
[Contentfile_symbol_t.Type_alone; 
 Contentfile_symbol_t.Value_alone]
);;

let nam_cof = "type_alone";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let qua_cof = (sym_cof, sym_enp, sym_cat, sym_dos) ;;

let sym_usf_l = Contentfile_interface_v.make_of_tuple qua_cof;;

test_number 4 (
sym_usf_l 
(* : Usagefile_symbol_t.usagefile_symbol list *) 
=
[Usagefile_symbol_t.Usagefile_implementation_symbol
   Usagefile_implementation_symbol_t.Implementation_for_symbol]
);;

let nam_cof = "value_alone";;
let sym_cof = Contentfile_symbol_v.make nam_cof;;
let qua_cof = (sym_cof, sym_enp, sym_cat, sym_dos) ;;

let sym_usf_l = Contentfile_interface_v.make_of_tuple qua_cof;;

test_number 5 (
sym_usf_l 
(* : Usagefile_implementation_symbol_t.usagefile_implementation_symbol list *) 
=
[Usagefile_symbol_t.Usagefile_implementation_symbol
   Usagefile_implementation_symbol_t.Implementation_for_symbol;
 Usagefile_symbol_t.Usagefile_interface_symbol
   Usagefile_interface_symbol_t.Interface_for_symbol]
);;

let nam_uim = "implementation_for_symbol";;
let sym_uim = Usagefile_implementation_symbol_v.make nam_uim;;
let sym_usf = Usagefile_symbol_v.make nam_uim;;
let qui_uim = (sym_uim, sym_cof, sym_enp, sym_cat, sym_dos) ;;

let sym_ite_l = Usagefile_implementation_interface_v.make_of_tuple qui_uim;;

test_number 6 (
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
   Item_symbol_t.Item_each_topson_leaf_symbol
    (Item_each_topson_leaf_symbol_t.Item_each_topson_leaf_for_symbol_symbol
      Item_each_topson_leaf_for_symbol_symbol_t.Abbreviating_topson_for_symbol);
   Item_symbol_t.Item_each_grandson_leaf_symbol
    (Item_each_grandson_leaf_symbol_t.Item_each_grandson_leaf_for_symbol_symbol
      Item_each_grandson_leaf_for_symbol_symbol_t.Abbreviating_grandson_for_symbol);
   Item_symbol_t.Item_all_topsons_symbol
    (Item_all_topsons_symbol_t.Item_all_topsons_for_symbol_symbol
      Item_all_topsons_for_symbol_symbol_t.Making_for_symbol);
   Item_symbol_t.Item_only_top_symbol
    (Item_only_top_symbol_t.Item_only_top_for_any_symbol
      Item_only_top_for_any_symbol_t.Ending)]
);;

let nam_ifs = "Making_for_symbol";;
let str_ifs = "";;
let sym_ifs = Item_all_topsons_for_symbol_symbol_v.make nam_ifs str_ifs;;

let sym_cap_l = Item_all_topsons_for_symbol_interface_v.make sym_ifs;;

test_number 7 (
sym_cap_l 
(* : Camlparagraph_symbol_t.camlparagraph_symbol list *)
=
 [Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
    (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
      Camlparagraph_for_any_comment_symbol_t.Item_title);
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_leaf_nam_s_equal_for_symbol));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_notleaf_nam_s_equal_for_symbol));
   Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol))]
);;

let sym_cap = List.nth sym_cap_l 3;;
let sym_cla = Camlparagraph_symbol_v.camlparagraph_for_symbol_let_argument_symbol_off_camlparagraph_symbol sym_cap;;

let sym_sec_l = Camlparagraph_for_symbol_let_argument_interface_v.make sym_cla;;

test_number 8 (
sym_sec_l
(* : Section_symbol_t.section_symbol list *)
=
  [Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol
        Section_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal));
   Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
      (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_top_symbol
        Section_for_symbol_body_son_top_symbol_t.Try_make_of_topson_with_failure_arrow));
   Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol
      (Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol
        Section_for_symbol_footer_top_symbol_t.Let_underscore_print_error_failwith_make))]

);;

let sym_sec = List.nth sym_sec_l 0;;
let sym_shc = Section_symbol_v.section_for_symbol_header_constant_symbol_off_section_symbol sym_sec;;
let sym_gro_l = Section_for_symbol_header_constant_interface_v.make sym_shc;;

test_number 9 (
sym_gro_l
(* : Group_symbol_t.group_symbol list *)
=
  [Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol
        Group_for_symbol_header_constant_symbol_t.Let_make_nam_s_equal))]
);;
