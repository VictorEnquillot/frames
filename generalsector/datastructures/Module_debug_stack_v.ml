(** {6 Module_debug_stack} *)

let nam_sta = "Module_debug_stack";;

let stack : string Stack.t =
  Format.fprintf Format.std_formatter "@. --- Creating  Module_debug_stack_v.stack --- @.";
  Stack.create ();
;;

