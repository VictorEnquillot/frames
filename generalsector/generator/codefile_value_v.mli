(** {3 The functionalities fro a Value for a Codefile.}  *)

val make :
    Key_list_t.key_list ->
      Codefile_value_t.codefile_value
;;
(* the whole file for a given Entity, Category and Symbol. *)

val name_list : 
      Codefile_value_t.codefile_value ->
	string list
;;

val name : 
      Codefile_value_t.codefile_value ->
	string
;;

val print : Format.formatter ->
      Codefile_value_t.codefile_value ->
	unit
;;

(** {6 Writing.} *)

val codefile_file_name_of_key_list :
    Key_list_t.key_list ->
      string
;;

val codefile_filename_of_key_list :
    Key_list_t.key_list ->
      Filename_p.filename
;;

val write : out_channel ->
      Codefile_value_t.codefile_value ->
	unit
;;

val caml_line_value_list_off_codefile_value :
      Codefile_value_t.codefile_value ->
	Caml_line_value_t.caml_line_value list
;;
