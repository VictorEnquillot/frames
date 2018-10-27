(** {3 Residue Extended Symbol.} *)

open Make_test;;

testing "Residue_extended_symbol_v";;

(* toplevel 
   #use "residue_extended_symbol_u_any.ml";; 
*)


(* ----------- Nterminal Alanine -------------- *)

(* Residue Extended Symbol *)
let smb_reg_ala = Aas_t.Alanine;; 
let smb_pnx_ala = Residue_extended_symbol_v.make_nterminal_of_molecule_aminoacid_regular_symbol smb_reg_ala;; 
let smb_rx1_ala = Residue_extended_symbol_v.extend_of_residue_extended_symbol smb_pnx_ala;;
let smb_rx2_ala = Residue_extended_symbol_v.extend_of_residue_extended_symbol smb_rx1_ala;;

(* ----------- Embedded Proline -------------- *)

(* Residue Extended Symbol *)
let smb_reg_pro = Aas_t.Proline;; 
let smb_pcx_pro = Residue_extended_symbol_v.make_embedded_of_molecule_aminoacid_regular_symbol smb_reg_pro;; 
let smb_rx1_pro = Residue_extended_symbol_v.extend_of_residue_extended_symbol smb_pcx_pro;;
let smb_rx2_pro = Residue_extended_symbol_v.extend_of_residue_extended_symbol smb_rx1_pro;;

test_number 0 (
smb_reg_ala (* : Aas_t.regular_symbol *)
  = Aas_t.Alanine
);;

test_number 1 (
smb_pnx_ala (* : Residue_extended_symbol_t.residue_extended_symbol *)
=
Residue_extended_symbol_t.Residue_extended_nterminal_symbol
  Residue_extended_symbol_t.Rns_t.Aas_t.Alanine
);;

test_number 2 (
smb_rx1_ala (* : Residue_extended_symbol_t.residue_extended_symbol *)
  =
smb_pnx_ala
);;

test_number 3 (
smb_rx2_ala (* : Residue_extended_symbol_t.residue_extended_symbol *)
  =
smb_pnx_ala
);;

test_number 4 (
Residue_extended_symbol_v.count smb_rx2_ala 
  =
0
);;

test_number 5 (
Residue_extended_symbol_v.molecule_aminoacid_regular_symbol_off_residue_extended_symbol smb_rx2_ala
=
Aas_t.Alanine
);;

test_number 6 (
Residue_extended_symbol_v.residue_nterminal_regular_symbol_off_residue_extended_symbol smb_rx2_ala
(* : Residue_nterminal_symbol_t.residue_nterminal_regular_symbol *) 
=
Residue_nterminal_symbol_t.Aas_t.Alanine
);;

test_number 7 (
Residue_extended_symbol_v.name smb_rx2_ala
=
"A"
);;

(* ----------- Embedded Proline -------------- *)

test_number 8 (
smb_reg_pro (* : Aas_t.regular_symbol *)
  = 
Aas_t.Proline
);;

test_number 9 (
smb_pcx_pro (* : Residue_extended_symbol_t.residue_extended_symbol *)
  =
  Residue_extended_symbol_t.Residue_extended_embedded_symbol
   (Extended_t.Basic
     Residue_extended_symbol_t.Residue_embedded_symbol_t.Aas_t.Proline)
);;

test_number 10 (
smb_rx1_pro (* : Residue_extended_symbol_t.residue_extended_symbol *)
=
 Residue_extended_symbol_t.Residue_extended_embedded_symbol
   (Extended_t.Extended
     (Extended_t.Basic
       Residue_extended_symbol_t.Residue_embedded_symbol_t.Aas_t.Proline))
);;

test_number 11 (
smb_rx2_pro (* : Residue_extended_symbol_t.residue_extended_symbol *)
=
  Residue_extended_symbol_t.Residue_extended_embedded_symbol
   (Extended_t.Extended
     (Extended_t.Extended
       (Extended_t.Basic
         Residue_extended_symbol_t.Residue_embedded_symbol_t.Aas_t.Proline)))
);;

test_number 12 (
Residue_extended_symbol_v.count smb_rx2_pro 
  =
2
);;

test_number 13 (
Residue_extended_symbol_v.molecule_aminoacid_regular_symbol_off_residue_extended_symbol smb_rx2_pro
=
Aas_t.Proline
);;

test_number 14 (
Residue_extended_symbol_v.residue_embedded_regular_symbol_off_residue_extended_symbol smb_rx2_pro
(* : Residue_embedded_symbol_t.residue_embedded_regular_symbol *) 
=
Residue_embedded_symbol_t.Aas_t.Proline
);;

test_number 15 (
Residue_extended_symbol_v.name smb_rx2_pro
=
"x2P"
);;

