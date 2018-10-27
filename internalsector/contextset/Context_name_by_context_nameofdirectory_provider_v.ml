(** {3 Context_name_by_context_nameofdirectory_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_name_by_context_nameofdirectory_provider_v";
   "Register : CONS:Context_name_by_context_nameofdirectory_register_v";
   "Needed-by :"; 
   "Definition : a Context_name is the name of any element of any Context (Sector, Domain, Database, Datafile)"; 
   "Definition : a Context name for a domain is the domain_name without set"; 
   "Definition : a Context name for any nameofdirectory is the nameofdirectory without file extension"; 
   "Example : \"db1figure\" <= \"db1figure\"";
   "Example : \"db1figure\" <= \"db1figurefiles\"";
   "Example : \"entry\"     <= \"entrysector\"";
   "Example : \"figure\"    <= \"figuredata\"";
   "Example : \"figure\"    <= \"figureset\"";
   "Example : \"point_a\"   <= \"point_a.db1\"";
   "Improve : \"if\" in \"set\" should disappear";
   "Author : François Colonna 24 août 2016 at 09:13:16+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;

(** {6 Building} *)

let build nod = 

  let rec apply cur_nod =
    match cur_nod with 
    | cur_nod when String.length cur_nod <= 4 -> cur_nod 
	  
    | cur_nod when String_v.last_n_characters_of_count_of_string 6 cur_nod = "sector" ->
	String_v.substring cur_nod 0 ((String.length cur_nod)-6)
	  
    | cur_nod when String_v.last_n_characters_of_count_of_string 5 cur_nod = "files" ->
	let str = String_v.substring cur_nod 0 ((String.length cur_nod)-5) in
	apply str
	  
    | cur_nod when String_v.last_n_characters_of_count_of_string 5 cur_nod = "input" ->
	String_v.substring cur_nod 0 ((String.length cur_nod)-5)
	  
    | cur_nod when String_v.last_n_characters_of_count_of_string 4 cur_nod = "data" ->
	String_v.substring cur_nod 0 ((String.length cur_nod)-4)
	  
    | cur_nod when String_v.last_n_characters_of_count_of_string 3 cur_nod = "set" ->
	let str = String_v.substring cur_nod 0 ((String.length cur_nod)-3) in
	if (String_v.last_n_characters_of_count_of_string 4 str = "data") 
      ||
	(String_v.last_n_characters_of_count_of_string 5 str = "input")
	then apply str
	else str
	    
    | _ ->
	Error_messages_v.print_fatal_error nam_mod "build"
	  "Directory suffix for Context_name were \"sector\" | \"files\" | \"input\" | \"data\" | \"set\""
	  cur_nod
	  "Check"
  in

  apply nod

;;

(** {6 Storing} *)

let store nod val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Context_name_by_context_nameofdirectory_register_v.store nam_mod nod val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store nod =
  let val_ = build nod in
  store nod val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve nod =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Context_name_by_context_nameofdirectory_register_v.retrieve nam_mod nod in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace nod =
  if Context_name_by_context_nameofdirectory_register_v.is_stored nod
  then retrieve nod
  else build_n_store nod
;;

(** {6 Providing} *)

let provide nod =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace nod in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Context_name_by_context_nameofdirectory_provider_v.ml force on samedi 8 octobre 2016, 18:52:16 (UTC+0200) *)
