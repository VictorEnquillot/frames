open Make_test_v;;

testing "Camlline_value_v with
   Camlline_value_u_figureset_symbol_figureset_naming_son_leaf.ml";;

(* toplevel 
   #use "Camlline_value_u_figureset_symbol_figureset_naming_son_leaf.ml";;

*)

let nam_cod = "Camlline_value_u_figureset_symbol_figureset_naming_son_leaf.ml";;

let nam_dom = "figure";;
let nam_cof = "value_alone";;
let nam_ite = "naming";;
let nam_ent = "figure";;
let nam_cat = "symbol";;
let nam_usf = "implementation";;

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

let for_dom = Domain_formula_v.retrieve tag_dom;;

test_number 2 (
for_dom
(* : Category_symbol_t.category_symbol Tag_t.tag list *)
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
let tag_cat = Doublet_list_v.find_if_left sel_cat for_dom;;

test_number 3 (
tag_cat
(* : Category_symbol_v.Category_symbol_t.category_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Category_symbol_t.Symbol, [7; 2])
);;

let for_cat = Category_formula_v.retrieve tag_cat;;

test_number 4 (
for_cat 
(* : Entity_symbol_t.entity_proper_symbol Tag_t.tag list *)
=
  Category_formula_t.Category_symbol_formula
   [(Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure"),
     [1; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "triangle"),
     [2; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_isoceles"),
     [3; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "triangle_scalene"),
     [4; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_notopsonleaf "coordinate"),
     [5; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
        "coordinate_cartesian"),
     [6; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
        "coordinate_cylindrical"),
     [7; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "coordinate_polar"),
     [8; 7; 2]);
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf
        "coordinate_spherical"),
     [9; 7; 2])]
);;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_formula for_cat;;
let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent)
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;

test_number 5 (
tag_ent
(* : Entity_symbol_t.entity_proper_symbol * Tag_t.Sole_index_t.sole_index *)
=
  (
    (Entity_symbol_t.Entity_proper_top_symbol
      (Entity_proper_top_symbol_t.Top_has_sometopsonleaf "figure")),
   [1; 7; 2])
);;

let for_ent = Entity_formula_v.retrieve tag_ent;;

let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof for_ent;;

test_number 6 (
tag_cof
=
(Contentfile_symbol_t.Value_alone, [2; 1; 7; 2])
);;

let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf for_cof;;

test_number 7 (
tag_usf
  =
(Usagefile_symbol_t.Implementation, [1; 2; 1; 7; 2])
);;

let for_usf = Usagefile_formula_v.retrieve tag_usf;;

test_number 8 (
 for_usf 
(* : Item_symbol_t.item_symbol Tag_t.tag list *)
=
 [(Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Heading,
    [1; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Documenting,
    [2; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Naming,
    [3; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Extracting_topson_for_symbol,
    [4; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Extracting_grandson_for_symbol,
    [5; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Querying_topson,
    [6; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Querying_grandson,
    [7; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_notleaf_symbol
     Item_each_topson_notleaf_symbol_t.Upgrading_topson,
    [8; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_notleaf_symbol
     Item_each_grandson_notleaf_symbol_t.Upgrading_grandson,
    [9; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_topson_leaf_symbol
     Item_each_topson_leaf_symbol_t.Abbreviating_topson,
    [10; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_each_grandson_leaf_symbol
     Item_each_grandson_leaf_symbol_t.Abbreviating_grandson,
    [11; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Naming,
    [12; 1; 2; 1; 7; 2]);
   (Item_symbol_t.Item_for_any_only_top_symbol Item_for_symbol_only_top_symbol_t.Ending,
    [13; 1; 2; 1; 7; 2])]
);;

let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite for_usf;; 

test_number 9 (
tag_ite
(* : Item_symbol_t.item_symbol * Tag_t.Sole_index_t.sole_index *)
=
(Item_symbol_t.Item_by_group_topsons_symbol Item_by_group_topsons_symbol_t.Naming,
 [12; 1; 2; 1; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;

test_number 10 (
for_ite
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
=
 [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       (Camlparagraph_for_any_comment_symbol_t.Item_title "naming")),
    [1; 12; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_leaf_nam_s_equal_for_symbol)),
    [2; 12; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_notleaf_nam_s_equal_for_symbol)),
    [3; 12; 1; 2; 1; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_nam_s_equal_for_symbol)),
    [4; 12; 1; 2; 1; 7; 2])]
);;

(* Camlparagraph : Let_make_of_topson_leaf_nam_s_equal_for_symbol *)

(*let make_of_topson_leaf nam s = *)
(*  let nam_low = String.lowercase nam in *)
(*  match nam_low with *)
(*  | "vector_3d" -> vector_3d *)
(*  | "vector_2d" -> vector_2d *)
(*  | "vector_1d" -> vector_1d *)
(*  | _ -> failwith "Not_a_topson_leaf:Figure_symbol_v.ml:make" *)
(*;; *)

let idx_cap = 2;;
let tag_cap = List.nth for_ite (idx_cap-1);;

test_number 11 (
tag_cap
=
  (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
        Camlparagraph_for_symbol_let_argument_symbol_t.Let_make_of_topson_leaf_nam_s_equal_for_symbol)),
   [2; 12; 1; 2; 1; 7; 2])
);;

let tag_sec_l = Camlparagraph_formula_v.section_tag_list_off_camlparagraph_tag tag_cap;;

test_number 12 (
tag_sec_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
 [(Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
       (Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol
         Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_leaf_nam_s_equal)),
    [1; 2; 12; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_body_symbol
       (Section_for_symbol_body_symbol_t.Section_for_symbol_body_son_symbol
         Section_for_symbol_body_son_symbol_t.Pipe_ecstring_arrow_ec)),
    [2; 2; 12; 1; 2; 1; 7; 2]);
   (Section_symbol_t.Section_for_symbol_symbol
     (Section_for_symbol_symbol_t.Section_for_symbol_footer_symbol
       (Section_for_symbol_footer_symbol_t.Section_for_symbol_footer_top_symbol
         Section_for_symbol_footer_top_symbol_t.Pipe_underscore_failwith_not_a_topson_leaf)),
    [3; 2; 12; 1; 2; 1; 7; 2])]
);; 

let val_cap = Camlparagraph_value_v.retrieve tag_cap;;

test_number 13 (
val_cap (* : Camlparagraph_value_t.camlparagraph_value *)
=
  Camlparagraph_value_t.Camlparagraph_for_symbol_value
   (Camlparagraph_for_symbol_value_t.Camlparagraph_for_symbol_let_value
     (Camlparagraph_for_symbol_let_value_t.Camlparagraph_for_symbol_let_argument_value
       (Camlparagraph_for_symbol_let_argument_value_t.Let_make_of_topson_leaf_nam_s_equal_for_symbol
         [Section_value_t.Section_for_symbol_value
           (Section_for_symbol_value_t.Section_for_symbol_header_value
             (Section_for_symbol_header_value_t.Section_for_symbol_header_constant_value
               (Section_for_symbol_header_constant_value_t.Let_make_of_topson_leaf_nam_s_equal
                 [Group_value_t.Group_for_symbol_value
                   (Group_for_symbol_value_t.Group_for_symbol_header_value
                     (Group_for_symbol_header_value_t.Group_for_symbol_header_constant_value
                       (Group_for_symbol_header_constant_value_t.Let_make_of_topson_leaf_nam_s_equal
                         [Camlline_value_t.Camlline_constant_value
                           (Camlline_constant_value_t.Camlline_constant_function_value
                             (Camlline_constant_function_value_t.Let_make_of_topson_leaf_nam_s_equal
                               "let make_of_topson_leaf nam s ="));
                          Camlline_value_t.Camlline_constant_value
                           (Camlline_constant_value_t.Camlline_constant_function_value
                             (Camlline_constant_function_value_t.Space_let_nam_low_equal_string_lowercase_nam_in
                               "  let nam_low = String.lowercase nam in"));
                          Camlline_value_t.Camlline_constant_value
                           (Camlline_constant_value_t.Camlline_constant_function_value
                             (Camlline_constant_function_value_t.Space_match_nam_low_with
                               "  match nam_low with"))])))])));
          Section_value_t.Section_for_symbol_value
           (Section_for_symbol_value_t.Section_for_symbol_body_value
             (Section_for_symbol_body_value_t.Section_for_symbol_body_son_value
               (Section_for_symbol_body_son_value_t.Pipe_ecstring_arrow_ec
                 [Group_value_t.Group_for_symbol_value
                   (Group_for_symbol_value_t.Group_for_symbol_body_value
                     (Group_for_symbol_body_value_t.Group_for_symbol_body_son_value
                       (Group_for_symbol_body_son_value_t.Pipe_ecstring_arrow_ec
                         [Camlline_value_t.Camlline_uno_value
                           (Camlline_uno_value_t.Camlline_uno_function_value
                             (Camlline_uno_function_value_t.Camlline_uno_function_symbol_value
                               (Camlline_uno_function_symbol_value_t.Pipe_ecstring_arrow_ec
                                 "  | \"triangle\" -> triangle")))])));
                  Group_value_t.Group_for_symbol_value
                   (Group_for_symbol_value_t.Group_for_symbol_body_value
                     (Group_for_symbol_body_value_t.Group_for_symbol_body_son_value
                       (Group_for_symbol_body_son_value_t.Pipe_ecstring_arrow_ec
                         [Camlline_value_t.Camlline_uno_value
                           (Camlline_uno_value_t.Camlline_uno_function_value
                             (Camlline_uno_function_value_t.Camlline_uno_function_symbol_value
                               (Camlline_uno_function_symbol_value_t.Pipe_ecstring_arrow_ec
                                 "  | \"coordinate\" -> coordinate")))])))])));
          Section_value_t.Section_for_symbol_value
           (Section_for_symbol_value_t.Section_for_symbol_footer_value
             (Section_for_symbol_footer_value_t.Section_for_symbol_footer_top_value
               (Section_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_leaf
                 [Group_value_t.Group_for_symbol_value
                   (Group_for_symbol_value_t.Group_for_symbol_footer_value
                     (Group_for_symbol_footer_value_t.Group_for_symbol_footer_top_value
                       (Group_for_symbol_footer_top_value_t.Pipe_underscore_failwith_not_a_topson_leaf
                         [Camlline_value_t.Camlline_constant_value
                           (Camlline_constant_value_t.Camlline_constant_function_value
                             (Camlline_constant_function_value_t.Pipe_underscore_arrow
                               "  | _ ->"));
                          Camlline_value_t.Camlline_uno_value
                           (Camlline_uno_value_t.Camlline_uno_function_value
                             (Camlline_uno_function_value_t.Camlline_uno_function_symbol_value
                               (Camlline_uno_function_symbol_value_t.Space_with_failure_not_Es_symbol_arrow
                                 "  failwith \"Not_a_topson_leaf:Figure_symbol:Figure_symbol_v:make\"")));
                          Camlline_value_t.Camlline_constant_value
                           (Camlline_constant_value_t.Camlline_constant_pervasive_value
                             (Camlline_constant_pervasive_value_t.Double_semicolon
                               ";;"))])))])))])))
);;

(* Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_leaf_nam_s_equal *)

(* let make_of_topson_leaf nam s = *)
(*  let nam_low = String.lowercase nam in *)
(*  match nam_low with *)

let idx_sec = 1;;
let tag_sec = List.nth tag_sec_l (idx_sec-1);;

test_number 14 (
tag_sec 
(* : Section_symbol_t.section_symbol Tag_t.tag *)
=
  (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_constant_symbol
        Section_for_symbol_header_constant_symbol_t.Let_make_of_topson_leaf_nam_s_equal)),
   [1; 2; 12; 1; 2; 1; 7; 2])
);;

let nam_fil = Camlparagraph_value_v.fullnameoffile "./" tag_cap;;

test_number 15 (
nam_fil
(* : string *)
=
  "./Figure_symbol_naming_let_make_of_topson_leaf_nam_s_equal_for_symbol_v.ml"
);;

Camlparagraph_value_v.write "./" tag_cap;;

let tag_gro_l = Section_formula_v.group_tag_list_off_section_tag tag_sec;; 

test_number 16 (
tag_gro_l 
(* : Group_symbol_t.group_symbol Tag_t.tag list *)
 =
  [(Group_symbol_t.Group_for_symbol_symbol
     (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
       (Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol
         Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_leaf_nam_s_equal)),
    [1; 1; 2; 12; 1; 2; 1; 7; 2])]
);;

(* Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_leaf_nam_s_equal *)

let idx_gro = 1;;
let tag_gro = List.nth tag_gro_l (idx_gro-1);;

test_number 17 (
tag_gro 
(* : Group_symbol_t.group_symbol Tag_t.tag *)
=
  (Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
      (Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol
        Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_leaf_nam_s_equal)),
   [1; 1; 2; 12; 1; 2; 1; 7; 2])
);;

let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

test_number 18 (
tag_cal_l
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag list *)
=
  [(Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Let_make_of_topson_leaf_nam_s_equal),
    [1; 1; 1; 2; 12; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_let_nam_low_equal_string_lowercase_nam_in),
    [2; 1; 1; 2; 12; 1; 2; 1; 7; 2]);
   (Camlline_symbol_t.Camlline_constant_symbol
     (Camlline_constant_symbol_t.Camlline_constant_function_symbol
       Camlline_constant_function_symbol_t.Space_match_nam_low_with),
    [3; 1; 1; 2; 12; 1; 2; 1; 7; 2])]
);;

(* Camlline_constant_function_symbol_t.Let_make_of_topson_leaf_nam_s_equal *)

let idx_cal = 1;;
let tag_cal = List.nth tag_cal_l (idx_cal-1);;

test_number 19 (
tag_cal 
(* : Camlline_symbol_t.camlline_symbol Tag_t.tag *)
=
  (Camlline_symbol_t.Camlline_constant_symbol
    (Camlline_constant_symbol_t.Camlline_constant_function_symbol
      Camlline_constant_function_symbol_t.Let_make_of_topson_leaf_nam_s_equal),
   [1; 1; 1; 2; 12; 1; 2; 1; 7; 2])
);;

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;
    
test_number 20 (
tag_ent_l 
(* : Entity_symbol_t.entity_symbol Tag_t.tag list *)
=
  []
);;

