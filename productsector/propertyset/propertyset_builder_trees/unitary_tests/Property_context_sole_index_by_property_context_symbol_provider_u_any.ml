open Make_test_v;;

testing "Property_context_sole_index_by_property_context_symbol_provider_v with
   Property_context_sole_index_by_property_context_symbol_provider_u_any.ml";;

(* Deleting Registers *)


(* Tracing *)


(* Debugging *)


(* toplevel 
   #use "Property_context_sole_index_by_property_context_symbol_provider_u_any.ml";; 

*)

(* Input File *)

let nam_ibo = "Print_homothety_point_a";;
let nam_iba = "local";;

test_number 1 (
(nam_ibo : string ) =
 "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a"
);;

open Property_context_sole_index_by_property_context_symbol_provider_v;;

let sym_pco_pci = Property_context_symbol_v.property_context_inputfile_constructor nam_ibo;;

test_number 2 ( 
(sym_pco_pci : Property_context_symbol_t.property_context_symbol ) =
  Property_context_symbol_t.Property_context_inputfile_symbol
   (Property_context_inputfile_symbol_t.Property_context_inputfile_constructor
     "/home/colonna/sources/ocaml_top/setup/frames/inputset/files/Print_homothety_point_a")
);;

let soi_pco_pci = provide sym_pco_pci;;

test_number 3 (
(soi_pco_pci : Sole_index_t.sole_index ) = 
[38; 18]
);;

let sym_pco_pdo = Property_context_symbol_v.property_context_domain_constructor "property";;

test_number 4 ( 
(sym_pco_pdo : Property_context_symbol_t.property_context_symbol ) =
  Property_context_symbol_t.Property_context_domain_symbol
   (Property_context_domain_symbol_t.Property_context_domain_constructor
     "property")
);;

let soi_pco_pdo = provide sym_pco_pdo;;

test_number 5 (
(soi_pco_pdo : Sole_index_t.sole_index ) = 
[18]
);;
