open Make_test_v;;

testing "Basicname_inputbox_by_any_sole_index_provider_v
        Basicname_inputbox_by_any_sole_index_provider_u_any.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_db1  *)
(*        context *)
(*          database "db1" *)
(*          domain "figure" *)
(*          end -- context *)
(*        end -- define *)

(* define Len *)
(*        operator  *)
(*          type [ "operator" "set" "body" "creation" "tomeasure" "constructor"] *)
(*          operation "length" *)
(*          ondomain "figure"   *)
(*          end -- operator *)
(*        end -- define *)

(* define Seg_bc *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_db1 *)
(*          end -- external *)
(*        end -- define *)

(* define Len_bc *)
(*        target  *)
(*          type [ "property" "set" "body" "operand" "target" "measured" "constructor" ] *)
(*          target_operator Len *)
(*          target_operand Seg_bc *)
(*          end -- target *)
(*        end -- define *)

(* define Uni_len *)
(*        external  *)
(*          type [ "units" "length" "bohr" ] *)
(*          external_context Con_nwc *)
(*          end -- external *)
(*        end -- define *)

(* print Len_bc *)
(*       units [ Uni_len ] *)
(*       end -- print *)

(* stop *)

(* toplevel 
   #use "Basicname_inputbox_by_any_sole_index_provider_u_any.ml";;

*)

open Basicname_inputbox_by_any_sole_index_provider_v;;

let soi_any = [1; 2; 1; 41; 1; 18; 6];;
let soi_con = List_v.sublist_of_int_of_length_of_list 0 4 soi_any;;

test_number 1 (
(soi_con : int list ) = 
[1; 2; 1; 41]
);;

let qua_nam = Context_name_quatuor_by_context_sole_index_provider_v.provide soi_con ;;


test_number 2 (
(bna_qua : Basicname_t.basicname Quatuor_t.quatuor ) =
  (Basicname_t.Inputbox "Print_length_segment_bc",
   Basicname_t.Inputbase "local", Basicname_t.Domain "property",
   Basicname_t.Sector "product")
);;

test_number 3 (
bna_qua = provide nam_qua
);;
