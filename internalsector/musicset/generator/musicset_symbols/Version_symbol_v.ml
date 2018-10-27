(** {3 Version_symbol_v} *)


let documentation () = 
[
  "Needs: ";
  "Current :CDOS:Version_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming} *)

let name = function
  | Version_symbol_t.Version_1 -> "Version_1"
  | Version_symbol_t.Version_2 -> "Version_2"
  | Version_symbol_t.Version_2_5 -> "Version_2_5"
;;


(** {6 Extracting_topson} *)


(** {6 Extracting_grandson} *)


(** {6 Querying_topson} *)


(** {6 Querying_grandson} *)


(** {6 Upgrading_topson} *)


(** {6 Upgrading_grandson} *)


(** {6 Abbreviating_topson} *)

let version_1 = Version_symbol_t.Version_1;;

let version_2 = Version_symbol_t.Version_2;;

let version_2_5 = Version_symbol_t.Version_2_5;;


(** {6 Abbreviating_grandson} *)


(** {6 Making} *)

let make nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | "version_1" -> version_1
  | "version_2" -> version_2
  | "version_2_5" -> version_2_5
  | _ ->
    failwith "Not_Version_symbol:Version_symbol_v:make"
;;


(** created by ./generator version implementation symbol at 9:23 14 Jul 2012. *)



