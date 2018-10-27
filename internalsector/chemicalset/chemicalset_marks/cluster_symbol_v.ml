(** {3 The functionalities for a Symbol for a Cluster.} *)

let nam_cod = "cluster_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Cluster_symbol_t.Cluster_fromid _ -> "cluster_fromid"
  | Cluster_symbol_t.Protein_fromid _ -> "protein_fromid"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let cluster_fromid s = Cluster_symbol_t.Cluster_fromid s;;

let protein_fromid s = Cluster_symbol_t.Protein_fromid s;;


(** {6 Making} *)


let make s = function
  | "cluster_fromid" -> cluster_fromid s
  | "protein_fromid" -> protein_fromid s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)



(** {6 Querying} *)



(** created by ./generator cluster implementation symbol at 15:2 13 Mar 2012. *)



