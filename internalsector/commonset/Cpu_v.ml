let nam_mod = "Cpu_v.ml";;

let current_execution_cpu () =
  Unix.times ();;
;;

let current_user_cpu exe_cpu =
  exe_cpu.Unix.tms_utime
;;

let current_system_cpu exe_cpu =
  exe_cpu.Unix.tms_stime
;;

let elapsed_execution_cpu pre_cpu =
  let cur_cpu =  Unix.times () in
  {Unix.tms_utime = cur_cpu.Unix.tms_utime -. pre_cpu.Unix.tms_utime;
   Unix.tms_stime = cur_cpu.Unix.tms_stime -. pre_cpu.Unix.tms_stime;
   Unix.tms_cutime = 0.;
   Unix.tms_cstime = 0.;
 }
;;

let print_cpu pre_cpu nam_fun nam_mod =
  let ela_cpu = elapsed_execution_cpu pre_cpu in
  let use_dcp = current_user_cpu ela_cpu in
  Format.fprintf Format.std_formatter "@.Cpu %f for %s in %s@." use_dcp nam_fun nam_mod;
;;

