(** {3 Context_name_list_by_unit_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Context_name_list_by_unit_provider_v";
   "Needs : CONS:Sector_name_list_by_unit_provider_v";
   "Needs : CONS:Domain_name_list_by_unit_provider_v";
   "Needs : CONS:Database_name_list_by_unit_provider_v";
   "Needs : CONS:Databox_name_list_by_unit_provider_v";
   "Needs : CONS:Inputbase_name_list_by_unit_provider_v";
   "Needs : CONS:Inputbox_name_list_by_unit_provider_v";
   "Register : CONS:Context_name_list_by_unit_register_v";
   "Definition : a Context_name is Context Nameofdirectory without suffix \"context\"";
   "Example : [\"entry\"; \"external\"; \"general\"; \"generator\"; \"internal\"; \"product\"]";
   "Invariant : any name is unique";
   "Author : François Colonna 24 août 2016 at 10:39:05+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build () =
  let nam_sec_l = Sector_name_list_by_unit_provider_v.provide () in
  let nam_dom_l = Domain_name_list_by_unit_provider_v.provide () in
  let nam_dba_l = Database_name_list_by_unit_provider_v.provide () in
  let nam_dbo_l = Databox_name_list_by_unit_provider_v.provide () in
  let nam_iba_l = Inputbase_name_list_by_unit_provider_v.provide () in
  let nam_ibo_l = Inputbox_name_list_by_unit_provider_v.provide () in
  let nam_con_nsl = nam_sec_l @ nam_dom_l @ nam_dba_l @ nam_dbo_l @ nam_iba_l @ nam_ibo_l in 
  let nam_con_l = List.sort String.compare nam_con_nsl in
  if List_v.is_once_list_of_list nam_con_l
  then nam_con_l
  else
    begin
      let nam_con_nol = 
	List.filter (fun e -> not (List_v.is_once_of_element_of_list e nam_con_l)) nam_con_l 
      in
      Error_messages_v.print_fatal_error nam_mod "build"
	"there were no duplicated Context_name in list"
	(Format.sprintf "these elements are duplicated:@.    %s" 
	   (List_v.name_in_column (fun s->s) nam_con_nol)
	)
	"Check"
    end
;;

(** {6 Storing} *)

let store () val_ =
  let nam_fun = "store" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  Context_name_list_by_unit_register_v.store nam_mod () val_;
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
;;

(** {6 Building and Storing} *)

let build_n_store () =
  let val_ = build () in
  store () val_;
  val_
;;

(** {6 Retrieving} *)

let retrieve () =
  let nam_fun = "retrieve" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = Context_name_list_by_unit_register_v.retrieve nam_mod () in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(** {6 Providing without Trace} *)

let provide_without_trace () =
  if Context_name_list_by_unit_register_v.is_stored ()
  then retrieve ()
  else build_n_store ()
;;

(** {6 Providing} *)

let provide () =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = provide_without_trace () in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_with_register_v.ml *)
(* done with do_provider_with_register.sh Context_name_list_by_unit_provider_v.ml force on samedi 8 octobre 2016, 18:52:17 (UTC+0200) *)
