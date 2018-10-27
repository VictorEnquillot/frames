open Make_test_v;;

testing "Generatorset_symbol_by_sole_index_provider_v with
   Test_register_from_tags.ml"

(* toplevel 
   #use "Test_register_from_tags.ml";;

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
		    (Group_for_symbol_header_symbol_t.Group_for_symbol_header_constant_symbol
		       Group_for_symbol_header_constant_symbol_t.Let_make_of_topson_ofstring_nam_s_equal)),
	      [1; 1; 2; 15; 1; 2; 2; 7; 2])
;;

let (sym_gro, soi_gro) = tag_gro;;
let gss_gro = Generatorset_symbol_v.generatorset_symbol_of_group_symbol sym_gro;;
Generatorset_symbol_by_sole_index_register_v.store soi_gro gss_gro;;

let str_gro = register_dump () ;;     

test_number 1 (
str_gro
=
"[([1; 1; 2; 7; 1; 2; 1; 7; 2], let_make_of_topson_ofstring_nam_s_equal)]"
);;

let sym_gst = Group_for_symbol_header_son_top_symbol_t.Let_topson_notleaf_symbol_off_top_symbol_equal_function;;
let tag_son_l = Group_for_symbol_header_son_top_formula_v.build_n_store sym_gst soi_gro;;

let for_gro = Group_formula_v.retrieve tag_gro;;
let tag_cal_l = Group_formula_v.camlline_tag_list_off_group_tag tag_gro;;

let tag_cal = List.nth tag_cal_l 0;;

let for_cal = Camlline_formula_v.retrieve tag_cal;;
let tag_ent_l = Camlline_formula_v.entity_tag_list_off_camlline_tag tag_cal;;

