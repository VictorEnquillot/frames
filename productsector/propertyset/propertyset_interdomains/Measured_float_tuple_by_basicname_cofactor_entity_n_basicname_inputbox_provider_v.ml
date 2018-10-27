(** {3 Measured_float_tuple_by_basicname_cofactor_entity_n_basicname_inputbox_provider_v} *)

(** {6 Documenting_for_envelope} *)

let documentation () = 
  [
   "Current : IPRO:Measured_float_tuple_by_basicname_cofactor_entity_n_basicname_inputbox_provider_v";
   "Needs : IPRO:Elementary_envelopee_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v";
   "Needed-by : ";
   "What-is-it : IPRO:Measured_float_tuple for an Operator Cofactor (Point or Vector)";
   "How-is-it-done : by converting non homogeneous coordinates to homogeneous for future calculation";
   "Author : François Colonna 19 juin 2017 at 09:19:18+02:00 tupled";
   "Author : François Colonna 23 juin 2017 at 15:54:13+02:00 no list for Cofactor";
   "License : This code is available under the Creative Commons License https://creativecommons.org/licenses/by-sa/3.0/legalcode.fr";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)
 
let build (bna_cof_ent, bna_ibo) =

  let bna_var_ext = 
    let nam_cof_ent = Basicname_v.string_off bna_cof_ent in
    Basicname_v.basicname_variable_external_of_string nam_cof_ent
  in

  let flo_mtl = 
    Measured_float_tuple_list_by_basicname_variable_external_n_basicname_inputbox_provider_v.provide 
      (bna_var_ext, bna_ibo) 

  in

  match List.length flo_mtl with 
  | 0 ->	
     Error_messages_v.print_fatal_error __LOC__ "build"
	(Format.sprintf "Measured_float_tuple_list were NOT EMPTY for Cofactor %s" (Basicname_v.string_off bna_var_ext)) 
      (Format.sprintf "list is:@.   %s" (List_v.name_in_column Measured_float_tuple_v.fullname flo_mtl))
	"Check"
  | 1 -> List.hd flo_mtl 
  | 2 -> (* Improve *)
      begin
	let flo_mt_1 = List.nth flo_mtl 0 in
	let flo_mt_2 = List.nth flo_mtl 1 in
	Measured_float_tuple_v.difference flo_mt_2 flo_mt_1
      end
  | n ->
      Error_messages_v.print_fatal_error __LOC__ "build"
	(Format.sprintf "Measured_float_tuple_list were a one element list for Cofactor %s" (Basicname_v.string_off bna_var_ext)) 
	(Format.sprintf "list is:@.   %s" (List_v.name_in_column Measured_float_tuple_v.fullname flo_mtl))
	"Check"
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;
