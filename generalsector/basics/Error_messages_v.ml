(** {3 The Error messages.}  *)

let information = true;;

let string_information wha nam_mod nam_fun nam_exp nam_fnd nam_cur =
  Format.sprintf
    "@.@. --- %s ---\
     @. in module file  >%s<\
     @. and in function >%s<\
     @.   expecting :@.      %s.\
     @.   and found :@.      %s.\
     @.   cure :@.      %s@.@."
     wha nam_mod nam_fun nam_exp nam_fnd nam_cur;
;;

let print_information wha nam_mod nam_fun nam_exp nam_fnd nam_cur =
  Format.fprintf
    Format.err_formatter "%s"
     (string_information wha nam_mod nam_fun nam_exp nam_fnd nam_cur);
;;

let print_error wha nam_mod nam_fun nam_exp nam_fnd nam_cur =
  if information
  then
    print_information wha nam_mod nam_fun nam_exp nam_fnd 
      (Format.sprintf "%s@.  set information = false end -- to suppress this message@." nam_cur)
  else ()
;;

let string_fatal_error nam_mod nam_fun nam_exp nam_fnd nam_cur =
  Printexc.record_backtrace true;
  let str = 
    Format.sprintf "%s@.%s" 
      (string_information "Fatal error " nam_mod nam_fun nam_exp nam_fnd nam_cur)
      (Format.sprintf "Backtrace:@.%s@." (Printexc.get_backtrace ()) )
  in
  flush_all (); 
  str
;;

let print_fatal_error nam_mod nam_fun nam_exp nam_fnd nam_cur =
  Printexc.record_backtrace true;
  print_information "Fatal error" nam_mod nam_fun nam_exp nam_fnd nam_cur;
  (Format.fprintf Format.std_formatter "Backtrace:@.%s@." (Printexc.get_backtrace ()) );
  flush_all (); 
  assert false;
;;

let print_lexical_error nam_mod nam_fun nam_exp nam_fnd nam_cur =
  Printexc.record_backtrace true;
  print_information "Input lexical error" nam_mod nam_fun nam_exp nam_fnd nam_cur;
  (Format.fprintf Format.std_formatter "Backtrace:@.%s@." (Printexc.get_backtrace ()) );
  flush_all (); 
  assert false;
;;

let print_syntax_error nam_mod nam_fun nam_exp nam_fnd nam_cur =
  Printexc.record_backtrace true;
  print_information "Input syntax error" nam_mod nam_fun nam_exp nam_fnd nam_cur;
  (Format.fprintf Format.std_formatter "Backtrace:@.%s@." (Printexc.get_backtrace ()) );
  flush_all (); 
  assert false;
;;

let print_warning nam_mod nam_fun message =
  Format.fprintf
    Format.err_formatter
    "@.@.--- Warning ---\
     @. in module file  >%s<\
     @. and in function >%s<\
     @.   %s@.@."
     nam_mod nam_fun message;
;;

