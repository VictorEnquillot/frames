(** {3 A Tag functionalities for a Entity.} *)

let mod_nam = "Entity_tag_v";;

(** {6 Modules.} *)

module Eni_v = Entity_index_v
module Ens_v = Entity_symbol_v
module EnS_v = Entity_state_v

(** {6 Making.} *)

let make = Tag_v.make;;

(** {6 Converting.} *)

let print = 
  Tag_v.print Ens_v.print EnS_v.print Eni_v.print 
;;

let name = 
  Tag_v.name Ens_v.name EnS_v.name Eni_v.name 
;;
