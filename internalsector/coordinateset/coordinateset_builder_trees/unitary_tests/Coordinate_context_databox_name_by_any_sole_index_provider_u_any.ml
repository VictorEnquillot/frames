open Make_test_v;;

testing "Coordinate_context_databox_name_by_any_sole_index_provider_v with
    Coordinate_context_databox_name_by_any_sole_index_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)


(* toplevel 
   #use "Coordinate_context_databox_name_by_any_sole_index_provider_u_any.ml";; 

*)


open Coordinate_context_databox_name_by_any_sole_index_provider_v;;

let nam_nbo = "cc_pVTZ";;

let tag_db1_l = Coordinate_tag_all_list_by_databox_name_n_database_name_provider_v.provide nam_nbo;;
let soi_db1_al = List.filter 
    (fun i -> (List.length i > 12) && (List.hd i = 1) && (List.nth i 1 = 2))
    (Doublet_list_v.right_list_off_doublet_list tag_db1_l);;

test_number 1 (
(soi_db1_al : Sole_index_t.sole_index list ) =
  [[1; 2; 2; 1; 2; 1; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 2; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 3; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 3; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 4; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 4; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 5; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 5; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 6; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 6; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 7; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 7; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 8; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 8; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 9; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 9; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 1; 2; 10; 2; 2; 2; 8; 5; 20; 2];
   [1; 2; 2; 4; 2; 10; 2; 2; 2; 8; 5; 20; 2]]
);;

let soi_any = List.nth soi_db1_al 5;;

test_number 2 (
(soi_any : Sole_index_t.sole_index ) =
  [1; 2; 2; 4; 2; 4; 2; 2; 2; 8; 5; 20; 2]
);;

let soi_nbo = 
  Coordinate_context_databox_sole_index_by_any_sole_index_provider_v.provide
    soi_any ;;

test_number 3 (
(soi_nbo : int list ) = 
[8; 5; 20; 2]
);;

let ord_nbo = List.hd soi_nbo;;

test_number 4 (
(ord_nbo : int ) =
8
);;

let nam_nbo = Databox_name_by_ordinal_provider_v.provide ord_nbo;;

test_number 5 (
(nam_nbo : string) =
"cc_pVTZ"
);;

test_number 6 (
nam_nbo = provide soi_any
);;
