(* $Id:  Exp $ *)

(** {3 Data repository.} *)

(** This module aims at providing data that will be read from the input
    file in the future. *)

val provide_configuration_format : Path_t.path ->  
  Trajectory_formatted_t.format
;;

val provide_configuration_file_name : Path_t.path -> string
;;

val provide_phase_space_file_name : Path_t.path -> string 
;;

val provide_first_step_number : Path_t.path -> int
;;

val provide_last_step_number : Path_t.path -> int
;;

val provide_time_increment : Path_t.path -> float
;;

val provide_initial_velocity : Path_t.path -> float
;;
