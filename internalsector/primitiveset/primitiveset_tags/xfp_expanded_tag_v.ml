(** {3 A Tag functionalities for a Xfp_expanded.} *)

let mod_nam = "Xfp_expanded_tag_v";;

(** {6 Modules.} *)

module Xxi_v = Xfp_expanded_index_v
module Xxs_v = Xfp_expanded_symbol_v
module XxS_v = Xfp_expanded_state_v

(** {6 Making.} *)

let make = Tag_v.make;;

(** {6 Converting.} *)

let print = 
  Tag_v.print Xxs_v.print XxS_v.print Xxi_v.print 
;;

let name = 
  Tag_v.name Xxs_v.name XxS_v.name Xxi_v.name 
;;
