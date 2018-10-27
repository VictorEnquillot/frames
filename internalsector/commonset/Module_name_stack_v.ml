(** {6 Module_name_stack} *)

let stack : (string * int) Stack.t =
  Format.fprintf Format.std_formatter "@. --- Creating  Module_name_stack_v.stack --- @.";
  Stack.create ();
;;

(* (name, index) *)

