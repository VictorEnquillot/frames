(** {3 Id3v2_tag_unique_symbol_t} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Id3v2_tag_unique_symbol_t";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Typing} *)

type id3v2_tag_unique_symbol =
  | Aenc
  | Apic
  | Comm
  | Comr
  | Encr
  | Etco
  | Geob
  | Grid
  | Link
  | Mcdi
  | Mllt
  | Owne
  | Pcnt
  | Popm
  | Poss
  | Priv
  | Rbuf
  | Rvrb
  | Sylt
  | Sytc
  | Talb
  | Tbpm
  | Tcon
  | Tcop
  | Tdly
  | Tenc
  | Tflt
  | Tit1
  | Tit2
  | Tit3
  | Tkey
  | Tlan
  | Tlen
  | Tmed
  | Toal
  | Tofn
  | Town
  | Tpe2
  | Tpe3
  | Tpe4
  | Tpos
  | Tpub
  | Trck
  | Trsn
  | Trso
  | Tsrc
  | Tsse
  | Txxx
  | Ufid
  | User
  | Uslt
  | Wcom
  | Wcop
  | Woaf
  | Woar
  | Woas
  | Wors
  | Wpay
  | Wpub
  | Wxxx
;;


(** created by ./generator id3v2_tag_unique implementation symbol at 9:23 14 Jul 2012. *)



