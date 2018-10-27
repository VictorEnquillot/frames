open Make_test_v;;

testing "Read_by_scanf";;

(* toplevel 
   #use "read_by_scanf.ml";; 

 *)

let ib = Scanf.Scanning.stdin ;;
let ib = Scanf.Scanning.from_string 
"ATOM    756  H   GLY A   1      17.643  11.915  17.853 \
   1.00  4.91           N  ";;

test_number 0 (
Scanf.bscanf ib
  "%6s %6i %4s %3s \
   %c %4i \
   %f %f %f \
   %f %f \
   %s"
 (fun kwd atom_idx atom_name residue_name
      chain_idx residue_idx
      x y z
      percent b_factor
      label ->
  kwd, atom_idx, atom_name, residue_name,
  chain_idx, residue_idx,
  x, y, z,
  percent, b_factor,
  label)
(* : string * int * string * string * char * int * float * float * float *
  float * float * string *)
=
  ("ATOM", 756, "H", "GLY", 'A', 1, 17.643, 11.915, 17.853, 1., 4.91, "N")
)
;;
