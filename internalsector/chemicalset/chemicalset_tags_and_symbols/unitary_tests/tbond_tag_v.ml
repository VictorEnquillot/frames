open Gentest_v;;

testing "Bond_marker_v";;

(* toplevel 
   #use "tbond_marker_v.ml";; 
*)

module Bds_v = Bond_marker_v
module Bls_v = Bond_symbol_v
module EnS_t = Entity_index_t
module EnS_v = Entity_index_v
module Mty_t = Multiplicity_t

let mty_1 = Mty_t.Single;;
let mty_2 = Mty_t.Double;;

let est_bnd_1 = EnS_t.Bond mty_1;;   
let est_bnd_2 = EnS_t.Bond mty_2;;   
let dsg_bnd_1 = Bds_v.make "a" est_bnd_1;; 
let dsg_bnd_2 = Bds_v.make "a" est_bnd_2;; 

testi 0 (
Bds_v.bond_symbol_off_bond_marker dsg_bnd_1
=
"a"
);;

testi 1 (
Bds_v.multiplicity_off_bond_marker dsg_bnd_1
=
 Mty_t.Single
);;

testi 2 (
 Bds_v.string_of_bond_marker dsg_bnd_1
= 
"a:B_S"
);;

testi 3 (
 Bds_v.string_of_bond_marker dsg_bnd_2
= 
"a:B_D"
);;

testi 4 (
Bds_v.compare dsg_bnd_1 dsg_bnd_1
=
0
);;

testi 5 (
Bds_v.compare dsg_bnd_1 dsg_bnd_2
=
1
);;

testi 6 (
Bds_v.compare dsg_bnd_2 dsg_bnd_1
=
-1
);;
