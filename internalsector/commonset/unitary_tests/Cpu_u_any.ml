open Make_test_v;;

testing "Cpu_v with
    Cpu_u_any.ml";;

(* toplevel 
   #use "Cpu_u_any.ml";; 

*)

let pre_cpu = Cpu_v.current_execution_cpu ();;

let cur_tim = Unix.time ();; 

(* Return the current time since 00:00:00 GMT, Jan. 1, 1970, in seconds.*)

let gmt_tim = Unix.gmtime cur_tim;;  

(* Convert a time in seconds, as returned by Unix.time, into a date and a time. Assumes UTC (Coordinated Universal Time), also known as GMT.*)

let cur_sec = gmt_tim.Unix.tm_sec;;

let gmt_plus = Unix.mktime gmt_tim;; 

(* Convert a date and time, specified by the tm argument, into a time in seconds, as returned by Unix.time. The tm_isdst, tm_wday and tm_yday fields of tm are ignored. Also return a normalized copy of the given tm record, with the tm_wday, tm_yday, and tm_isdst fields recomputed from the other fields, and the other fields normalized (so that, e.g., 40 October is changed into 9 November). The tm argument is interpreted in the local time zone.  *) 

let exe_cpu = Unix.times ();;  

(* Return the execution times of the process. *)

let use_cpu = exe_cpu.Unix.tms_utime;;

let sys_cpu = exe_cpu.Unix.tms_stime;;

(* Unix.gettimeofday *) 

let cur_tim = Unix.gettimeofday ();;


let gmt_tim = Unix.gmtime cur_tim;;  

let cur_sec = gmt_tim.Unix.tm_sec;;
let gmt_plus = Unix.mktime gmt_tim;; 

(* Unix.times *) 
let exe_cpu = Unix.times ();;  
let use_cpu = exe_cpu.Unix.tms_utime;;
let sys_cpu = exe_cpu.Unix.tms_stime;;

let flo =
  let g = 1. in
  for i = 0 to 1000 do
    for j = 0 to 1000 do
      let f = Random.float 1. in
      ignore (f +. g) 
    done
  done
;;    

let ela_cpu = Cpu_v.elapsed_execution_cpu exe_cpu;;

let use_dcp = Cpu_v.current_user_cpu ela_cpu;;

let sys_dcp = Cpu_v.current_system_cpu ela_cpu;;

test_number 1 (
use_dcp > 0.7
);;

