(** {3 Basicname_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : CONS:Basicname_v";
   "Needs : CONS:Check_is_database_name_by_name_provider_v";
   "Needs : CONS:Check_is_databox_name_by_name_provider_v";
   "Needs : CONS:Check_is_domain_name_by_name_provider_v";
   "Needs : CONS:Check_is_inputbase_name_by_name_provider_v";
   "Needs : CONS:Check_is_inputbox_name_by_name_provider_v";
   "Needs : CONS:Check_is_sector_name_by_name_provider_v";
   "What-is-it : Any Basic name. To type names";
   "Author : François Colonna 28 mars 2017 at 09:46:33+02:00";
   "Author : François Colonna 09 avril 2017 at 13:12:33+02:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
let basicname_coordinate_of_string str =
  (* Check_is_coordinate_name_by_name_provider_v.provide str; *)
  Basicname_t.Coordinate str
;;

let basicname_cofactor_entity_of_string str =
  (* Check_is_cofactor_entity_name_by_name_provider_v.provide str; *)
  Basicname_t.Cofactor_entity str
;;

let basicname_database_of_string str =
  Check_is_database_name_by_name_provider_v.provide str;
  Basicname_t.Database str
;;

let basicname_databox_of_string str =
  Check_is_databox_name_by_name_provider_v.provide str;
  Basicname_t.Databox str
;;

let basicname_domain_of_string str =
  Check_is_domain_name_by_name_provider_v.provide str;
  Basicname_t.Domain str
;;

let basicname_external_context_of_string str =
  (* Check_is_external_name_by_context_provider_v.provide str; *)
  Basicname_t.External_context str
;;

let basicname_external_name_of_string str =
  (* Check_is_external_name_by_name_provider_v.provide str; *)
  Basicname_t.External_name str
;;

let basicname_figure_of_string str =
  (* Check_is_figure_name_by_name_provider_v.provide str; *)
  Basicname_t.Figure str
;;

let basicname_inputbase_of_string str =
  Check_is_inputbase_name_by_name_provider_v.provide str;
  Basicname_t.Inputbase str
;;

let basicname_inputbox_of_string str =
  Check_is_inputbox_name_by_name_provider_v.provide str;
  Basicname_t.Inputbox str
;;

let basicname_ondomain_of_string str =
  (* Check_is_ondomain_name_by_name_provider_v.provide str; *)
  Basicname_t.Ondomain str
;;

let basicname_operation_of_string str =
  (* Check_is_operation_name_by_name_provider_v.provide str; *)
  Basicname_t.Operation str
;;

let basicname_parameter_of_string str =
  (* Check_is_parameter_name_by_name_provider_v.provide str; *)
  Basicname_t.Parameter str
;;

let basicname_sector_of_string str =
  Check_is_sector_name_by_name_provider_v.provide str;
  Basicname_t.Sector str
;;

let basicname_skeleton_of_string str =
  (* Check_is_skeleton_name_by_name_provider_v.provide str; *)
  Basicname_t.Skeleton str
;;

let basicname_target_operand_of_string str =
  (* Check_is_target_operand_by_name_provider_v.provide str; *)
  Basicname_t.Target_operand str
;;

let basicname_target_operator_of_string str =
  (* Check_is_target_operator_by_name_provider_v.provide str; *)
  Basicname_t.Target_operator str
;;

let basicname_variable_of_string str =
  Basicname_t.Variable str
;;

let basicname_variable_context_of_string str =
  Basicname_t.Variable_context str
;;

let basicname_variable_external_of_string str =
  Basicname_t.Variable_external str
;;

let basicname_variable_operator_of_string str =
  Basicname_t.Variable_operator str
;;

let basicname_variable_target_of_string str =
  Basicname_t.Variable_target str
;;

let basicname_vertex_of_string str =
  Basicname_t.Vertex str
;;

let make_of_what_of_string wha str =
  match wha with
  | "coordinate" -> basicname_coordinate_of_string str
  | "cofactor_entity" -> basicname_cofactor_entity_of_string str
  | "database" -> basicname_database_of_string str
  | "databox" -> basicname_databox_of_string str
  | "domain" -> basicname_domain_of_string str
  | "external_context" -> basicname_external_context_of_string str
  | "external_name" -> basicname_external_name_of_string str
  | "figure" -> basicname_figure_of_string str
  | "inputbase" -> basicname_inputbase_of_string str
  | "inputbox" -> basicname_inputbox_of_string str
  | "ondomain" -> basicname_ondomain_of_string str
  | "operation" -> basicname_operation_of_string str
  | "parameter" -> basicname_parameter_of_string str
  | "sector" -> basicname_sector_of_string str
  | "skeleton" -> basicname_skeleton_of_string str
  | "target_operand" -> basicname_target_operand_of_string str
  | "target_operator" -> basicname_target_operator_of_string str
  | "variable" -> basicname_variable_of_string str
  | "variable_context" -> basicname_variable_context_of_string str
  | "variable_external" -> basicname_variable_external_of_string str
  | "variable_operator" -> basicname_variable_operator_of_string str
  | "variable_target" -> basicname_variable_target_of_string str
  | "vertex" -> basicname_vertex_of_string str
  | _ ->     
      Error_messages_v.print_fatal_error __LOC__ "make_of_what_of_string"
      "First argument What were one of \"inputbox\" | \"variable\" | \"vertex\"" 
      (Format.sprintf "What is >%s< with value >%s<" wha str) 
      "Check"
;;

let name = function 
  | Basicname_t.Coordinate s -> "coordinate"
  | Basicname_t.Cofactor_entity s -> "cofactor_entity"
  | Basicname_t.Database s -> "database"
  | Basicname_t.Databox s -> "databox"
  | Basicname_t.Domain s -> "domain"
  | Basicname_t.External_name s -> "external_name"
  | Basicname_t.External_context s -> "external_context"
  | Basicname_t.Figure s -> "figure"
  | Basicname_t.Inputbase s -> "inputbase"
  | Basicname_t.Inputbox s -> "inputbox"
  | Basicname_t.Operation s -> "operation"
  | Basicname_t.Ondomain s -> "ondomain"
  | Basicname_t.Parameter s -> "parameter"
  | Basicname_t.Sector s -> "sector"
  | Basicname_t.Skeleton s -> "skeleton"
  | Basicname_t.Target_operand s -> "target_operand"
  | Basicname_t.Target_operator s -> "target_operator"
  | Basicname_t.Variable s -> "variable"
  | Basicname_t.Variable_external s -> "variable_external"
  | Basicname_t.Variable_context s -> "variable_context"
  | Basicname_t.Variable_operator s -> "variable_operator"
  | Basicname_t.Variable_target s -> "variable_target"
  | Basicname_t.Vertex s -> "vertex"
;;

let string_off = function 
  | Basicname_t.Coordinate s -> s
  | Basicname_t.Cofactor_entity s -> s
  | Basicname_t.Database s -> s 
  | Basicname_t.Databox s -> s
  | Basicname_t.Domain s -> s
  | Basicname_t.External_context s -> s
  | Basicname_t.External_name s -> s
  | Basicname_t.Figure s -> s
  | Basicname_t.Inputbase s -> s
  | Basicname_t.Inputbox s -> s
  | Basicname_t.Ondomain s -> s
  | Basicname_t.Operation s -> s
  | Basicname_t.Parameter s -> s
  | Basicname_t.Sector s -> s
  | Basicname_t.Skeleton s -> s
  | Basicname_t.Target_operand s -> s
  | Basicname_t.Target_operator s -> s
  | Basicname_t.Variable s -> s
  | Basicname_t.Variable_context s -> s
  | Basicname_t.Variable_external s -> s
  | Basicname_t.Variable_operator s -> s
  | Basicname_t.Variable_target s -> s
  | Basicname_t.Vertex s -> s
;;

let fullname bna =
  let nam = name bna in
  let sof = string_off bna in
  Format.sprintf "Basicname_t.%s %s" (String.capitalize nam) sof
;;

let longname bna =
  let nam = name bna in
  let sof = string_off bna in
  Format.sprintf "Basicname_t.%s %s" (String.capitalize nam) sof
;;

let stringedname bna = 
  Format.sprintf "%s %s" (name bna) (string_off bna)
;;

let basicname_cofactor_entity_of_basicname_variable bna_var =
  let nam_var = string_off bna_var in
  basicname_cofactor_entity_of_string nam_var
;;

let basicname_variable_of_basicname_cofactor_entity bna_cof_ent =
  let nam_cof_ent = string_off bna_cof_ent in
  basicname_variable_of_string nam_cof_ent
;;

let basicname_variable_external_of_basicname_variable bna_var =
  let nam_var = string_off bna_var in
  basicname_variable_external_of_string nam_var
;;

let basicname_variable_of_basicname_variable_external bna_var_ext =
  let nam_var_ext = string_off bna_var_ext in
  basicname_variable_of_string nam_var_ext
;;

let basicname_variable_context_of_basicname_external_context bna_ext_con =
  let nam_ext_con = string_off bna_ext_con in
  basicname_variable_context_of_string nam_ext_con
;;

let basicname_external_context_of_basicname_variable_context bna_var_con =
  let nam_var_con = string_off bna_var_con in
  basicname_external_context_of_string nam_var_con
;;

let basicname_variable_of_basicname_variable_operator bna_var_ope =
  let nam_var_ope = string_off bna_var_ope in
  basicname_variable_of_string nam_var_ope
;;

let basicname_variable_operator_of_basicname_variable bna_var =
  let nam_var = string_off bna_var in
  basicname_variable_operator_of_string nam_var
;;

let basicname_variable_of_basicname_variable_context bna_var_con =
  let nam_var_con = string_off bna_var_con in
  basicname_variable_of_string nam_var_con
;;

let basicname_variable_context_of_basicname_variable bna_var =
  let nam_var = string_off bna_var in
  basicname_variable_context_of_string nam_var
;;

let basicname_variable_of_basicname_variable_target bna_var_tar =
  let nam_var_tar = string_off bna_var_tar in
  basicname_variable_of_string nam_var_tar
;;

let basicname_variable_target_of_basicname_variable bna_var =
  let nam_var = string_off bna_var in
  basicname_variable_target_of_string nam_var
;;

let basicname_variable_of_basicname_target_operand bna_var_tar =
  let nam_var_tar = string_off bna_var_tar in
  basicname_variable_of_string nam_var_tar
;;

let basicname_target_operand_of_basicname_variable bna_var =
  let nam_var = string_off bna_var in
  basicname_target_operand_of_string nam_var
;;

(* Check *)

let is_basicname_cofactor_entity_of_basicname = function
  | Basicname_t.Cofactor_entity s -> true
  | bna -> failwith (Format.sprintf "Not_a_Basicname_t.Cofactor_entity:%s.is_basicname_cofactor_entity_of_basicname" nam_mod)
;;

let check_is_basicname_cofactor_entity_of_basicname bna =
  if (is_basicname_cofactor_entity_of_basicname bna)
  then ()
  else
    Error_messages_v.print_fatal_error __LOC__ "check_is_basicname_cofactor_entity_of_basicname"
      (Format.sprintf "%s were a Basicname_t.Cofactor_entity" (stringedname bna))
      "it is NOT"
      "Check"
;;

let is_basicname_target_operand_of_basicname = function
  | Basicname_t.Target_operand s -> true
  | bna -> failwith (Format.sprintf "Not_a_Basicname_t.Target_operand:%s.is_basicname_target_operand_of_basicname" nam_mod)
;;

let check_is_basicname_target_operand_of_basicname bna =
  if (is_basicname_target_operand_of_basicname bna)
  then ()
  else
    Error_messages_v.print_fatal_error __LOC__ "check_is_basicname_target_operand_of_basicname"
      (Format.sprintf "%s were a Basicname_t.Target_operand" (stringedname bna))
      "it is NOT"
      "Check"
;;

let is_basicname_inputbox_of_basicname = function
  | Basicname_t.Inputbox s -> true
  | bna -> failwith (Format.sprintf "Not_a_Basicname_t.Inputbox:%s.is_basicname_inputbox_of_basicname" nam_mod)
;;

let check_is_basicname_inputbox_of_basicname bna =
  if (is_basicname_inputbox_of_basicname bna)
  then ()
  else
    Error_messages_v.print_fatal_error __LOC__ "check_is_basicname_inputbox_of_basicname"
      (Format.sprintf "%s were a Basicname_t.Inputbox" (stringedname bna))
      "it is NOT"
      "Check"
;;

let is_basicname_inputbox_of_basicname = function
  | Basicname_t.Inputbox s -> true
  | bna -> failwith (Format.sprintf "Not_a_Basicname_t.Inputbox:%s.is_basicname_inputbox_of_basicname" nam_mod)
;;

let check_is_basicname_inputbox_of_basicname bna =
  if (is_basicname_inputbox_of_basicname bna)
  then ()
  else
    Error_messages_v.print_fatal_error __LOC__ "check_is_basicname_inputbox_of_basicname"
      (Format.sprintf "%s were a Basicname_t.Inputbox" (stringedname bna))
      "it is NOT"
      "Check"
;;

let is_basicname_inputbase_of_basicname = function
  | Basicname_t.Inputbase s -> true
  | bna -> failwith (Format.sprintf "Not_a_Basicname_t.Inputbase:%s.is_basicname_inputbase_of_basicname" nam_mod)
;;

let check_is_basicname_inputbase_of_basicname bna =
  if (is_basicname_inputbase_of_basicname bna)
  then ()
  else
    Error_messages_v.print_fatal_error __LOC__ "check_is_basicname_inputbase_of_basicname"
      (Format.sprintf "%s were a Basicname_t.Inputbase" (stringedname bna))
      "it is NOT"
      "Check"
;;

let is_basicname_variable_of_basicname = function
  | Basicname_t.Variable s -> true
  | bna -> failwith (Format.sprintf "Not_a_Basicname_t.Variable:%s.is_basicname_variable_of_basicname" nam_mod)
;;

let check_is_basicname_variable_of_basicname bna =
  if (is_basicname_variable_of_basicname bna)
  then ()
  else
    Error_messages_v.print_fatal_error __LOC__ "check_is_basicname_variable_of_basicname"
      (Format.sprintf "%s were a Basicname_t.Variable" (stringedname bna))
      "it is NOT"
      "Check"
;;

let is_basicname_variable_external_of_basicname = function
  | Basicname_t.Variable_external s -> true
  | bna -> failwith (Format.sprintf "Not_a_Basicname_t.Variable_external:%s.is_basicname_variable_external_of_basicname" nam_mod)
;;

let check_is_basicname_variable_external_of_basicname bna =
  if (is_basicname_variable_external_of_basicname bna)
  then ()
  else
    Error_messages_v.print_fatal_error __LOC__ "check_is_basicname_variable_external_of_basicname"
      (Format.sprintf "%s were a Basicname_t.Variable_external" (stringedname bna))
      "it is NOT"
      "Check"
;;

let basicname_variable_external_off_basicname = function
  | Basicname_t.Variable_external s as bna -> bna 
  | bna -> failwith (Format.sprintf "Not_a_Basicname_t.Variable_external:%s.is_basicname_variable_external_of_basicname" nam_mod)
;;

let is_basicname_variable_context_of_basicname = function
  | Basicname_t.Variable_context s -> true
  | bna -> failwith (Format.sprintf "Not_a_Basicname_t.Variable_context:%s.is_basicname_variable_context_of_basicname" nam_mod)
;;

let basicname_variable_context_off_basicname = function
  | Basicname_t.Variable_context s as bna -> bna
  | bna -> failwith (Format.sprintf "Not_a_Basicname_t.Variable_context:%s.is_basicname_variable_context_of_basicname" nam_mod)
;;

let check_is_basicname_variable_context_of_basicname bna =
  if (is_basicname_variable_context_of_basicname bna)
  then ()
  else
    Error_messages_v.print_fatal_error __LOC__ "check_is_basicname_variable_context_of_basicname"
      (Format.sprintf "%s were a Basicname_t.Variable_context" (stringedname bna))
      "it is NOT"
      "Check"
;;

let is_basicname_variable_operator_of_basicname = function
  | Basicname_t.Variable_operator s -> true
  | bna -> failwith (Format.sprintf "Not_a_Basicname_t.Variable_operator:%s.is_basicname_variable_operator_of_basicname" nam_mod)
;;

let check_is_basicname_variable_operator_of_basicname bna =
  if (is_basicname_variable_operator_of_basicname bna)
  then ()
  else
    Error_messages_v.print_fatal_error __LOC__ "check_is_basicname_variable_operator_of_basicname"
      (Format.sprintf "%s were a Basicname_t.Variable_operator" (stringedname bna))
      "it is NOT"
      "Check"
;;

let is_basicname_variable_target_of_basicname = function
  | Basicname_t.Variable_target s -> true
  | bna -> failwith (Format.sprintf "Not_a_Basicname_t.Variable_target:%s.is_basicname_variable_target_of_basicname" nam_mod)
;;

let check_is_basicname_variable_target_of_basicname bna =
  if (is_basicname_variable_target_of_basicname bna)
  then ()
  else
    Error_messages_v.print_fatal_error __LOC__ "check_is_basicname_variable_target_of_basicname"
      (Format.sprintf "%s were a Basicname_t.Variable_target" (stringedname bna))
      "it is NOT"
      "Check"
;;

let is_basicname_operation_of_basicname = function
  | Basicname_t.Operation s -> true
  | bna -> failwith (Format.sprintf "Not_a_Basicname_t.Operation:%s.is_basicname_operation_of_basicname" nam_mod);;

let check_is_basicname_operation_of_basicname bna =
  if (is_basicname_operation_of_basicname bna)
  then ()
  else
    Error_messages_v.print_fatal_error __LOC__ "check_is_basicname_operation_of_basicname"
      (Format.sprintf "%s were a Basicname_t.Operation" (stringedname bna))
      "it is NOT"
      "Check"
;;

