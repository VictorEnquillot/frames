(** {3 The functionalities for a Value for a Caml Paragraph.}  *)

(** {6 Making.} *)

val make :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      Caml_paragraph_value_t.caml_paragraph_value
;;

(*
val path_constructor_son_list :
    Constructor_path_t.constructor_path ->
      Constructor_path_t.constructor_path list
;;²
*)
(** {6 Displaying.} *)

val name_list : 
      Caml_paragraph_value_t.caml_paragraph_value ->
	string list
;;

val name : 
      Caml_paragraph_value_t.caml_paragraph_value ->
	string 
;;

val print : Format.formatter ->
      Caml_paragraph_value_t.caml_paragraph_value ->
	unit
;;

(** {6 Writing.} *)

val caml_paragraph_file_name_of_caml_paragraph_symbol :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      string
;;

val caml_paragraph_filename_of_caml_paragraph_symbol :
    Caml_paragraph_symbol_t.caml_paragraph_symbol ->
      Filename_p.filename
;;

val write : out_channel ->
      Caml_paragraph_value_t.caml_paragraph_value ->
	unit
;;

(** {6 Extracting.} *)

val caml_line_value_list_off_caml_paragraph_value :
    Caml_paragraph_value_t.caml_paragraph_value ->
      Caml_line_value_t.caml_line_value list
;;
