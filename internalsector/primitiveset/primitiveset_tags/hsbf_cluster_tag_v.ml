(** {3 A Tag functionalities for a Hsbf_cluster.} *)

let mod_nam = "Hsbf_cluster_tag_v";;

(** {6 Modules.} *)

module Hci_v = Hsbf_cluster_index_v
module Hcs_v = Hsbf_cluster_symbol_v
module HcS_v = Hsbf_cluster_state_v

(** {6 Making.} *)

let make = Tag_v.make;;

(** {6 Converting.} *)

let print = 
  Tag_v.print Hcs_v.print HcS_v.print Hci_v.print 
;;

let name = 
  Tag_v.name Hcs_v.name HcS_v.name Hci_v.name 
;;
