open Gentest_v;;

testing "Entitycategorycodefile_v";;

(* toplevel 
   #use "tentitycategorycodefile_v.ml";; 
 *)

module Cts_v = Category_symbol_v
module Ecc_v = Entitycategorycodefile_v
module Enc_v = Entitycategory_v
module Ens_v = Entity_symbol_v
module Cfs_v = Codefile_symbol_v

let ent = "atom";;
let cat = "symbol";;

let smb_ent = Ens_v.make ent;;
let smb_cat = Cts_v.make cat;;
let smb_cfi = Cfs_v.make "type";;

let ecnt = Enc_v.make smb_ent smb_cat;;
let ecct = Ecc_v.make smb_ent smb_cat smb_cfi;;
let eccb = Ecc_v.make (Ens_v.make "atom_onetied_single") smb_cat smb_cfi;;
 
testi 0 (
ecnt
(* : Entitycategory_t.entitycategory *)
=
(Entitycategory_t.Ens_t.String "atom", Entitycategory_t.Cts_t.Symbol_symbol)
);;

testi 1 (
ecct
(* : Entitycategorycodefile_t.entitycategorycodefile *)
=
(Entitycategorycodefile_t.Ens_t.String "atom",
 Entitycategorycodefile_t.Cts_t.Symbol_symbol,
 Entitycategorycodefile_t.Cfs_t.Type_symbol)
);;

testi 2 (
Aab_v.abbreviation_argument_of_entity_symbol smb_ent
=
"atm"
);;

testi 3 (
Aab_v.abbreviation_argument_of_entity_symbol (Ens_v.make "atom_zerotied")
=
"azd"
);;

testi 4 (
Amd_v.abbreviation_module_of_entity_symbol smb_ent
=
"Am"
);;

testi 5 (
Aab_v.abbreviation_argument_of_category_symbol smb_cat
=
"smb"
);;

testi 6 (
Amd_v.abbreviation_module_of_category_symbol smb_cat
=
"s"
);;

testi 7 (
Ecc_v.codefile_suffix_of_entitycategorycodefile smb_cfi
=
"t"
);;

testi 8 (
Aab_v.abbreviation_argument_of_entitycategory ecnt 
(* : Caml_line_value_t.caml_line_value *)
= 
"smb_atm"
);;

testi 9 (
Amd_v.abbreviation_module_of_entitycategory ecnt 
(* : Caml_line_value_t.caml_line_value *)
= 
"Ams"
);;

testi 10 (
Ecc_v.abbreviation_argument ecct 
(* : Caml_line_value_t.caml_line_value *)
= 
"smb_atm"
);;

testi 11 (
Ecc_v.abbreviation_module ecct 
(* : Caml_line_value_t.caml_line_value *)
= 
"Ams_t"
);;

testi 12 (
Ecc_v.abbreviation_argument eccb 
(* : Caml_line_value_t.caml_line_value *)
= 
"smb_aos"
);;

testi 13 (
Ecc_v.abbreviation_module eccb
(* : Caml_line_value_t.caml_line_value *)
= 
"Aoss_t"
);;

testi 14 (
Ecc_v.abbreviation_module
(Entitycategorycodefile_t.Ens_t.String "atom_threetied",
 Entitycategorycodefile_t.Cts_t.Symbol_symbol,
 Entitycategorycodefile_t.Cfs_t.Implementation_symbol)
(* : string *)
= 
"Ats_v"  
);;

