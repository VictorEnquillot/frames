open Make_test_v;;

(* toplevel
   "#use tmatrix_v.ml";;
 *)

module Mat_v = Matrix_v
module Vec_v = Vector_v

testing "Matrix";;

let matf1 = [|[|11.; 12.;|];
	      [|21.; 22.;|]|];;

let matf2 = [|[|11.; 12.; 13.;|];
	      [|21.; 22.; 23.;|]|];;

let vct = Mat_v.vector_off_matrix matf2 1;;
let row = Mat_v.row_off_matrix matf2 1;;
let col = Mat_v.column_off_matrix matf2 2;;

test_number 1 (
 vct 
=
 [|21.; 22.; 23.|]
);;

test_number 2 (
 row 
=
vct
);;

test_number 3 (
 col 
=
[|13.; 23.|]
);;

test_number 4 (
size  matf1 = (2, 2) 
);;

test_number 5 (
length  matf1 = (2, 2) 
);;

test_number 6 (
order  matf1 = (2, 2) 
);;

test_number 7 (
dim_i matf2 = 2
);;

test_number 8 (
dim_j matf2 = 3
);;

test_number 9 (
get matf2 1 2 = 23. 
);;

test_number 10 (
set matf2 1 2 55.; get matf2 1 2 = 55.
);;

test_number 11 (
make 3 2 5. = [|[|5.; 5.|]; [|5.; 5.|]; [|5.; 5.|]|]
);;

test_number 12 (
init  2 3 (fun i j -> float_of_int ( 10 * (i+1) + (j+1))) =
[|[|11.; 12.; 13.|]; [|21.; 22.; 23.|]|]
);;

test_number 13 (
is_squared matf1 && not (is_squared matf2)
);;

test_number 14 (
append_i matf1   matf1 =
[| [|11.; 12.|]; [|21.; 22.|]; [|11.; 12.|]; [|21.; 22.|] |]
);;

test_number 15 (
to_array [| [|11.; 12.|]; [|21.; 22.|]; [|11.; 12.|]; [|21.; 22.|] |] =
[|11.; 12.; 21.; 22.; 11.; 12.; 21.; 22.|]
);;

test_number 16 (
of_array [|11.; 12.; 21.; 22.; 11.; 12.; 21.; 22.|] 4 2 =
[| [|11.; 12.|]; [|21.; 22.|]; [|11.; 12.|]; [|21.; 22.|] |] 
);;

test_number 17 (
transposed [| [|11.; 12.|]; [|21.; 22.|]; [|11.; 12.|]; [|21.; 22.|] |] =
[|[|11.; 21.; 11.; 21.|]; [|12.; 22.; 12.; 22.|]|]
);;


