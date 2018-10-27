val open_info : string -> string -> string -> 
  out_channel 
;;
(** [let c = open_info s;;]

    [s] is a [string] used as basename for the file suffixed by ".info".
    [c] is an [out_channel] opend in append mode. *)

val write_info : string -> string -> string -> string -> 
  unit
;;
(** [write_info b s;;]

    [b] is a [string] used as basename for the file suffixed by ".info".
    [s] is a [string] written in append mode. *)
 
val oc_info_of_module_name : string -> string ->  
  out_channel
;;

val oc_error : out_channel
;;

val oc_trace : out_channel
;;

val trace_module_name : Format.formatter -> string ->
  unit
;;
(** print module name and time when entering it *)

val octr_ppf : Format.formatter
;;

val entering : string -> string -> Format.formatter ->
  unit
;;

val exiting : string -> string -> Format.formatter ->
  unit
;;
