(** {3 Domaininput_fullnameofdirectory_by_domaininput_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Domaininput_fullnameofdirectory_by_domaininput_nameofdirectory_provider_v";
   "Needs : CONS:Entrysector_fullnameofdirectory_by_unit_provider_v";
   "Example : .../frames/entrysector/userinput";
   "Author : François Colonna 20 juillet 2016 at 11:55:35+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Preparing} *)

 let is_inputdirectory_of_nameofdirectory nod =
  if String.length nod > 5
  then
    String_v.last_n_characters_of_count_of_string 5 nod = "input"
  else
    false
;; 

(** {6 Building} *)

let build nod_din =
  let nam_fun = "build" in

  if not (is_inputdirectory_of_nameofdirectory nod_din)
  then
    Error_messages_v.print_fatal_error __LOC__ nam_fun
      (Format.sprintf ">%s< were a Domaininput Directory (ends with \"input\"" nod_din)
      "it is NOT"
      "Check"
  else
    begin
      if File_v.is_fullnameoffile_of_string nod_din
      then
	Error_messages_v.print_fatal_error __LOC__ nam_fun
	  (Format.sprintf ">%s< were a Nameofdirectory" nod_din)
	  "it starts with a slash"
	  "Check"
      else
	begin
	  let fnd_ens = Entrysector_fullnameofdirectory_by_unit_provider_v.provide () in
	  let fnd_dfi = fnd_ens ^ "/" ^ nod_din in
	  
	  if Sys.file_exists fnd_dfi
	  then fnd_dfi
	  else 
	    begin
	      (Format.fprintf Format.std_formatter "Directory : %s@." fnd_dfi);
	      failwith (Format.sprintf "Not_a_directory:%s.%s" nam_mod nam_fun)
	    end
	end
    end
;;


(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Domaininput_fullnameofdirectory_by_domaininput_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:55 (UTC+0200) *)
