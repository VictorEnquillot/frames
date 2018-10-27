
(** {3 The functionalities for a Symbol for a Version.} *)

let nam_cod = "version_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Version_symbol_t.Version_1 -> "Version_1"
  | Version_symbol_t.Version_2 -> "Version_2"
  | Version_symbol_t.Version_2_5 -> "Version_2_5"
;;


(** {6 Upgrading} *)



(** {6 Abbreviating} *)


let version_1 = Version_symbol_t.Version_1;;

let version_2 = Version_symbol_t.Version_2;;

let version_2_5 = Version_symbol_t.Version_2_5;;


(** {6 Making} *)


let make nam s =
  match String.capitalize nam with
  | "Version_1" -> version_1
  | "Version_2" -> version_2
  | "Version_2_5" -> version_2_5
  | _ ->
    failwith "Not_Version_symbol:version_symbol_v:make"
;;


(** {6 Extracting} *)



(** {6 Querying} *)




(** created by ./generator version implementation symbol at 17:43 6 Jun 2012. *)



