open Make_test_v;;

testing "Context_name_quatuor_by_context_sole_index_provider_v
   Context_name_quatuor_by_context_sole_index_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* toplevel 
   #use "Context_name_quatuor_by_context_sole_index_provider_u_any.ml";;

*)

open Context_name_quatuor_by_context_sole_index_provider_v;;

(* ("Print_point_a", "local", "user", "entry") *)

let nam_qua = ("Print_point_a", "local", "user", "entry");;

let soi_con = Context_sole_index_by_context_name_quatuor_provider_v.provide nam_qua;;

test_number 1 (
( soi_con : int list ) = 
[45; 1; 22; 1]
);;

let ord_qua = Quatuor_v.quatuor_of_list soi_con;;

test_number 2 (
(ord_qua : int Quatuor_t.quatuor) = 
(45, 1, 22, 1)
);;

let nam_qua = 
    Context_name_quatuor_by_context_ordinal_quatuor_provider_v.provide 
      ord_qua;;

test_number 3 (
(nam_qua : String.t Quatuor_t.quatuor ) =
  ("Print_point_a", "local", "user", "entry")
);;

test_number 4 (
nam_qua = provide soi_con
);;

(* ("Print_length_segment_bc", "local", "property", "product") *)
let nam_qua = ("Print_length_segment_bc", "local", "property", "product");;


let soi_con = Context_sole_index_by_context_name_quatuor_provider_v.provide nam_qua;;

