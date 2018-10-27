open Make_test;;

(* toplevel 
   #use "fragment_tag_u_any.ml";; 
 *)

testing "Fragment_tag_v";;

(** Modules. *)


(* Rod -C_h_2C_h_< *)

let mty = Multiplicity_t.Single;;
let sta_bnd = Bond_index_t.Multiplicity mty;;

(* Fragment Symbol *)

let smb_frg = Fragment_symbol_t.Head_opened_fragment_symbol
    (Fragment_symbol_t.Head_opened_tail_opened_fragment_symbol (Fragment_symbol_t.Onefork_fragment_symbol Fragment_symbol_t.C_h_2C_h_));;

(* Fragment Index *)

let sta_ptn = Protonation_index_t.Neutral;;
let chS = Chemical_index_t.Protonation_index sta_ptn;;
let sta_frg = Fragment_index_t.Chemical_index chS;;

(* Fragment State *)

let idx_seq = Sequence_index_t.Single;;
let idx_frg = Fragment_state_t.Sequence_index idx_seq;;

(* Fragment Marker *)

let dsg_frg = Fragment_marker_v.make smb_frg sta_frg;;

(* Fragment Tag *)

let tag_frg = Tag_v.make smb_frg sta_frg idx_frg;;

test_number 0 (
dsg_frg (* : Fragment_marker_t.fragment_marker *) 
=
{Fragment_marker_t.Dsg_t.symbol =
  Fragment_marker_t.Fragment_symbol_t.Head_opened_fragment_symbol
   (Fragment_marker_t.Fragment_symbol_t.Head_opened_tail_opened_fragment_symbol
     (Fragment_marker_t.Fragment_symbol_t.Onefork_fragment_symbol
       Fragment_marker_t.Fragment_symbol_t.C_h_2C_h_));
 Fragment_marker_t.Dsg_t.index =
  Fragment_marker_t.Fragment_index_t.Chemical_index
   (Fragment_marker_t.Fragment_index_t.Chemical_index_t.Protonation_index
     Protonation_index_t.Neutral)}
);; 

test_number 1 (
tag_frg (* : (Fragment_symbol_t.fragment_symbol, Fragment_index_t.fragment_index, Fragment_state_t.fragment_state) Tag_t.tag *)
  =
{Tag_t.symbol =
  Fragment_symbol_t.Head_opened_fragment_symbol
   (Fragment_symbol_t.Head_opened_tail_opened_fragment_symbol
     (Fragment_symbol_t.Onefork_fragment_symbol Fragment_symbol_t.C_h_2C_h_));
 Tag_t.index =
  Fragment_index_t.Chemical_index
   (Fragment_index_t.Chemical_index_t.Protonation_index Protonation_index_t.Neutral);
 Tag_t.state = Fragment_state_t.Sequence_index Fragment_state_t.Sequence_index_t.Single}
 );;

