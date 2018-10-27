(*
  #use "test_exn.ml";;

*)

let nof_out = "camltk.log" ;;
let och = open_out nof_out ;;

Printexc.record_backtrace true;;     (* bool -> unit *)

(*Printexc.to_string *)             (* exn -> string *)

let backtrace_of_out_channel och =
  let str_btr = Printexc.get_backtrace () in
  Format.fprintf Format.std_formatter "get_backtrace:@.%s@." str_btr
;;

let nof_inp = "camltk.inp" ;;

try
  ignore (open_in nof_inp)
with Sys_error("camltk.inp: No such file or directory") ->
  Printexc.print_backtrace och;
;;

