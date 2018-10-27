open Make_test_v;;

testing "Constructor_root_basename_by_domain_trail_provider_v with
   Constructor_root_basename_by_domain_trail_provider_u_generatorset.ml"

(* toplevel 
   #use "Constructor_root_basename_by_domain_trail_provider_u_generatorset.ml";;

*)

let nam_dos = "generatorset";;
let tra_dos = Trail_v.make "domain" nam_dos [];;
let ban_cor = Constructor_root_basename_by_domain_trail_provider_v.provide tra_dos;;

test_number 1 (
ban_cor
(* : (string, string) Doublet_t.doublet list *)
=
"generatorset"
);;

