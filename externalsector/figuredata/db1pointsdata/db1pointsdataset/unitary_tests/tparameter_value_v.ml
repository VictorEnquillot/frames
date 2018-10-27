(** {3 Triangleadb_data_provider} *)

open Gentest_v;;

testing "Parameter_value_v";;

(* toplevel 
   #use "tparameter_value_v.ml";; 
*)

module Pas_t = Parameter_symbol_t
module Pas_v = Parameter_symbol_v
module Pav_t = Parameter_value_t
module Pav_v = Parameter_value_v

let nam_par_f = "triangle_alien_database";;
let smb_par_f = Pas_v.make nam_par_f;;

let nam_par_k = "coordinate_kind";;
let smb_par_k = Pas_v.make nam_par_k;;

let nam_par_u = "coordinate_unit";;
let smb_par_u = Pas_v.make nam_par_u;;

let val_par_f = Pav_v.make smb_par_f;;
let fln = Pav_v.filename_off_parameter_value val_par_f;;

let val_par_k = Pav_v.make smb_par_k;;

let val_par_u = Pav_v.make smb_par_u;;
let uni_coo = Pav_v.coordinate_unit_value_off_parameter_value val_par_u;;

testi 0 (
smb_par_f 
(* : Parameter_symbol_t.parameter_symbol *)
=
  Parameter_symbol_t.File_symbol
   Parameter_symbol_t.Triangle_alien_database_file_symbol
);;

testi 1 (
smb_par_k 
(* : Parameter_symbol_t.parameter_symbol *)
=
 Parameter_symbol_t.Coordinate_kind_symbol
   Parameter_symbol_t.Triangle_alien_database_file_symbol
);;

testi 2 (
smb_par_u 
(* : Parameter_symbol_t.parameter_symbol *)
=
  Parameter_symbol_t.Coordinate_unit_symbol
   Parameter_symbol_t.Triangle_alien_database_file_symbol
);;

testi 3 (
val_par_f 
(* : Parameter_value_t.parameter_value *)
  =
Parameter_value_t.File_name_value
  "/code/sources/ocaml_top/setup/frames/databases/figureset_databases/adb/files/triangle_alien_database_file.adb"
);;

testi 4 (  
fln
(* : Filename_p.filename *)
=
Filename_p.String
  "/code/sources/ocaml_top/setup/frames/databases/figureset_databases/adb/files/triangle_alien_database_file.adb"
);;

testi 5 (
val_par_k 
(* : Parameter_value_t.parameter_value *)
=
Parameter_value_t.Coordinate_kind_value "cartesian"
);;

testi 6 (
val_par_u 
(* : Parameter_value_t.parameter_value *)
  =
Parameter_value_t.Coordinate_unit_value "angstrom"
);;

testi 7 (
uni_coo
=
"angstrom"
);;
