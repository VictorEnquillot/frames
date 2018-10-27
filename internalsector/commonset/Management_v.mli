val stack_dump : (string * int) Stack.t -> unit;;

(* val is_stackable_of_module_name : string -> bool;;*)

val is_set_any_what_of_module_name : string -> bool;;

val is_set_cpu_of_module_name : string -> bool;;

val is_set_debug_of_module_name : string -> bool;;

val is_set_trace_of_module_name_of_function_name : string -> string -> bool;;

val is_set_verbose_of_module_name : string -> bool;;

val current_module_name : string list -> string;;

val current_file_name : string list -> string;;

val current_register_name : string list -> string;;

val debug_what_string : string -> string -> string -> string -> unit;;

val string_for_exiting_level_of_current_module_name : string -> string;;

(* val entering_of_current_module_name_of_message : string -> string -> unit;; *)

val entering_of_module_name_of_function_name : string -> string -> Unix.process_times;;

val string_for_exiting_level_of_current_module_name : string -> string;;

val exiting_of_process_times_of_module_name_of_function_name : Unix.process_times -> string -> string -> unit;;

val local_module_name : string -> string;;

