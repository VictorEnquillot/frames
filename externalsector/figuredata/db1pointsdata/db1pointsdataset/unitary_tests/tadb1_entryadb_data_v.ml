(** {3 Entryadb_data} *)

open Gentest_v;;

testing "Adb1 Entryadb_data_v";;

(* toplevel 
   #use "tadb1_entryadb_data_v.ml";; 
*)

module Eak_v = Entryadb_db_tagadb_v
module Eas_t = Entryadb_symbol_t
module Eas_v = Entryadb_symbol_v
module Ead_v = Entryadb_data_v
module Fio_v = Fileio_v
module Fln_v = Filename_p
module Lst_v = List_v
module Tad_v = Triangleadb_data_v

let smb_ena = "adb1";;
let tci_ena = [1];;
let kya_ena = Eak_v.make smb_ena tci_ena [];;
let fln_ena = Eas_v.filename_of_entryadb_symbol smb_ena;;
let str_l = Fio_v.string_list_of_filename fln_ena;;
let dat_ena = Ead_v.make kya_ena;;

testi 0 (
fln_ena
  =
Filename_p.String
  "/code/sources/ocaml_top/setup/frames/databases/figureset_databases/adb/files/triangle_alien_database_file.adb"
);;

testi 1 (
List.length str_l
(* : Entryadb_data_t.entryadb_data *)
 =
13
);;

testi 2 (
str_l
(* : string list *)
=
  ["triangle T"; 
   "vertex A       1. 1. 0."; 
   "vertex B       0. 0. 0.";
   "vertex C       2. 0. 0."; 
   ""; 
   ""; 
   "triangle U";
   "vertex A       0. 0. 0."; 
   "vertex B       0. 1. 0.";
   "vertex C       1. 0. 0."; 
   ""; 
   ""; 
   ""]
);;

testi 3 (
dat_ena
(*  : string list *) 
  =
["triangle T"; 
 "vertex A       1. 1. 0."; 
 "vertex B       0. 0. 0.";
 "vertex C       2. 0. 0."; 
 "triangle U"; 
 "vertex A       0. 0. 0.";
 "vertex B       0. 1. 0."; 
 "vertex C       1. 0. 0."]
);;

testi 4 (
Tad_v.triangleadb_data_list_off_entryadb_db_tagadb kya_ena
(* : string list list *)
  =
[
 [
  "triangle T"; 
  "vertex A       1. 1. 0."; 
  "vertex B       0. 0. 0.";
  "vertex C       2. 0. 0.";
] ;
   [
    "triangle U"; 
    "vertex A       0. 0. 0.";
    "vertex B       0. 1. 0."; 
    "vertex C       1. 0. 0."]
]
);;
