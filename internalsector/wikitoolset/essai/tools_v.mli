val print_fatal_error :
    string -> string -> string -> string -> string -> 'a
;;

val word_list_off_string :
    string -> string list
;;

val right_list_include_of_predicate_of_list :
    (string -> bool) -> string list -> string list 
;;

val extract_list_of_predicate_of_predicate_of_list :
    (string -> bool) -> (string -> bool) -> string list -> string list 
;;

val string_list_of_in_channel :
    in_channel -> string list
;; 

val in_channel_of_file_name :
    string -> 
      in_channel
;;
(** Fails with "No_such_file:tools_v.ml.in_channel_of_file_name" *)

val read_string_list_of_file_name :
    string -> string list
;;

val open_write_of_module_name_of_function_name_of_file_name :
    string -> string -> string -> out_channel
;;

val cut_off_last_element_off_list :
    'a list -> 'a list
;;

val current_directory : unit -> string 
;;

val environment_variable_of_string : string -> string 
;;

val skip_blanks :
    in_channel -> 
      in_channel
;;

val skip_character :
    in_channel -> 
      unit
;;

val not_yet_implemented : string -> string -> 'a;;
