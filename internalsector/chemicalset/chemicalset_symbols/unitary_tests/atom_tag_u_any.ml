open Make_test;;

(** {3 Tests for Atom_tag_v.} *)

testing "Atom_tag_v";;

(* toplevel 
   #use "atom_tag_u_any.ml";; 
 *)

(* Modules *)

(** c *)

let smb_atm = Atom_symbol_v.c;;

let sta_prt = Protonation_index_t.Neutral;;
let chS = Chemical_index_t.Protonation_index sta_prt;;
let sta_atm = Atom_index_t.Chemical_index chS;; 

let wbi_atm = Web_state_v.web_state_of_int 3;;
let idx_atm = Atom_state_v.make_of_web_state wbi_atm;;

let tag_atm = Atom_tag_v.make smb_atm sta_atm idx_atm;;
let vln_tag_atm = Atom_tag_v.valence_of_atom_tag tag_atm;;

test_number 0 (
tag_atm (* : Atom_tag_t.atom_tag *) 
=
{Tag_t.symbol = Atom_tag_t.Atom_symbol_t.Element Mendeleev_symbol_t.C;
 Tag_t.index =
 Atom_tag_t.Atom_index_t.Chemical_index
   (Atom_tag_t.Atom_index_t.Chemical_index_t.Protonation_index Protonation_index_t.Neutral);
 Tag_t.state = Atom_tag_t.Atom_state_t.Web_state Atom_tag_t.Atom_state_t.Web_state_t.Left}
);;

test_number 1 (
Atom_tag_v.name tag_atm
=
"C:N:W_L"
);;

test_number 2 (
vln_tag_atm
  =
Index_p.four
);;

