(** {3 Unix_v.ml} *)

let nam_mod = "Unix_v";;

(** Directory *)

let change_working_directory = Unix.chdir;;

let create_directory = Unix.mkdir;;

let remove_directory_of_string = Unix.rmdir;;
