open Gentest_v;;

testing "Parameter_symbol_v";;

(* toplevel 
   #use "tparameter_symbol_v.ml";; 
*)

module Pas_t = Parameter_symbol_t
module Pas_v = Parameter_symbol_v

let nam_par_f = "triangle_alien_database";;
let smb_par_f = Pas_v.make nam_par_f;;

let nam_par_k = "coordinate_kind";;
let smb_par_k = Pas_v.make nam_par_k;;

let nam_par_u = "coordinate_unit";;
let smb_par_u = Pas_v.make nam_par_u;;

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
