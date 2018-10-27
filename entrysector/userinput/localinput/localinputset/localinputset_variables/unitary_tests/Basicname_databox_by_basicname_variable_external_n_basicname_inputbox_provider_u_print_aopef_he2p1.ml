open Make_test_v;;

testing "Basicname_databox_by_basicname_variable_external_n_basicname_inputbox_provider_v
        Basicname_databox_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

(* Deleting Registers *)

(* Tracing *)

(* define Con_bc                    -- Basicname_variable_context *)
(*        context *)
(*          databox "segment_BC"    -- Basicname_databox *)
(*          database "db1points" *)
(*          domain "figure" *)
(*          sector "internal" *)
(*          end -- context *)
(*        end -- define *)

(* define Seg_bc                    -- Basicname_variable_external *)
(*        external  *)
(*          type [ "figure" "set" "body" "segment" "constructor" ] *)
(*          external_name "BC" *)
(*          external_context Con_bc -- Basicname_external_context *)
(*          end -- external *)
(*        end -- define *)

(* toplevel 
   #use "Basicname_databox_by_basicname_variable_external_n_basicname_inputbox_provider_u_print_aopef_he2p1.ml";;

*)

open Basicname_databox_by_basicname_variable_external_n_basicname_inputbox_provider_v;;

let nam_ibo = "Print_length_segment_bc";;
let bna_ibo = Basicname_v.basicname_inputbox_of_string nam_ibo;;

let nam_var_ext = "Seg_bc";;
let bna_var_ext = Basicname_v.basicname_variable_external_of_string nam_var_ext;;
  
Check_is_basicname_variable_external_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide (bna_var_ext, bna_ibo);;
  
Check_is_basicname_inputbox_by_basicname_provider_v.provide bna_ibo;;

let bna_ext_con = 
    Basicname_external_context_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide
      (bna_var_ext, bna_ibo);;

test_number 1 (
(bna_ext_con : Basicname_t.basicname ) =
  Basicname_t.External_context "Con_bc"
);;

let bna_var_con = Basicname_v.basicname_variable_context_of_basicname_external_context bna_ext_con;;

test_number 2 (
(bna_var_con : Basicname_t.basicname ) =
  Basicname_t.Variable_context "Con_bc"
);;

let bna_dbo = Basicname_databox_by_basicname_variable_context_n_basicname_inputbox_provider_v.provide
    (bna_var_con, bna_ibo);;

test_number 3 (
(bna_dbo : Basicname_t.basicname ) = 
Basicname_t.Databox "segment_BC"
);;

test_number 4 (
bna_dbo = provide (bna_var_ext, bna_ibo)
);;
