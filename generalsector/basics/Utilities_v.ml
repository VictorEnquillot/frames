(** {6 Functions} *)

let not_yet_implemented m s =
  failwith
    (Format.sprintf "%s.%s is not yet implemented, please report." m s) 
;;

let obsolete_module old_mod new_mod =
    (Format.fprintf Format.std_formatter "@.Warning :@.  module %s is Obsolete@.  please use %s instead@." old_mod new_mod) 
;;

let obsolete_function nam_mod old_fun new_fun =
    (Format.fprintf Format.std_formatter "@.Warning :@.  function %s.%s is Obsolete@.  please use %s instead@." nam_mod old_fun new_fun) 
;;

let failure_of_message_of_code_name_of_function_name mes nam_mod nam_fun =
  Failure ( (String.capitalize_ascii mes) ^ ":" ^ nam_mod ^ "." ^ nam_fun)
;;

let failwith_of_message_of_code_name_of_function_name mes nam_mod nam_fun =
  failwith ( (String.capitalize_ascii mes) ^ ":" ^ nam_mod ^ "." ^ nam_fun)
;;
 
let identity s = s;;


let wallclock_time () = Unix.localtime (Unix.time ());;

let monthes = [|"Jan"; "Feb"; "Mar"; "Apr"; "May"; "Jun"; "Jul"; "Aug"; "Sep"; "Oct"; "Nov"; "Dec"|];;

let date () =
    Format.sprintf "%i:%i:%i on %i %s %i" 
      (wallclock_time ()).Unix.tm_hour
      (wallclock_time ()).Unix.tm_min 
      (wallclock_time ()).Unix.tm_sec  
      (wallclock_time ()).Unix.tm_mday 
      (monthes.((wallclock_time ()).Unix.tm_mon))
      (1900 +((wallclock_time ()).Unix.tm_year)) 
;;

let cpu_time () = Unix.times ();;

let cpu_user_time () = (cpu_time ()).Unix.tms_utime;;
let cpu_system_time () = (cpu_time ()).Unix.tms_stime;;
let cpu_children_user_time () = (cpu_time ()).Unix.tms_cutime;;
let cpu_children_system_time () = (cpu_time ()).Unix.tms_cstime;;

let cpu () = Format.sprintf "user %f system %f" (cpu_user_time ()) (cpu_system_time ());;


