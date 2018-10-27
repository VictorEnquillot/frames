open Gentest_v;;

testing "Caml_line_value_v";;

(* toplevel 
   #use "tcaml_line_value_v.ml";; 
 *)

module Ccs_t = Caml_line_symbol_t
module Ccs_v = Caml_line_symbol_v
module Ccv_v = Caml_line_value_v
module Cts_v = Category_symbol_v
module Ecm_v = Entitycategorycodefile_v
module Enc_v = Entitycategory_v
module Ens_v = Entity_symbol_v
module Cfs_v = Codefile_symbol_v

let smb_ent = Ens_v.make "atom";;
let smb_enta = Ens_v.make "atom";;
let smb_entb = Ens_v.make "atom_zerotied";;
let smb_entc = Ens_v.make "atom_zerotied_anion";;
let smb_entd = Ens_v.make "atom_zerotied_anion_minus_one";;
let smb_cat = Cts_v.make "symbol";;
let smb_cfi = Cfs_v.make "type";;
let smb_cfif = Cfs_v.make "function";;

let enc = Enc_v.make smb_ent smb_cat;;
let ecm = Ecm_v.make smb_ent smb_cat smb_cfi;;
let ecma = Ecm_v.make smb_enta smb_cat smb_cfif;;
let ecmb = Ecm_v.make smb_entb smb_cat smb_cfif;;
let ecmc = Ecm_v.make smb_entc smb_cat smb_cfif;;
let ecmd = Ecm_v.make smb_entd smb_cat smb_cfif;;
let ecmbt = Ecm_v.make smb_entd smb_cat smb_cfif;;

testi 0 (
enc
(* : Entitycategory_t.entitycategory *)
=
(Entitycategory_t.Ens_t.String "atom", Entitycategory_t.Cts_t.Symbol_symbol)
);;

testi 1 (
ecm
(* : Entitycategorycodefile_t.entitycategorycodefile *)
=
(Entitycategorycodefile_t.Ens_t.String "atom",
 Entitycategorycodefile_t.Cts_t.Symbol_symbol,
 Entitycategorycodefile_t.Cfs_t.Type_symbol)
);;

testi 2 (
Ccv_v.make_title enc
(* : Caml_line_value_t.caml_line_value *)
= 
["(** {3 A Symbol for an Atom.} *)"]
);;

testi 3 (
Ccv_v.make_comment 6 "abbreviation"
(* : Caml_line_value_t.caml_line_value *)
= 
["(** {6 Abbreviation.} *)"; ""]
);;

testi 4 (
Ccv_v.make_type_definition enc
(* : Caml_line_value_t.caml_line_value *)
= 
["type atom_symbol ="]
);;

testi 5 (
Ccv_v.make_pipe_bare "truc"
(* : Caml_line_value_t.caml_line_value *)
= 
["  | Truc"]
);;

testi 6 (
Ccv_v. make_pipe_barebasic "bool"
(* : Caml_line_value_t.caml_line_value *)
= 
["  | Bool of bool"]

);;

testi 7 (
Ccv_v.make_pipe_constructor_argument_to_argument ecm
(* : Caml_line_value_t.caml_line_value *)
= 
["  | Atom_symbol of Ats_t.atom_symbol"]

);;

testi 8 (
Ccv_v.make_doublet "truc" "string" "ordinal"
(* : Caml_line_value_t.caml_line_value *)
= 
["type truc = (string, ordinal) Dbt_t.doublet;;"; ""]
);;

testi 9 (
Ccv_v.make_let_b_off_a_function ecm ecmb
(* : Caml_line_value_t.caml_line_value *)
= 
["let atom_zerotied_symbol_off_atom_symbol = function";
 "  | Ats_t.Atom_zerotied_symbol smb_azd -> smb_azd"; 
 ";;"; 
 ""]
);;

testi 10 (
Ccv_v.make_let_c_off_a_function ecm ecmb ecmc
(* : Caml_line_value_t.caml_line_value *)
= 
["let atom_zerotied_anion_symbol_off_atom_symbol smb_atm =";
 "  let smb_azd = atom_zerotied_symbol_off_atom_symbol smb_atm in";
 "    Azs_v.atom_zerotied_anion_symbol_off_atom_zerotied_symbol smb_azd";
 ";;"; 
 ""]
);;

testi 11 (
Ccv_v.make_let_c_off_a_function ecm ecmc ecmd
(* : Caml_line_value_t.caml_line_value *)
= 
["let atom_zerotied_anion_minus_one_symbol_off_atom_symbol smb_atm =";
 "  let smb_aza = atom_zerotied_anion_symbol_off_atom_symbol smb_atm in";
 "    Azas_v.atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_aza";
 ";;"; 
 ""]
);;

testi 12 (
Ccv_v.make_let_bt_thru_b_off_a_function ecm ecmc ecmbt
(* : Caml_line_value_t.caml_line_value *)
= 
["let atom_zerotied_anion_minus_one_symbol_off_atom_symbol smb_atm =";
 "  let smb_aza = atom_zerotied_anion_symbol_off_atom_symbol smb_atm in";
 "    Azas_v.atom_zerotied_anion_minus_one_symbol_off_atom_zerotied_anion_symbol smb_aza";
 ";;"; 
 ""]
);;

testi 13 (
Ccv_v.make_let_name_eq_function ecma ecmb
(* : Caml_line_value_t.caml_line_value *)
  = 
["let name = function"; 
 "  | Ats_v.Atom_zerotied_symbol smb_azd -> smb_azd";
 "    Azs_v.name smb_azd"; 
";;";
 ""]
);;

