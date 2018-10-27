(* $Id:  Exp $ *)

(** {3 Data repository.} *)

    file in the future. *)

let nam_cod = "Provider_data_v";;
let oc_trace = Tools_v.oc_trace;;
let octr_ppf = Format.formatter_of_out_channel oc_trace;;

let provide_configuration_format pth = 
  let here_ = "provide_configuration_format"
  in Tools_v.entering nam_cod here_ octr_ppf ;

  let result = Trajectory_formatted_t.Pdb

  in
      Tools_v.exiting nam_cod here_ octr_ppf ;
  result
;;

let provide_configuration_file_name pth = 
  let here_ = "provide_configuration_file_name"
  in Tools_v.entering nam_cod here_ octr_ppf ;
  let result = 

    (Path_v.top_name pth) ^ ".pdb" 

  in
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.%s: result file name >%s<@]@." 
          nam_cod here_ result;
      Tools_v.exiting nam_cod here_ octr_ppf ;
  result
;;

let provide_phase_space_file_name pth = 
  let here_ = "provide_phase_space_file_name"
  in Tools_v.entering nam_cod here_ octr_ppf ;
  let result = 

    (Path_v.top_name pth) ^ ".phs" 

  in
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.%s:@ result file name >%s<@]@." 
          nam_cod here_ result;
      Tools_v.exiting nam_cod here_ octr_ppf ;
  result
;;

let provide_first_step_number pth = 
  let here_ = "provide_first_step_number" 
  in Tools_v.entering nam_cod here_ octr_ppf ;
  let result =

  let nam = Path_v.top_name pth in
    match String.sub nam 0 3 with 
      | "Mol" | "Coffer" | "Sim" | "10_s" | "Top" -> 0
      | str -> begin
	  Format.fprintf (Format.err_formatter) 
	    "@.@[<hov>%s.provide_first_step_number: --- Fatal Error ---@.\
            unknown Top name >%s<@.\
            Please add it to the menu above. path:@ %a@]@." 
            nam_cod str Path_v.print pth;       
	    assert false;
      end

  in 
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.%s:@ result first step >%i<@]@." 
          nam_cod here_ result;
      Tools_v.exiting nam_cod here_ octr_ppf ;
 
  result
;;

let provide_last_step_number pth = 
  let here_ = "provide_last_step_number" 
  in Tools_v.entering nam_cod here_ octr_ppf ;
  Format.fprintf octr_ppf 
    "@.@[<hov>%s.%s: path %a@]@." 
    nam_cod here_ Path_v.print pth;
  let result =

  let (grn, psm, idx) = Path_v.extract_level_of_grain  Path_t.Simulation pth in 
    match grn, psm with 
    | (Path_t.Simulation, 
       Path_t.Simulation_symbol  Simulation_symbol_t.Sim_nsys_coffer_3h2) -> 10

    | (Path_t.Simulation, 
       Path_t.Simulation_symbol  Simulation_symbol_t.Sim_nsys_coffer_one_mole) -> 10

    | (Path_t.Simulation, _) -> begin
	  Format.fprintf (Format.err_formatter) 
	    "@.@[<hov>%s.provide_last_step_number: --- Fatal Error ---@.\
            unknown Simulation with path_symbol >%a<@.\
            Please add it to the menu above. path:@ %a@]@." 
            nam_cod  Path_v.print_path_symbol psm Path_v.print pth;       
	    assert false;
      end

    | (g, _) -> begin
	  Format.fprintf (Format.err_formatter) 
	    "@.@[<hov>%s.provide_last_step_number: --- Fatal Error ---@.\
            Simulation Grain expected and not >%a< grain@.\
            Please check path building. path:@ %a@]@." 
            nam_cod  Path_v.print_grain g Path_v.print pth;       
	    assert false;
      end
  in 
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.%s:@ result system_number >%i<@]@." 
          nam_cod here_ result;
      Tools_v.exiting nam_cod here_ octr_ppf ;
  result
;;

let provide_time_increment pth = 
  let here_ = "provide_time_increment" 
  in Tools_v.entering nam_cod here_ octr_ppf ;
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.%s:@ path %a@]@." 
          nam_cod here_ Path_v.print pth;
  let result =

  let nam = Path_v.top_name pth in
    match String.sub nam 0 3 with 
      | "Mol" | "Coffer" | "Sim" | "10_" -> 0.001
      | str -> failwith (
	  Format.fprintf Format.str_formatter  
        "%s.provide_first_step_number: --- Fatal_Error ---@.\
        unknown Top name >%s<@." 
        nam_cod str; Format.flush_str_formatter ()) 

  in 
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.%s:@ result dt >%f<@]@." 
          nam_cod here_ result;
      Tools_v.exiting nam_cod here_ octr_ppf ;
  result
;;

let provide_initial_velocity pth = 
  let here_ = "provide_initial_velocity" 
  in Tools_v.entering nam_cod here_ octr_ppf ;
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.%s:@ path %a@]@." 
          nam_cod here_ Path_v.print pth;
  let result =

  let nam = Path_v.top_name pth in
    match String.sub nam 0 3 with 
      | "Mol" | "Coffer" | "Sim" | "10_" -> 10.0
      | str -> failwith (
	  Format.fprintf Format.str_formatter  
        "%s.provide_initial_velocity: --- Fatal_Error ---@.\
        unknown Top name >%s<@." 
        nam_cod str; Format.flush_str_formatter ()) 

  in 
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.%s:@ result dt >%f<@]@." 
          nam_cod here_ result;
      Tools_v.exiting nam_cod here_ octr_ppf ;
  result
;;
