open Gentest_v;;

testing "Parameter_value_provider_v";;

(* toplevel 
   #use "tparameter_value_provider_v.ml";;
 *)

let nam_cod = "tparameter_value_provider_v.ml";;

module Enc_v = Entitycategory_v
module Pas_t = Parameter_symbol_t
module Pas_v = Parameter_symbol_v
module Pav_v = Parameter_value_v
module Pvp_v = Parameter_value_provider_v

let smb_pfi_ecx = Pas_v.entity_external_n_codefile_list_file;;
let val_pfi_ecx = Pav_v.make smb_pfi_ecx;;

let smb_scf = Pas_v.module_scope_file;;
let val_scf = Pav_v.make smb_scf;;

testi 0 (
smb_pfi_ecx
(* : Pas_v.Pas_t.parameter_symbol *)
=
Pas_t.File_symbol Pas_t.Entity_external_n_codefile_list
);;

testi 1 (
Pas_v.name smb_pfi_ecx
(* : string *)
   =
"file entity_external_n_codefile_list"
);;

testi 2 (
Pvp_v.provide smb_pfi_ecx 
(* : Pvp_v.Pav_t.parameter_value *)
=
Pvp_v.Pav_t.Filename_palue
  (Pvp_v.Pav_t.Fln_t.String "./entity_external_n_codefile_list.dat")
);;

testi 3 (
val_pfi_ecx
(* : Pav_v.Pav_t.parameter_value *)
=
Pav_v.Pav_t.Filename_palue
 (Pav_v.Pav_t.Fln_t.String "./entity_external_n_codefile_list.dat")
);;

testi 4 (
smb_scf
(* : Pas_v.Pas_t.parameter_symbol *)
=
Parameter_symbol_t.File_symbol Parameter_symbol_t.Module_scope
);;

testi 5 (
Pas_v.name smb_scf
(* : string *)
   =
"file module_scope"
);;

testi 6 (
Pvp_v.provide smb_scf 
(* : Pvp_v.Pav_t.parameter_value *)
=
Pvp_v.Pav_t.Filename_palue
 (Pvp_v.Pav_t.Fln_t.String "./private_scope.dat")
);;

testi 7 (
val_scf
(* : Pav_v.Pav_t.parameter_value *)
=
Pav_v.Pav_t.Filename_palue
 (Pav_v.Pav_t.Fln_t.String "./private_scope.dat")
);;

(*
testi 8 (
Pvp_v.store_force smb_pfi_ecx (Pav_v.make_filename_of_string "troc");
Pvp_v.provide smb_pfi_ecx 
(* : Pvp_v.Pav_t.parameter_value *)
=
Pvp_v.Pav_t.Filename_palue
  (Pvp_v.Pav_t.Fln_t.String "./troc")
);;

testi 9 (
Pvp_v.store_force smb_scf (Pav_v.make_filename_of_string "truc.dat");
Pvp_v.provide smb_scf 
(* : Pvp_v.Pav_t.parameter_value *)
=
Pvp_v.Pav_t.Filename_palue
  (Pvp_v.Pav_t.Fln_t.String "./truc.dat")
);;
*)
