(** {3 Pripath functionalities Functionalities for a Symbol for an Hsbf Pack.} *)

let mod_nam = "Hsbf_pack_symbol_v";;

module Cns_v = Center_symbol_v 

(** {6 Making.} *)

let make smb_cnt = smb_cnt;
;;

(** {6 Alternate Making.} *)

let read ib =
  Utils_v.not_yet_implemented mod_nam "Xfp_single_symbol_v.read"
;;

(** {6 Extracting.} *)

let center_symbol_off_hsbf_pack_symbol smb_hsp =
  smb_hsp
;;

let atom_symbol_off_hsbf_pack_symbol smb_hsp =
  let smb_cnt = center_symbol_off_hsbf_pack_symbol smb_hsp in
  Cns_v.atom_symbol_off_center_symbol smb_cnt
;;

(** {6 Converting.} *)

let print ppf smb_hsp =
  let smb_cnt = center_symbol_off_hsbf_pack_symbol smb_hsp in
  Format.fprintf ppf "Center %a"
    Cns_v.print smb_cnt
;;

let string_of_hsbf_pack_symbol smb_hsp =
  print Format.str_formatter smb_hsp;
  Format.flush_str_formatter () 
;;

let name smb_hsp =
  let smb_cnt = center_symbol_off_hsbf_pack_symbol smb_hsp in
  Cns_v.name smb_cnt
;;



