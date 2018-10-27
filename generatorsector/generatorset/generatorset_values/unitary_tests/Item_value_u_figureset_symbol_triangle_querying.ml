open Make_test_v;;

testing "Item_symbol_value_v
   Item_value_u_figureset_symbol_triangle_querying.ml";;

(* toplevel 
   #use "Item_value_u_figureset_symbol_triangle_querying.ml";;

*)

let nam_cod = "Item_value_u_figureset_symbol_triangle_querying.ml";;

let nam_dom = "figure";;
let nam_cat = "symbol";;
let nam_ent = "triangle";;
let nam_cof = "value_alone";;
let nam_usf = "implementation_for_symbol";;

let sym_dom = Domain_symbol_v.make nam_dom "";;
let idx_dom = Domain_symbol_v.list_index_of_domain_symbol sym_dom;;
let soi_dom = Sole_index_v.make idx_dom [];;
let gss_dom = Generatorset_symbol_v.generatorset_symbol_of_domain_symbol sym_dom;;
Generatorset_symbol_by_sole_index_register_v.store soi_dom gss_dom;;
let tag_dom = Tag_v.make sym_dom soi_dom;;

let tag_cat_l = Domain_formula_v.category_tag_list_off_domain_tag tag_dom;;

let sel_cat = (fun c -> Category_symbol_v.name c = nam_cat);;
let tag_cat = Doublet_list_v.find_if_left sel_cat tag_cat_l;;

let tag_ent_l = Category_formula_v.entity_tag_list_off_category_tag tag_cat;;

test_number 1 (
tag_ent_l 
(* : Entity_tag_t.entity_tag list *)
=
  [(Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figure"), [1; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate"), [2; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cartesian"), [3; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_cylindrical"), [4; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_polar"), [5; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "coordinate_spherical"), [6; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle"), [7; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles"), [8; 7; 2]);
   (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_scalene"), [9; 7; 2])]
);;

let sym_cat = Tag_v.entity_off_tag tag_cat;;

let sel_ent = (fun e -> Entity_symbol_v.string_off e = nam_ent);;
let tag_ent = Doublet_list_v.find_if_left sel_ent tag_ent_l;;
let sym_ent = Tag_v.entity_off_tag tag_ent;;

let tri_ent = Triplet_v.make sym_ent sym_cat sym_dom;;

let sym_ets_l = Entity_topson_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;

test_number 2 (
sym_ets_l 
(* : Entity_symbol_t.entity_symbol list *)
=
  [Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles");
   Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_scalene")]
);;

let sym_etb_l = Entity_topson_bare_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;
test_number 3 (
sym_etb_l 
(* : Entity_sym_t.entity_sym list *)
=
  []
);;

let sym_eto_l = Entity_topson_ofstring_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;
test_number 4 (
sym_eto_l 
(* : Entity_sym_t.entity_sym list *)
=
[]
);;

let sym_etn_l = Entity_topson_notleaf_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;
test_number 5 (
sym_etn_l 
(* : Entity_sym_t.entity_sym list *)
=
  [Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_isoceles");
   Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "triangle_scalene")]
);;

let sym_egs_l = Entity_grandson_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;

test_number 6 (
sym_egs_l 
(* : Entity_sym_t.entity_sym list *)
=
  [Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_equilateral"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_right"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_acute"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "triangle_isoceles_obtuse"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_right"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_acute"));
   Entity_symbol_t.Entity_fictive_symbol
    (Entity_fictive_symbol_t.Entity_fictive_nullary_symbol
      (Entity_fictive_nullary_symbol_t.Bare "triangle_scalene_obtuse"))]
);;

let sym_egb_l = Entity_grandson_bare_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;
test_number 7 (
sym_egb_l 
(* : Entity_sym_t.entity_sym list *)
=
sym_egs_l
);;

let sym_ego_l = Entity_grandson_ofstring_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;
test_number 8 (
sym_ego_l 
(* : Entity_sym_t.entity_sym list *)
=
[]
);;

let sym_egn_l = Entity_grandson_notleaf_symbol_list_by_entity_tritup_provider_v.provide tri_ent;;
test_number 9 (
sym_egn_l 
(* : Entity_sym_t.entity_sym list *)
=
[]
);;

let for_ent = Entity_formula_v.retrieve tag_ent;;

let tag_cof_l = Entity_formula_v.contentfile_tag_list_off_entity_formula for_ent;;
let sel_cof = (fun c -> Contentfile_symbol_v.name c = nam_cof);;
let tag_cof = Doublet_list_v.find_if_left sel_cof tag_cof_l;;
let for_cof = Contentfile_formula_v.retrieve tag_cof;;

let tag_usf_l = Contentfile_formula_v.usagefile_tag_list_off_contentfile_formula for_cof;;
let sel_usf = (fun u -> Usagefile_symbol_v.name u = nam_usf);;
let tag_usf = Doublet_list_v.find_if_left sel_usf tag_usf_l;;
let for_usf = Usagefile_formula_v.retrieve tag_usf;;

let tag_ite_l = Usagefile_formula_v.item_tag_list_off_usagefile_tag tag_usf;;

(* 9 Querying_topson_bare_for_symbol *)

let nam_ite = "querying_topson_bare_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 10 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_bare_symbol
      Item_for_symbol_each_topson_bare_symbol_t.Querying_topson_bare_for_symbol),
   [9; 1; 2; 7; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;
let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_formula for_ite;;

test_number 11 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
 [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 9; 1; 2; 7; 7; 2])]
);;

let str_ite_l = Item_value_v.string_list_off_item_tag tag_ite;;
let val_ite = Item_value_v.retrieve tag_ite;;
let str_ite_l = Item_value_v.string_list_off_item_value val_ite;;

test_number 12 (
str_ite_l
(* : string list *)
=  
  ["(** {6 Querying_topson_bare_for_symbol} *)"]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;
test_number 13 (
nam_fil
=
  "./Triangle_symbol_Querying_topson_bare_for_symbol_v.ml"
);;

Item_value_v.write "./" tag_ite;; 
  
(* 10 Topson_ofstring_for_symbol *)

let nam_ite = "querying_topson_ofstring_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 14 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol
      Item_for_symbol_each_topson_ofstring_symbol_t.Querying_topson_ofstring_for_symbol),
   [10; 1; 2; 7; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;
let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_formula for_ite;;

test_number 15 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 10; 1; 2; 7; 7; 2])]
);;

let val_ite = Item_value_v.retrieve tag_ite;;
let str_ite_l = Item_value_v.string_list_off_item_value val_ite;;

test_number 16 (
str_ite_l
(* : string list *)
=  
  ["(** {6 Querying_topson_ofstring_for_symbol} *)"]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;
test_number 17 (
nam_fil
=
  "./Triangle_symbol_Querying_topson_ofstring_for_symbol_v.ml"
);;

Item_value_v.write "./" tag_ite;; 
  
(* 10 Querying_topson_ofstring_for_symbol *)

let nam_ite = "querying_topson_ofstring_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 18 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
 (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_ofstring_symbol
      Item_for_symbol_each_topson_ofstring_symbol_t.Querying_topson_ofstring_for_symbol),
   [10; 1; 2; 7; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;
let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_formula for_ite;;

test_number 19 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
 [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 10; 1; 2; 7; 7; 2])]
);;

let str_ite_l = Item_value_v.string_list_off_item_tag tag_ite;;
let val_ite = Item_value_v.retrieve tag_ite;;
let str_ite_l = Item_value_v.string_list_off_item_value val_ite;;

test_number 20 (
str_ite_l
(* : string list *)
=  
  ["(** {6 Querying_topson_ofstring_for_symbol} *)"]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;
test_number 21 (
nam_fil
=
  "./Triangle_symbol_Querying_topson_ofstring_for_symbol_v.ml"
);;

Item_value_v.write "./" tag_ite;; 
  
(* 11 Item_for_symbol_each_topson_notleaf_symbol_t.Querying_topson_notleaf_for_symbol *)

let nam_ite = "querying_topson_notleaf_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 22 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol
      Item_for_symbol_each_topson_notleaf_symbol_t.Querying_topson_notleaf_for_symbol),
   [11; 1; 2; 7; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;
let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_formula for_ite;;

test_number 23 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 11; 1; 2; 7; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol)),
    [2; 11; 1; 2; 7; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol)),
    [3; 11; 1; 2; 7; 7; 2])]
);;

let val_ite = Item_value_v.retrieve tag_ite;;
let str_ite_l = Item_value_v.string_list_off_item_value val_ite;;

test_number 24 (
str_ite_l
(* : string list *)
=  
  ["(** {6 Querying_topson_notleaf_for_symbol} *)";
   "let is_triangle_isoceles_symbol_off_triangle_symbol = function";
   "  | Triangle_symbol_t.Triangle_isoceles_symbol _ -> true";
   "  | _ -> false";
   ";;";
   "let is_triangle_scalene_symbol_off_triangle_symbol = function";
   "  | Triangle_symbol_t.Triangle_scalene_symbol _ -> true";
   "  | _ -> false";
   ";;"]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;
test_number 25 (
nam_fil
=
  "./Triangle_symbol_Querying_topson_notleaf_for_symbol_v.ml"
);;

Item_value_v.write "./" tag_ite;; 
  

(* 11 Querying_topson_notleaf_for_symbol *)

let nam_ite = "querying_topson_notleaf_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 26 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol
      Item_for_symbol_each_topson_notleaf_symbol_t.Querying_topson_notleaf_for_symbol),
   [11; 1; 2; 7; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;
let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_formula for_ite;;

test_number 27 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 11; 1; 2; 7; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol)),
    [2; 11; 1; 2; 7; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol)),
    [3; 11; 1; 2; 7; 7; 2])]
);;

let str_ite_l = Item_value_v.string_list_off_item_tag tag_ite;;
let val_ite = Item_value_v.retrieve tag_ite;;
let str_ite_l = Item_value_v.string_list_off_item_value val_ite;;

test_number 28 (
str_ite_l
(* : string list *)
=  
  ["(** {6 Querying_topson_notleaf_for_symbol} *)";
   "let is_triangle_isoceles_symbol_off_triangle_symbol = function";
   "  | Triangle_symbol_t.Triangle_isoceles_symbol _ -> true";
   "  | _ -> false";
   ";;";
   "let is_triangle_scalene_symbol_off_triangle_symbol = function";
   "  | Triangle_symbol_t.Triangle_scalene_symbol _ -> true";
   "  | _ -> false";
   ";;"]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;
test_number 29 (
nam_fil
=
  "./Triangle_symbol_Querying_topson_notleaf_for_symbol_v.ml"
);;

Item_value_v.write "./" tag_ite;; 
  
(* Topson_notleaf_for_symbol *)

let nam_ite = "querying_topson_notleaf_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 30 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_topson_notleaf_symbol
      Item_for_symbol_each_topson_notleaf_symbol_t.Querying_topson_notleaf_for_symbol),
   [11; 1; 2; 7; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;
let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_formula for_ite;;

test_number 31 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 11; 1; 2; 7; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol)),
    [2; 11; 1; 2; 7; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
         Camlparagraph_for_symbol_let_match_symbol_t.Let_is_topson_notleaf_symbol_off_top_symbol)),
    [3; 11; 1; 2; 7; 7; 2])]
);;

let val_ite = Item_value_v.retrieve tag_ite;;
let str_ite_l = Item_value_v.string_list_off_item_value val_ite;;

test_number 32 (
str_ite_l
(* : string list *)
=  
  ["(** {6 Querying_topson_notleaf_for_symbol} *)";
   "let is_triangle_isoceles_symbol_off_triangle_symbol = function";
   "  | Triangle_symbol_t.Triangle_isoceles_symbol _ -> true";
   "  | _ -> false";
   ";;";
   "let is_triangle_scalene_symbol_off_triangle_symbol = function";
   "  | Triangle_symbol_t.Triangle_scalene_symbol _ -> true";
   "  | _ -> false";
   ";;"]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;
test_number 33 (
nam_fil
=
  "./Triangle_symbol_Querying_topson_notleaf_for_symbol_v.ml"
);;

Item_value_v.write "./" tag_ite;; 
  
(* 12 Querying_grandson_bare_for_symbol *)

let nam_ite = "querying_grandson_bare_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 34 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_bare_symbol
      Item_for_symbol_each_grandson_bare_symbol_t.Querying_grandson_bare_for_symbol),
   [12; 1; 2; 7; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;
let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_formula for_ite;;

test_number 35 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 12; 1; 2; 7; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_bare)),
    [2; 12; 1; 2; 7; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_bare)),
    [3; 12; 1; 2; 7; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_bare)),
    [4; 12; 1; 2; 7; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_bare)),
    [5; 12; 1; 2; 7; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_bare)),
    [6; 12; 1; 2; 7; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_bare)),
    [7; 12; 1; 2; 7; 7; 2]);
   (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
     (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
       (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_argument_symbol
         Camlparagraph_for_symbol_let_argument_symbol_t.Let_is_grandson_bare)),
    [8; 12; 1; 2; 7; 7; 2])]
);;

let str_ite_l = Item_value_v.string_list_off_item_tag tag_ite;;
let val_ite = Item_value_v.retrieve tag_ite;;
let str_ite_l = Item_value_v.string_list_off_item_value val_ite;;

test_number 36 (
str_ite_l
(* : string list *)
=  
  ["(** {6 Querying_grandson_bare_for_symbol} *)";
   "let is_triangle_isoceles_equilateral sym_tri =";
   "  if not (is_triangle_isoceles_symbol_off_triangle_symbol sym_tri)";
   "  then false";
   "  else";
   "    begin";
   "      let sym_tis = triangle_isoceles_symbol_off_triangle_symbol sym_tri in";
   "      Triangle_isoceles_symbol_v.is_triangle_isoceles_equilateral sym_tis";
   "    end";
   ";;";
   "let is_triangle_isoceles_right sym_tri =";
   "  if not (is_triangle_isoceles_symbol_off_triangle_symbol sym_tri)";
   "  then false";
   "  else";
   "    begin";
   "      let sym_tis = triangle_isoceles_symbol_off_triangle_symbol sym_tri in";
   "      Triangle_isoceles_symbol_v.is_triangle_isoceles_right sym_tis";
   "    end";
   ";;";
   "let is_triangle_isoceles_acute sym_tri =";
   "  if not (is_triangle_isoceles_symbol_off_triangle_symbol sym_tri)";
   "  then false";
   "  else";
   "    begin";
   "      let sym_tis = triangle_isoceles_symbol_off_triangle_symbol sym_tri in";
   "      Triangle_isoceles_symbol_v.is_triangle_isoceles_acute sym_tis";
   "    end";
   ";;";
   "let is_triangle_isoceles_obtuse sym_tri =";
   "  if not (is_triangle_isoceles_symbol_off_triangle_symbol sym_tri)";
   "  then false";
   "  else";
   "    begin";
   "      let sym_tis = triangle_isoceles_symbol_off_triangle_symbol sym_tri in";
   "      Triangle_isoceles_symbol_v.is_triangle_isoceles_obtuse sym_tis";
   "    end";
   ";;";
   "let is_triangle_scalene_right sym_tri =";
   "  if not (is_triangle_scalene_symbol_off_triangle_symbol sym_tri)";
   "  then false";
   "  else";
   "    begin";
   "      let sym_trs = triangle_scalene_symbol_off_triangle_symbol sym_tri in";
   "      Triangle_scalene_symbol_v.is_triangle_scalene_right sym_trs";
   "    end";
   ";;";
   "let is_triangle_scalene_acute sym_tri =";
   "  if not (is_triangle_scalene_symbol_off_triangle_symbol sym_tri)";
   "  then false";
   "  else";
   "    begin";
   "      let sym_trs = triangle_scalene_symbol_off_triangle_symbol sym_tri in";
   "      Triangle_scalene_symbol_v.is_triangle_scalene_acute sym_trs";
   "    end";
   ";;";
   "let is_triangle_scalene_obtuse sym_tri =";
   "  if not (is_triangle_scalene_symbol_off_triangle_symbol sym_tri)";
   "  then false";
   "  else";
   "    begin";
   "      let sym_trs = triangle_scalene_symbol_off_triangle_symbol sym_tri in";
   "      Triangle_scalene_symbol_v.is_triangle_scalene_obtuse sym_trs";
   "    end";
   ";;"]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;
test_number 37 (
nam_fil
=
  "./Triangle_symbol_Querying_grandson_bare_for_symbol_v.ml"
);;

Item_value_v.write "./" tag_ite;; 
  
(* 10 Grandson_ofstring_for_symbol *)

let nam_ite = "querying_grandson_ofstring_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 38 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol
      Item_for_symbol_each_grandson_ofstring_symbol_t.Querying_grandson_ofstring_for_symbol),
   [13; 1; 2; 7; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;
let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_formula for_ite;;

test_number 39 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 13; 1; 2; 7; 7; 2])]
);;

let val_ite = Item_value_v.retrieve tag_ite;;
let str_ite_l = Item_value_v.string_list_off_item_value val_ite;;

test_number 40 (
str_ite_l
(* : string list *)
=  
  ["(** {6 Querying_grandson_ofstring_for_symbol} *)"]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;
test_number 41 (
nam_fil
=
  "./Triangle_symbol_Querying_grandson_ofstring_for_symbol_v.ml"
);;

Item_value_v.write "./" tag_ite;; 
  
(* 10 Querying_grandson_ofstring_for_symbol *)

let nam_ite = "querying_grandson_ofstring_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 42 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_ofstring_symbol
      Item_for_symbol_each_grandson_ofstring_symbol_t.Querying_grandson_ofstring_for_symbol),
   [13; 1; 2; 7; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;
let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_formula for_ite;;

test_number 43 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 13; 1; 2; 7; 7; 2])]
);;

let str_ite_l = Item_value_v.string_list_off_item_tag tag_ite;;
let val_ite = Item_value_v.retrieve tag_ite;;
let str_ite_l = Item_value_v.string_list_off_item_value val_ite;;

test_number 44 (
str_ite_l
(* : string list *)
=  
  ["(** {6 Querying_grandson_ofstring_for_symbol} *)"]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;
test_number 45 (
nam_fil
=
  "./Triangle_symbol_Querying_grandson_ofstring_for_symbol_v.ml"
);;

Item_value_v.write "./" tag_ite;; 
  
(* Grandson_notleaf_for_symbol *)

let nam_ite = "querying_grandson_notleaf_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 46 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol
      Item_for_symbol_each_grandson_notleaf_symbol_t.Querying_grandson_notleaf_for_symbol),
   [14; 1; 2; 7; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;
let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_formula for_ite;;

test_number 47 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 14; 1; 2; 7; 7; 2])]
);;

let val_ite = Item_value_v.retrieve tag_ite;;
let str_ite_l = Item_value_v.string_list_off_item_value val_ite;;

test_number 48 (
str_ite_l
(* : string list *)
=  
  ["(** {6 Querying_grandson_notleaf_for_symbol} *)"]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;
test_number 49 (
nam_fil
=
  "./Triangle_symbol_Querying_grandson_notleaf_for_symbol_v.ml"
);;

Item_value_v.write "./" tag_ite;; 

(* 11 Querying_grandson_notleaf_for_symbol *)

let nam_ite = "querying_grandson_notleaf_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 50 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol
      Item_for_symbol_each_grandson_notleaf_symbol_t.Querying_grandson_notleaf_for_symbol),
   [14; 1; 2; 7; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;
let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_formula for_ite;;

test_number 51 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 14; 1; 2; 7; 7; 2])]
);;

let str_ite_l = Item_value_v.string_list_off_item_tag tag_ite;;
let val_ite = Item_value_v.retrieve tag_ite;;
let str_ite_l = Item_value_v.string_list_off_item_value val_ite;;

test_number 52 (
str_ite_l
(* : string list *)
=  
  ["(** {6 Querying_grandson_notleaf_for_symbol} *)"]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;
test_number 53 (
nam_fil
=
  "./Triangle_symbol_Querying_grandson_notleaf_for_symbol_v.ml"
);;

Item_value_v.write "./" tag_ite;; 
  
(* Grandson_notleaf_for_symbol *)

let nam_ite = "querying_grandson_notleaf_for_symbol";;
let sel_ite = (fun i -> Item_symbol_v.name i = nam_ite);;
let tag_ite = Doublet_list_v.find_if_left sel_ite tag_ite_l;; 

test_number 54 (
tag_ite 
(* : Item_symbol_t.item_symbol * Sole_index_t.sole_index *)
=
  (Item_symbol_t.Item_for_symbol_symbol
    (Item_for_symbol_symbol_t.Item_for_symbol_each_grandson_notleaf_symbol
      Item_for_symbol_each_grandson_notleaf_symbol_t.Querying_grandson_notleaf_for_symbol),
   [14; 1; 2; 7; 7; 2])
);;

let for_ite = Item_formula_v.retrieve tag_ite;;
let tag_cap_l = Item_formula_v.camlparagraph_tag_list_off_item_formula for_ite;;

test_number 55 (
tag_cap_l
(* : Camlparagraph_symbol_t.camlparagraph_symbol Tag_t.tag list *)
  =
  [(Camlparagraph_symbol_t.Camlparagraph_for_any_symbol
     (Camlparagraph_for_any_symbol_t.Camlparagraph_for_any_comment_symbol
       Camlparagraph_for_any_comment_symbol_t.Item_title),
    [1; 14; 1; 2; 7; 7; 2])]
);;

let val_ite = Item_value_v.retrieve tag_ite;;
let str_ite_l = Item_value_v.string_list_off_item_value val_ite;;

test_number 56 (
str_ite_l
(* : string list *)
=  
  ["(** {6 Querying_grandson_notleaf_for_symbol} *)"]
);;

let nam_fil = Item_value_v.fullnameoffile "./" tag_ite;;
test_number 57 (
nam_fil
=
  "./Triangle_symbol_Querying_grandson_notleaf_for_symbol_v.ml"
);;

Item_value_v.write "./" tag_ite;; 
  
