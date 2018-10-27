(** {3 Messages.} *)

let nam_mod = "Tools_messages_v";;


let maximum_stack_depth = 200;;
 
let next_stack_number, decr_stack_number, get_stack_number, reset_stack_number =
  let stack_number = ref (0) in
  (fun () -> incr stack_number; 
    if !stack_number > maximum_stack_depth then
      failwith ("next_stack_number: maximum number of nested function reached")
    else !stack_number),
  (fun () -> stack_number := !stack_number -1;
    if !stack_number < 0 then
      failwith ("decr_stack_number: < 0 number of nested functions !")
    else ()),
  (fun () -> !stack_number),
  (fun () -> stack_number := 0)
  ;;

let tirets  =
  let s = String.make maximum_stack_depth '-' in
   s.[0] <- '+';
  for n = 0 to ((maximum_stack_depth-1)/10) do
      s.[(10 * n)+4] <- '|' ;
      s.[(10 * n)+9] <- '+' ;
    done; 
    s
 ;;

let entering_of_string  mdn her  txt =
  let stn = next_stack_number () in
 
(*  Format.fprintf (Format.formatter_of_out_channel oc_trace) *)
  Format.fprintf Format.err_formatter
    "@[<h>@.@.entering  in %s- %s.%s@.with %s@]@."
    (String.sub tirets 0 stn)  mdn her  txt;
 
(*
  print_string (
      Printf.sprintf
	"\nentering  in %s- %s with >%s<\n"
	(String.sub tirets 0 !stack_number)  her  txt);
  *)  
  String_v.check_empty_of_string_of_name txt "arguments" her;
;;

let exiting_of_string mdn her txt =
  print_string (
  Printf.sprintf
    "\nexiting from %s- %s.%s result is >%s<\n"
    (String.sub tirets 0 (get_stack_number ())) mdn her txt);

  decr_stack_number ()
;;

let entering mdn her ppf =
   Format.fprintf ppf
    "@[<h>@.@.entering  in %s %s.%s@.@]"
    (String.sub tirets 0 (next_stack_number ())) 
    mdn her;
;;

let exiting mdn her ppf =
(* ***
  Format.fprintf (Format.err_formatter)
    "@[<h>@.exiting from %s.%s@.@]"
    mdn her;
**** *)
 Format.fprintf ppf
    "@[<h>@.exiting from %s %s.%s@.@]"
    (String.sub tirets 0 (get_stack_number ())) 
    mdn her;
  decr_stack_number()
;;

let open_info bsn mdn her =
  let fln = bsn ^ ".info"  in
  File_v.open_write fln mdn her
;;

(*let oc_info = open_info "tools_v";;

let oc_trace = open_info "trace" nam_mod "oc_trace";;*)

let oc_trace = open_out "trace.info";;

let write_info bsn txt mdn her =
  let oc = open_info bsn mdn her in
  output_string oc txt;
  flush oc
;;

let oc_info_of_module_name mdn her =
  let oc_inf = open_info mdn mdn her in
  
  Format.fprintf (Format.formatter_of_out_channel oc_inf) 
    "@.@[At %s inside module %s@]@."
    (String_v.string_time ()) 
    mdn;

  oc_inf
;;

let trace_module_name octr_ppf mdn  =
  Format.fprintf octr_ppf 
    "@.@[At %s inside module %s@]@."
    (String_v.string_time ()) 
    mdn;
;;

(** let octr_ppf = Format.formatter_of_out_channel oc_trace;; ****)

let octr_ppf = Format.formatter_of_out_channel stdout;;

let open_error bsn mdn her =
  let fln = (bsn ^ ".err" ) in
  File_v.open_write fln mdn her
;;

(*let oc_error = open_error "error" nam_mod "oc_error";;*)

let oc_error = open_out "error.err";;
