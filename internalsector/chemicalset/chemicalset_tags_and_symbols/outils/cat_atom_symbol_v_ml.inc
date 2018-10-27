(** {9 Valence.} *)

module Mns_v = Mendeleev_symbol_v

let mendeleev_symbol_off_atom_symbol smb_atm =
  let nam = name smb_atm in
  let str = Scanf.sscanf nam "%_s@_%s" (fun s -> s) in
  Mns_v.mendeleev_symbol_of_string str 
;;

let valence_of_atom_symbol smb_atm = 
(* need to be done at each elementary level *) 
  let smb_mnd = mendeleev_symbol_off_atom_symbol smb_atm in	
  Mns_v.default_valence_of_mendeleev_symbol smb_mnd 
;;