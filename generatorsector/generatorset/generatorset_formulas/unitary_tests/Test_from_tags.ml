open Make_test_v;;

testing "Item_formula_v with
   Item_formula_u_figureset_symbol_figureset_extracting_topson.ml";;

(* toplevel 
   #use "Item_formula_u_figureset_symbol_figureset_extracting_topson.ml";;

*)
  
let register_dump () = 
      Register_v.string_of_register 
	Sole_index_v.name 
	Generatorset_symbol_v.name 
	";\n  " 
	Generatorset_symbol_by_sole_index_provider_v.generatorset_symbol_by_sole_index_register;;

let nam_cod = "Item_formula_u_figureset_symbol_figureset_extracting_topson.ml";;

let nam_dos = "figureset";;
let nam_cof = "value_alone";;
let nam_enp = "figureset";;
let nam_cat = "symbol";;
let nam_usf = "Implementation_for_symbol";;

let sym_dos = Domainset_symbol_v.make nam_dos;;
let idx_dos = Domainset_symbol_v.list_index_of_domainset_symbol sym_dos;;
let soi_dos = Sole_index_v.make idx_dos [];;
(*
let gss_dos = Generatorset_symbol_v.generatorset_symbol_of_domainset_symbol sym_dos;;
Generatorset_symbol_by_sole_index_register_v.store soi_dos gss_dos;;
*)
let tag_dos = (Domainset_symbol_t.Figureset, [2]);;
let tag_cat = (Category_symbol_t.Symbol, [7; 2]);;
let tag_ent = (Entity_symbol_t.Entity_proper_symbol (Entity_proper_symbol_t.Entity_proper_with_sons "figureset"), [1; 7; 2]);;
let tag_cof = (Contentfile_symbol_t.Value_alone, [2; 1; 7; 2]);;
let tag_usf = (Usagefile_symbol_t.Usagefile_for_symbol_symbol 
		 Usagefile_for_symbol_symbol_t.Implementation_for_symbol,
	       [1; 2; 1; 7; 2]);;
(**
let tag_ite = (Item_symbol_t.Item_each_topson_notleaf_symbol
    (Item_each_topson_notleaf_symbol_t.Item_each_topson_notleaf_for_symbol_symbol
      Item_each_topson_notleaf_for_symbol_symbol_t.Extracting_topson_for_symbol),
   [7; 1; 2; 1; 7; 2]);;
let tag_cap = (Camlparagraph_symbol_t.Camlparagraph_for_symbol_symbol
    (Camlparagraph_for_symbol_symbol_t.Camlparagraph_for_symbol_let_symbol
      (Camlparagraph_for_symbol_let_symbol_t.Camlparagraph_for_symbol_let_match_symbol
        Camlparagraph_for_symbol_let_match_symbol_t.Let_topson_notleaf_symbol_off_top_symbol)),
   [2; 7; 1; 2; 1; 7; 2]);;
let tag_sec = (Section_symbol_t.Section_for_symbol_symbol
    (Section_for_symbol_symbol_t.Section_for_symbol_header_symbol
      (Section_for_symbol_header_symbol_t.Section_for_symbol_header_son_top_symbol
        Section_for_symbol_header_son_top_symbol_t.Let_topson_notleaf_symbol_off_top_symbol)),
   [1; 2; 7; 1; 2; 1; 7; 2]);;
***)
let tag_gro =(Group_symbol_t.Group_for_symbol_symbol
    (Group_for_symbol_symbol_t.Group_for_symbol_header_symbol
       (Group_for_symbol_header_symbol_t.Group_for_symbol_header_son_top_symbol
          Group_for_symbol_header_son_top_symbol_t.Let_topson_notleaf_symbol_off_top_symbol_equal_function)),
  [1; 1; 2; 7; 1; 2; 1; 7; 2]);;

let tag_cal = (Camlline_symbol_t.Camlline_for_any_symbol
     (Camlline_for_any_symbol_t.Camlline_for_any_duo_symbol
       (Camlline_for_any_duo_symbol_t.Camlline_for_any_duo_son_top_notleaf_symbol
         Camlline_for_any_duo_son_top_notleaf_symbol_t.Let_es_any_off_et_any_equal_function)),
    [1; 1; 1; 2; 7; 1; 2; 1; 7; 2]);;

let (sym_cal, soi_cal) = tag_cal;;
let soi_l = Sole_index_v.sole_index_list_off_sole_index soi_cal;;

(* 1 Camlline_duo_function_symbol_t.Let_es_any_off_et_any_equal_function *)

let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

test_number 1 (
tag_ent_l 
(* :  Tag_t.tag list *)
=
[]
);;
