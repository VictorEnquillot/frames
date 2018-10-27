open Make_test_v;;

(* toplevel 
   #use "molecule_aminoacid_index_u_any.ml";; 
 *)

testing "Molecule_aminoacid_index_v";;

(** Modules. *)





let prS = Protonation_index_t.Protonated;;
let chS = Chemical_index_t.Protonation_index prS;;
let sta_ama = Molecule_aminoacid_index_t.Chemical_index chS;;

test_number 0 (
sta_ama (* : Molecule_aminoacid_index_t.molecule_aminoacid_index *) 
=
Molecule_aminoacid_index_t.Chemical_index
 (Molecule_aminoacid_index_t.Chemical_index_t.Protonation_index Protonation_index_t.Protonated)
);;

test_number 1 (
Molecule_aminoacid_index_v.name sta_ama
=
"H"
);;
