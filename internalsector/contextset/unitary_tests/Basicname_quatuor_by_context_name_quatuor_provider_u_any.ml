open Make_test_v;;

testing "Basicname_quatuor_by_context_name_quatuor_provider_v
        Basicname_quatuor_by_context_name_quatuor_provider_u_any.ml";;

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
   #use "Basicname_quatuor_by_context_name_quatuor_provider_u_any.ml";;

*)

open Basicname_quatuor_by_context_name_quatuor_provider_v;;

let nam_box = "Print_length_segment_bc";;
let nam_bas = "local";;
let nam_dom = "property";;
let nam_sec = "product";;

let nam_qua = (nam_box, nam_bas, nam_dom, nam_sec) ;;
let bna_qua = Quatuor_v.make
	(Basicname_v.basicname_inputbox_of_string nam_box)
	(Basicname_v.basicname_inputbase_of_string nam_bas)
	(Basicname_v.basicname_domain_of_string nam_dom)
	(Basicname_v.basicname_sector_of_string nam_sec)
;;

test_number 1 (
(bna_qua : Basicname_t.basicname Quatuor_t.quatuor ) =
  (Basicname_t.Inputbox "Print_length_segment_bc",
   Basicname_t.Inputbase "local", Basicname_t.Domain "property",
   Basicname_t.Sector "product")
);;

test_number 2 (
bna_qua = provide nam_qua
);;
