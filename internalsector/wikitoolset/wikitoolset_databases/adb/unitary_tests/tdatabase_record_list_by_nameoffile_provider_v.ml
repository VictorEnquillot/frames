open Gentest_v;;

testing "database_record_list_by_nameoffile_provider_v.ml";;

(* toplevel 
   #use "tdatabase_record_list_by_nameoffile_provider_v.ml";; 
*)

module Drldp_v = Database_record_list_by_nameoffile_provider_v
module Fin_p = Filename_p
module Tra_v = Trail_v

let tra_nof_che = Tra_v.make "nameoffile" "chemicalset" [];;
let tra_nof_geo = Tra_v.make "nameoffile" "geometryset" [];;

testi 0 (
Drldp_v.provide tra_nof_che
(* : string list *)
=
[
]
);;

testi 1 (
Drldp_v.provide tra_nof_geo
(* : string list *)
=
[
]
);;

