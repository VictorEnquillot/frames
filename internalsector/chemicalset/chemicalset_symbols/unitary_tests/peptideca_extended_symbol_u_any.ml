(** {3 Peptideca Extended Symbol.} *)

open Make_test;;

testing "Peptideca_extended_symbol_v";;

(* toplevel 
   #use "peptideca_extended_symbol_u_any.ml";; 
*)


(* ----------- Nterminal Alanine -------------- *)

(* Peptideca Extended Symbol *)
let smb_reg_ala = Aas_t.Alanine;; 
let smb_pnx_ala = Peptideca_extended_symbol_v.make_nterminal_of_molecule_aminoacid_regular_symbol smb_reg_ala;; 
let smb_px1_ala = Peptideca_extended_symbol_v.extend_of_peptideca_extended_symbol smb_pnx_ala;;
let smb_px2_ala = Peptideca_extended_symbol_v.extend_of_peptideca_extended_symbol smb_px1_ala;;

(* ----------- Embedded Proline -------------- *)

(* Peptideca Extended Symbol *)
let smb_reg_pro = Aas_t.Proline;; 
let smb_pcx_pro = Peptideca_extended_symbol_v.make_embedded_of_molecule_aminoacid_regular_symbol smb_reg_pro;; 
let smb_px1_pro = Peptideca_extended_symbol_v.extend_of_peptideca_extended_symbol smb_pcx_pro;;
let smb_px2_pro = Peptideca_extended_symbol_v.extend_of_peptideca_extended_symbol smb_px1_pro;;

test_number 0 (
smb_reg_ala (* : Aas_t.regular_symbol *)
  = Aas_t.Alanine
);;

test_number 1 (
smb_pnx_ala (* : Peptideca_extended_symbol_t.peptideca_extended_symbol *)
=
Peptideca_extended_symbol_t.Peptideca_extended_nterminal_symbol
  Peptideca_extended_symbol_t.Peptideca_nterminal_symbol_t.Aas_t.Alanine
);;

test_number 2 (
smb_px1_ala (* : Peptideca_extended_symbol_t.peptideca_extended_symbol *)
  =
smb_pnx_ala
);;

test_number 3 (
smb_px2_ala (* : Peptideca_extended_symbol_t.peptideca_extended_symbol *)
  =
smb_pnx_ala
);;

test_number 4 (
Peptideca_extended_symbol_v.count smb_px2_ala 
  =
0
);;

test_number 5 (
Peptideca_extended_symbol_v.molecule_aminoacid_regular_symbol_off_peptideca_extended_symbol smb_px2_ala
=
Aas_t.Alanine
);;

test_number 6 (
Peptideca_extended_symbol_v.peptideca_regular_nterminal_symbol_off_peptideca_extended_symbol smb_px2_ala
(* : Peptideca_nterminal_symbol_t.peptideca_regular_nterminal_symbol *) 
=
Peptideca_nterminal_symbol_t.Aas_t.Alanine
);;

test_number 7 (
Peptideca_extended_symbol_v.name smb_px2_ala
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
smb_pcx_pro (* : Peptideca_extended_symbol_t.peptideca_extended_symbol *)
  =
  Peptideca_extended_symbol_t.Peptideca_extended_embedded_symbol
   (Extended_t.Basic
     Peptideca_extended_symbol_t.Peptideca_embedded_symbol_t.Aas_t.Proline)
);;

test_number 10 (
smb_px1_pro (* : Peptideca_extended_symbol_t.peptideca_extended_symbol *)
=
 Peptideca_extended_symbol_t.Peptideca_extended_embedded_symbol
   (Extended_t.Extended
     (Extended_t.Basic
       Peptideca_extended_symbol_t.Peptideca_embedded_symbol_t.Aas_t.Proline))
);;

test_number 11 (
smb_px2_pro (* : Peptideca_extended_symbol_t.peptideca_extended_symbol *)
=
  Peptideca_extended_symbol_t.Peptideca_extended_embedded_symbol
   (Extended_t.Extended
     (Extended_t.Extended
       (Extended_t.Basic
         Peptideca_extended_symbol_t.Peptideca_embedded_symbol_t.Aas_t.Proline)))
);;

test_number 12 (
Peptideca_extended_symbol_v.count smb_px2_pro 
  =
2
);;

test_number 13 (
Peptideca_extended_symbol_v.molecule_aminoacid_regular_symbol_off_peptideca_extended_symbol smb_px2_pro
=
Aas_t.Proline
);;

test_number 14 (
Peptideca_extended_symbol_v.peptideca_regular_embedded_symbol_off_peptideca_extended_symbol smb_px2_pro
(* : Peptideca_embedded_symbol_t.peptideca_regular_embedded_symbol *) 
=
Peptideca_embedded_symbol_t.Aas_t.Proline
);;

test_number 15 (
Peptideca_extended_symbol_v.name smb_px2_pro
=
"x2P"
);;

