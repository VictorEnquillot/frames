(** {3 A Tag functionalities for a Xfp_single.} *)

let mod_nam = "Xfp_single_tag_v";;

(** {6 Modules.} *)

module Xsi_v = Xfp_single_index_v
module Xss_v = Xfp_single_symbol_v
module XsS_v = Xfp_single_state_v

(** {6 Making.} *)

let make = Tag_v.make;;

(** {6 Converting.} *)

let print = 
  Tag_v.print Xss_v.print XsS_v.print Xsi_v.print 
;;

let name = 
  Tag_v.name Xss_v.name XsS_v.name Xsi_v.name 
;;
