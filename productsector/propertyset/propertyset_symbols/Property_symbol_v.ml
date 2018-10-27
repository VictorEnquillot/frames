(** {3 Property_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Property_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Property_symbol_t.Property_command_symbol sym_pco ->
    Property_command_symbol_v.name sym_pco
  | Property_symbol_t.Property_context_symbol sym_pco ->
    Property_context_symbol_v.name sym_pco
  | Property_symbol_t.Property_operand_symbol sym_pop ->
    Property_operand_symbol_v.name sym_pop
  | Property_symbol_t.Property_operator_symbol sym_pop ->
    Property_operator_symbol_v.name sym_pop
  | Property_symbol_t.Property_target_symbol sym_pta ->
    Property_target_symbol_v.name sym_pta
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Property_symbol_t.Property_command_symbol sym_pco ->
  Property_command_symbol_v.string_off sym_pco
  | Property_symbol_t.Property_context_symbol sym_pco ->
  Property_context_symbol_v.string_off sym_pco
  | Property_symbol_t.Property_operand_symbol sym_pop ->
  Property_operand_symbol_v.string_off sym_pop
  | Property_symbol_t.Property_operator_symbol sym_pop ->
  Property_operator_symbol_v.string_off sym_pop
  | Property_symbol_t.Property_target_symbol sym_pta ->
  Property_target_symbol_v.string_off sym_pta
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_pro =
  Format.sprintf "Property_symbol_t.%s" (String.capitalize (name sym_pro))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_pro =
  Format.sprintf "%s \"%s\"" (longname sym_pro) (string_off sym_pro)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let property_command_symbol_off_property_symbol = function
  | Property_symbol_t.Property_command_symbol sym_pco -> sym_pco
  | sym_pro -> Error_messages_v.print_fatal_error
      nam_cod "property_command_symbol_off_property_symbol"
      "Property_command_symbol"
      (name sym_pro) "check"
;;

let property_context_symbol_off_property_symbol = function
  | Property_symbol_t.Property_context_symbol sym_pco -> sym_pco
  | sym_pro -> Error_messages_v.print_fatal_error
      nam_cod "property_context_symbol_off_property_symbol"
      "Property_context_symbol"
      (name sym_pro) "check"
;;

let property_operand_symbol_off_property_symbol = function
  | Property_symbol_t.Property_operand_symbol sym_pop -> sym_pop
  | sym_pro -> Error_messages_v.print_fatal_error
      nam_cod "property_operand_symbol_off_property_symbol"
      "Property_operand_symbol"
      (name sym_pro) "check"
;;

let property_operator_symbol_off_property_symbol = function
  | Property_symbol_t.Property_operator_symbol sym_pop -> sym_pop
  | sym_pro -> Error_messages_v.print_fatal_error
      nam_cod "property_operator_symbol_off_property_symbol"
      "Property_operator_symbol"
      (name sym_pro) "check"
;;

let property_target_symbol_off_property_symbol = function
  | Property_symbol_t.Property_target_symbol sym_pta -> sym_pta
  | sym_pro -> Error_messages_v.print_fatal_error
      nam_cod "property_target_symbol_off_property_symbol"
      "Property_target_symbol"
      (name sym_pro) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let property_command_body_symbol_off_property_symbol sym_pro = 
  let sym_pco = property_command_symbol_off_property_symbol sym_pro in
    Property_command_symbol_v.property_command_body_symbol_off_property_command_symbol sym_pco
;;

let property_command_body_debug_symbol_off_property_symbol sym_pro = 
  let sym_pco = property_command_symbol_off_property_symbol sym_pro in
    Property_command_symbol_v.property_command_body_debug_symbol_off_property_command_symbol sym_pco
;;

let property_command_body_set_symbol_off_property_symbol sym_pro = 
  let sym_pco = property_command_symbol_off_property_symbol sym_pro in
    Property_command_symbol_v.property_command_body_set_symbol_off_property_command_symbol sym_pco
;;

let property_command_body_title_symbol_off_property_symbol sym_pro = 
  let sym_pco = property_command_symbol_off_property_symbol sym_pro in
    Property_command_symbol_v.property_command_body_title_symbol_off_property_command_symbol sym_pco
;;

let property_command_body_trace_symbol_off_property_symbol sym_pro = 
  let sym_pco = property_command_symbol_off_property_symbol sym_pro in
    Property_command_symbol_v.property_command_body_trace_symbol_off_property_command_symbol sym_pco
;;

let property_context_domain_symbol_off_property_symbol sym_pro = 
  let sym_pco = property_context_symbol_off_property_symbol sym_pro in
    Property_context_symbol_v.property_context_domain_symbol_off_property_context_symbol sym_pco
;;

let property_context_inputbase_symbol_off_property_symbol sym_pro = 
  let sym_pco = property_context_symbol_off_property_symbol sym_pro in
    Property_context_symbol_v.property_context_inputbase_symbol_off_property_context_symbol sym_pco
;;

let property_context_inputbox_symbol_off_property_symbol sym_pro = 
  let sym_pco = property_context_symbol_off_property_symbol sym_pro in
    Property_context_symbol_v.property_context_inputbox_symbol_off_property_context_symbol sym_pco
;;

let property_context_sector_symbol_off_property_symbol sym_pro = 
  let sym_pco = property_context_symbol_off_property_symbol sym_pro in
    Property_context_symbol_v.property_context_sector_symbol_off_property_context_symbol sym_pco
;;

let property_operand_body_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
    Property_operand_symbol_v.property_operand_body_symbol_off_property_operand_symbol sym_pop
;;

let property_operand_body_target_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
    Property_operand_symbol_v.property_operand_body_target_symbol_off_property_operand_symbol sym_pop
;;

let property_operand_body_target_calculated_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
    Property_operand_symbol_v.property_operand_body_target_calculated_symbol_off_property_operand_symbol sym_pop
;;

let property_operand_body_target_created_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
    Property_operand_symbol_v.property_operand_body_target_created_symbol_off_property_operand_symbol sym_pop
;;

let property_operand_body_target_measured_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
    Property_operand_symbol_v.property_operand_body_target_measured_symbol_off_property_operand_symbol sym_pop
;;

let property_operand_fence_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
    Property_operand_symbol_v.property_operand_fence_symbol_off_property_operand_symbol sym_pop
;;

let property_operand_fence_external_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
    Property_operand_symbol_v.property_operand_fence_external_symbol_off_property_operand_symbol sym_pop
;;

let property_operator_fence_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
    Property_operator_symbol_v.property_operator_fence_symbol_off_property_operator_symbol sym_pop
;;

let property_operator_fence_creation_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
    Property_operator_symbol_v.property_operator_fence_creation_symbol_off_property_operator_symbol sym_pop
;;

let property_operator_fence_creation_toentity_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
    Property_operator_symbol_v.property_operator_fence_creation_toentity_symbol_off_property_operator_symbol sym_pop
;;

let property_operator_fence_creation_tomeasure_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
    Property_operator_symbol_v.property_operator_fence_creation_tomeasure_symbol_off_property_operator_symbol sym_pop
;;

let property_operator_fence_creation_tobasic_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
    Property_operator_symbol_v.property_operator_fence_creation_tobasic_symbol_off_property_operator_symbol sym_pop
;;

let property_operator_fence_tounit_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
    Property_operator_symbol_v.property_operator_fence_tounit_symbol_off_property_operator_symbol sym_pop
;;

let property_operator_fence_tounit_print_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
    Property_operator_symbol_v.property_operator_fence_tounit_print_symbol_off_property_operator_symbol sym_pop
;;

let property_operator_fence_tounit_write_symbol_off_property_symbol sym_pro = 
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
    Property_operator_symbol_v.property_operator_fence_tounit_write_symbol_off_property_operator_symbol sym_pop
;;

let property_target_body_symbol_off_property_symbol sym_pro = 
  let sym_pta = property_target_symbol_off_property_symbol sym_pro in
    Property_target_symbol_v.property_target_body_symbol_off_property_target_symbol sym_pta
;;

let property_target_body_implicit_symbol_off_property_symbol sym_pro = 
  let sym_pta = property_target_symbol_off_property_symbol sym_pro in
    Property_target_symbol_v.property_target_body_implicit_symbol_off_property_target_symbol sym_pta
;;

let property_target_body_implicit_tounit_symbol_off_property_symbol sym_pro = 
  let sym_pta = property_target_symbol_off_property_symbol sym_pro in
    Property_target_symbol_v.property_target_body_implicit_tounit_symbol_off_property_target_symbol sym_pta
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_property_command_symbol_off_property_symbol = function
  | Property_symbol_t.Property_command_symbol _ -> true
  | _ -> false
;;

let is_property_context_symbol_off_property_symbol = function
  | Property_symbol_t.Property_context_symbol _ -> true
  | _ -> false
;;

let is_property_operand_symbol_off_property_symbol = function
  | Property_symbol_t.Property_operand_symbol _ -> true
  | _ -> false
;;

let is_property_operator_symbol_off_property_symbol = function
  | Property_symbol_t.Property_operator_symbol _ -> true
  | _ -> false
;;

let is_property_target_symbol_off_property_symbol = function
  | Property_symbol_t.Property_target_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_property_command_body_debug_constructor sym_pro =
  if not (is_property_command_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pco = property_command_symbol_off_property_symbol sym_pro in
      Property_command_symbol_v.is_property_command_body_debug_constructor sym_pco
    end
;;

let is_property_command_body_set_constructor sym_pro =
  if not (is_property_command_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pco = property_command_symbol_off_property_symbol sym_pro in
      Property_command_symbol_v.is_property_command_body_set_constructor sym_pco
    end
;;

let is_property_command_body_title_constructor sym_pro =
  if not (is_property_command_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pco = property_command_symbol_off_property_symbol sym_pro in
      Property_command_symbol_v.is_property_command_body_title_constructor sym_pco
    end
;;

let is_property_command_body_trace_constructor sym_pro =
  if not (is_property_command_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pco = property_command_symbol_off_property_symbol sym_pro in
      Property_command_symbol_v.is_property_command_body_trace_constructor sym_pco
    end
;;

let is_property_context_domain_constructor sym_pro =
  if not (is_property_context_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pco = property_context_symbol_off_property_symbol sym_pro in
      Property_context_symbol_v.is_property_context_domain_constructor sym_pco
    end
;;

let is_property_context_inputbase_constructor sym_pro =
  if not (is_property_context_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pco = property_context_symbol_off_property_symbol sym_pro in
      Property_context_symbol_v.is_property_context_inputbase_constructor sym_pco
    end
;;

let is_property_context_inputbox_constructor sym_pro =
  if not (is_property_context_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pco = property_context_symbol_off_property_symbol sym_pro in
      Property_context_symbol_v.is_property_context_inputbox_constructor sym_pco
    end
;;

let is_property_context_sector_constructor sym_pro =
  if not (is_property_context_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pco = property_context_symbol_off_property_symbol sym_pro in
      Property_context_symbol_v.is_property_context_sector_constructor sym_pco
    end
;;

let is_property_operand_body_target_calculated_constructor sym_pro =
  if not (is_property_operand_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
      Property_operand_symbol_v.is_property_operand_body_target_calculated_constructor sym_pop
    end
;;

let is_property_operand_body_target_created_constructor sym_pro =
  if not (is_property_operand_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
      Property_operand_symbol_v.is_property_operand_body_target_created_constructor sym_pop
    end
;;

let is_property_operand_body_target_measured_constructor sym_pro =
  if not (is_property_operand_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
      Property_operand_symbol_v.is_property_operand_body_target_measured_constructor sym_pop
    end
;;

let is_property_operand_fence_external_constructor sym_pro =
  if not (is_property_operand_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
      Property_operand_symbol_v.is_property_operand_fence_external_constructor sym_pop
    end
;;

let is_property_operator_fence_creation_toentity_constructor sym_pro =
  if not (is_property_operator_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
      Property_operator_symbol_v.is_property_operator_fence_creation_toentity_constructor sym_pop
    end
;;

let is_property_operator_fence_creation_tomeasure_constructor sym_pro =
  if not (is_property_operator_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
      Property_operator_symbol_v.is_property_operator_fence_creation_tomeasure_constructor sym_pop
    end
;;

let is_property_operator_fence_creation_tobasic_constructor sym_pro =
  if not (is_property_operator_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
      Property_operator_symbol_v.is_property_operator_fence_creation_tobasic_constructor sym_pop
    end
;;

let is_property_operator_fence_tounit_print_constructor sym_pro =
  if not (is_property_operator_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
      Property_operator_symbol_v.is_property_operator_fence_tounit_print_constructor sym_pop
    end
;;

let is_property_operator_fence_tounit_write_constructor sym_pro =
  if not (is_property_operator_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
      Property_operator_symbol_v.is_property_operator_fence_tounit_write_constructor sym_pop
    end
;;

let is_property_target_body_implicit_tounit_constructor sym_pro =
  if not (is_property_target_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
      let sym_pta = property_target_symbol_off_property_symbol sym_pro in
      Property_target_symbol_v.is_property_target_body_implicit_tounit_constructor sym_pta
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_property_command_body_symbol_off_property_symbol sym_pro =
  if not (is_property_command_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pco = property_command_symbol_off_property_symbol sym_pro in
  Property_command_symbol_v.is_property_command_body_symbol_off_property_command_symbol sym_pco
    end
;;

let is_property_command_body_debug_symbol_off_property_symbol sym_pro =
  if not (is_property_command_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pco = property_command_symbol_off_property_symbol sym_pro in
  Property_command_symbol_v.is_property_command_body_debug_symbol_off_property_command_symbol sym_pco
    end
;;

let is_property_command_body_set_symbol_off_property_symbol sym_pro =
  if not (is_property_command_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pco = property_command_symbol_off_property_symbol sym_pro in
  Property_command_symbol_v.is_property_command_body_set_symbol_off_property_command_symbol sym_pco
    end
;;

let is_property_command_body_title_symbol_off_property_symbol sym_pro =
  if not (is_property_command_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pco = property_command_symbol_off_property_symbol sym_pro in
  Property_command_symbol_v.is_property_command_body_title_symbol_off_property_command_symbol sym_pco
    end
;;

let is_property_command_body_trace_symbol_off_property_symbol sym_pro =
  if not (is_property_command_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pco = property_command_symbol_off_property_symbol sym_pro in
  Property_command_symbol_v.is_property_command_body_trace_symbol_off_property_command_symbol sym_pco
    end
;;

let is_property_context_domain_symbol_off_property_symbol sym_pro =
  if not (is_property_context_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pco = property_context_symbol_off_property_symbol sym_pro in
  Property_context_symbol_v.is_property_context_domain_symbol_off_property_context_symbol sym_pco
    end
;;

let is_property_context_inputbase_symbol_off_property_symbol sym_pro =
  if not (is_property_context_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pco = property_context_symbol_off_property_symbol sym_pro in
  Property_context_symbol_v.is_property_context_inputbase_symbol_off_property_context_symbol sym_pco
    end
;;

let is_property_context_inputbox_symbol_off_property_symbol sym_pro =
  if not (is_property_context_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pco = property_context_symbol_off_property_symbol sym_pro in
  Property_context_symbol_v.is_property_context_inputbox_symbol_off_property_context_symbol sym_pco
    end
;;

let is_property_context_sector_symbol_off_property_symbol sym_pro =
  if not (is_property_context_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pco = property_context_symbol_off_property_symbol sym_pro in
  Property_context_symbol_v.is_property_context_sector_symbol_off_property_context_symbol sym_pco
    end
;;

let is_property_operand_body_symbol_off_property_symbol sym_pro =
  if not (is_property_operand_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
  Property_operand_symbol_v.is_property_operand_body_symbol_off_property_operand_symbol sym_pop
    end
;;

let is_property_operand_body_target_symbol_off_property_symbol sym_pro =
  if not (is_property_operand_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
  Property_operand_symbol_v.is_property_operand_body_target_symbol_off_property_operand_symbol sym_pop
    end
;;

let is_property_operand_body_target_calculated_symbol_off_property_symbol sym_pro =
  if not (is_property_operand_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
  Property_operand_symbol_v.is_property_operand_body_target_calculated_symbol_off_property_operand_symbol sym_pop
    end
;;

let is_property_operand_body_target_created_symbol_off_property_symbol sym_pro =
  if not (is_property_operand_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
  Property_operand_symbol_v.is_property_operand_body_target_created_symbol_off_property_operand_symbol sym_pop
    end
;;

let is_property_operand_body_target_measured_symbol_off_property_symbol sym_pro =
  if not (is_property_operand_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
  Property_operand_symbol_v.is_property_operand_body_target_measured_symbol_off_property_operand_symbol sym_pop
    end
;;

let is_property_operand_fence_symbol_off_property_symbol sym_pro =
  if not (is_property_operand_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
  Property_operand_symbol_v.is_property_operand_fence_symbol_off_property_operand_symbol sym_pop
    end
;;

let is_property_operand_fence_external_symbol_off_property_symbol sym_pro =
  if not (is_property_operand_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operand_symbol_off_property_symbol sym_pro in
  Property_operand_symbol_v.is_property_operand_fence_external_symbol_off_property_operand_symbol sym_pop
    end
;;

let is_property_operator_fence_symbol_off_property_symbol sym_pro =
  if not (is_property_operator_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
  Property_operator_symbol_v.is_property_operator_fence_symbol_off_property_operator_symbol sym_pop
    end
;;

let is_property_operator_fence_creation_symbol_off_property_symbol sym_pro =
  if not (is_property_operator_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
  Property_operator_symbol_v.is_property_operator_fence_creation_symbol_off_property_operator_symbol sym_pop
    end
;;

let is_property_operator_fence_creation_toentity_symbol_off_property_symbol sym_pro =
  if not (is_property_operator_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
  Property_operator_symbol_v.is_property_operator_fence_creation_toentity_symbol_off_property_operator_symbol sym_pop
    end
;;

let is_property_operator_fence_creation_tomeasure_symbol_off_property_symbol sym_pro =
  if not (is_property_operator_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
  Property_operator_symbol_v.is_property_operator_fence_creation_tomeasure_symbol_off_property_operator_symbol sym_pop
    end
;;

let is_property_operator_fence_creation_tobasic_symbol_off_property_symbol sym_pro =
  if not (is_property_operator_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
  Property_operator_symbol_v.is_property_operator_fence_creation_tobasic_symbol_off_property_operator_symbol sym_pop
    end
;;

let is_property_operator_fence_tounit_symbol_off_property_symbol sym_pro =
  if not (is_property_operator_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
  Property_operator_symbol_v.is_property_operator_fence_tounit_symbol_off_property_operator_symbol sym_pop
    end
;;

let is_property_operator_fence_tounit_print_symbol_off_property_symbol sym_pro =
  if not (is_property_operator_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
  Property_operator_symbol_v.is_property_operator_fence_tounit_print_symbol_off_property_operator_symbol sym_pop
    end
;;

let is_property_operator_fence_tounit_write_symbol_off_property_symbol sym_pro =
  if not (is_property_operator_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pop = property_operator_symbol_off_property_symbol sym_pro in
  Property_operator_symbol_v.is_property_operator_fence_tounit_write_symbol_off_property_operator_symbol sym_pop
    end
;;

let is_property_target_body_symbol_off_property_symbol sym_pro =
  if not (is_property_target_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pta = property_target_symbol_off_property_symbol sym_pro in
  Property_target_symbol_v.is_property_target_body_symbol_off_property_target_symbol sym_pta
    end
;;

let is_property_target_body_implicit_symbol_off_property_symbol sym_pro =
  if not (is_property_target_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pta = property_target_symbol_off_property_symbol sym_pro in
  Property_target_symbol_v.is_property_target_body_implicit_symbol_off_property_target_symbol sym_pta
    end
;;

let is_property_target_body_implicit_tounit_symbol_off_property_symbol sym_pro =
  if not (is_property_target_symbol_off_property_symbol sym_pro)
  then false
  else
    begin
  let sym_pta = property_target_symbol_off_property_symbol sym_pro in
  Property_target_symbol_v.is_property_target_body_implicit_tounit_symbol_off_property_target_symbol sym_pta
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let property_symbol_of_property_command_symbol sym_pco = 
  Property_symbol_t.Property_command_symbol sym_pco
;;

let property_symbol_of_property_context_symbol sym_pco = 
  Property_symbol_t.Property_context_symbol sym_pco
;;

let property_symbol_of_property_operand_symbol sym_pop = 
  Property_symbol_t.Property_operand_symbol sym_pop
;;

let property_symbol_of_property_operator_symbol sym_pop = 
  Property_symbol_t.Property_operator_symbol sym_pop
;;

let property_symbol_of_property_target_symbol sym_pta = 
  Property_symbol_t.Property_target_symbol sym_pta
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let property_symbol_of_property_command_body_symbol sym_pcb = 
  let sym_pco = Property_command_symbol_v.property_command_symbol_of_property_command_body_symbol sym_pcb in
    property_symbol_of_property_command_symbol sym_pco
;;

let property_symbol_of_property_command_body_debug_symbol sym_pbd = 
  let sym_pco = Property_command_symbol_v.property_command_symbol_of_property_command_body_debug_symbol sym_pbd in
    property_symbol_of_property_command_symbol sym_pco
;;

let property_symbol_of_property_command_body_set_symbol sym_pbs = 
  let sym_pco = Property_command_symbol_v.property_command_symbol_of_property_command_body_set_symbol sym_pbs in
    property_symbol_of_property_command_symbol sym_pco
;;

let property_symbol_of_property_command_body_title_symbol sym_pbt = 
  let sym_pco = Property_command_symbol_v.property_command_symbol_of_property_command_body_title_symbol sym_pbt in
    property_symbol_of_property_command_symbol sym_pco
;;

let property_symbol_of_property_command_body_trace_symbol sym_pbt = 
  let sym_pco = Property_command_symbol_v.property_command_symbol_of_property_command_body_trace_symbol sym_pbt in
    property_symbol_of_property_command_symbol sym_pco
;;

let property_symbol_of_property_context_domain_symbol sym_pcd = 
  let sym_pco = Property_context_symbol_v.property_context_symbol_of_property_context_domain_symbol sym_pcd in
    property_symbol_of_property_context_symbol sym_pco
;;

let property_symbol_of_property_context_inputbase_symbol sym_pci = 
  let sym_pco = Property_context_symbol_v.property_context_symbol_of_property_context_inputbase_symbol sym_pci in
    property_symbol_of_property_context_symbol sym_pco
;;

let property_symbol_of_property_context_inputbox_symbol sym_pci = 
  let sym_pco = Property_context_symbol_v.property_context_symbol_of_property_context_inputbox_symbol sym_pci in
    property_symbol_of_property_context_symbol sym_pco
;;

let property_symbol_of_property_context_sector_symbol sym_pcs = 
  let sym_pco = Property_context_symbol_v.property_context_symbol_of_property_context_sector_symbol sym_pcs in
    property_symbol_of_property_context_symbol sym_pco
;;

let property_symbol_of_property_operand_body_symbol sym_pob = 
  let sym_pop = Property_operand_symbol_v.property_operand_symbol_of_property_operand_body_symbol sym_pob in
    property_symbol_of_property_operand_symbol sym_pop
;;

let property_symbol_of_property_operand_body_target_symbol sym_pbt = 
  let sym_pop = Property_operand_symbol_v.property_operand_symbol_of_property_operand_body_target_symbol sym_pbt in
    property_symbol_of_property_operand_symbol sym_pop
;;

let property_symbol_of_property_operand_body_target_calculated_symbol sym_ptc = 
  let sym_pop = Property_operand_symbol_v.property_operand_symbol_of_property_operand_body_target_calculated_symbol sym_ptc in
    property_symbol_of_property_operand_symbol sym_pop
;;

let property_symbol_of_property_operand_body_target_created_symbol sym_ptc = 
  let sym_pop = Property_operand_symbol_v.property_operand_symbol_of_property_operand_body_target_created_symbol sym_ptc in
    property_symbol_of_property_operand_symbol sym_pop
;;

let property_symbol_of_property_operand_body_target_measured_symbol sym_ptm = 
  let sym_pop = Property_operand_symbol_v.property_operand_symbol_of_property_operand_body_target_measured_symbol sym_ptm in
    property_symbol_of_property_operand_symbol sym_pop
;;

let property_symbol_of_property_operand_fence_symbol sym_pof = 
  let sym_pop = Property_operand_symbol_v.property_operand_symbol_of_property_operand_fence_symbol sym_pof in
    property_symbol_of_property_operand_symbol sym_pop
;;

let property_symbol_of_property_operand_fence_external_symbol sym_pfe = 
  let sym_pop = Property_operand_symbol_v.property_operand_symbol_of_property_operand_fence_external_symbol sym_pfe in
    property_symbol_of_property_operand_symbol sym_pop
;;

let property_symbol_of_property_operator_fence_symbol sym_pof = 
  let sym_pop = Property_operator_symbol_v.property_operator_symbol_of_property_operator_fence_symbol sym_pof in
    property_symbol_of_property_operator_symbol sym_pop
;;

let property_symbol_of_property_operator_fence_creation_symbol sym_pfc = 
  let sym_pop = Property_operator_symbol_v.property_operator_symbol_of_property_operator_fence_creation_symbol sym_pfc in
    property_symbol_of_property_operator_symbol sym_pop
;;

let property_symbol_of_property_operator_fence_creation_toentity_symbol sym_pct = 
  let sym_pop = Property_operator_symbol_v.property_operator_symbol_of_property_operator_fence_creation_toentity_symbol sym_pct in
    property_symbol_of_property_operator_symbol sym_pop
;;

let property_symbol_of_property_operator_fence_creation_tomeasure_symbol sym_pct = 
  let sym_pop = Property_operator_symbol_v.property_operator_symbol_of_property_operator_fence_creation_tomeasure_symbol sym_pct in
    property_symbol_of_property_operator_symbol sym_pop
;;

let property_symbol_of_property_operator_fence_creation_tobasic_symbol sym_pct = 
  let sym_pop = Property_operator_symbol_v.property_operator_symbol_of_property_operator_fence_creation_tobasic_symbol sym_pct in
    property_symbol_of_property_operator_symbol sym_pop
;;

let property_symbol_of_property_operator_fence_tounit_symbol sym_pft = 
  let sym_pop = Property_operator_symbol_v.property_operator_symbol_of_property_operator_fence_tounit_symbol sym_pft in
    property_symbol_of_property_operator_symbol sym_pop
;;

let property_symbol_of_property_operator_fence_tounit_print_symbol sym_ptp = 
  let sym_pop = Property_operator_symbol_v.property_operator_symbol_of_property_operator_fence_tounit_print_symbol sym_ptp in
    property_symbol_of_property_operator_symbol sym_pop
;;

let property_symbol_of_property_operator_fence_tounit_write_symbol sym_ptw = 
  let sym_pop = Property_operator_symbol_v.property_operator_symbol_of_property_operator_fence_tounit_write_symbol sym_ptw in
    property_symbol_of_property_operator_symbol sym_pop
;;

let property_symbol_of_property_target_body_symbol sym_ptb = 
  let sym_pta = Property_target_symbol_v.property_target_symbol_of_property_target_body_symbol sym_ptb in
    property_symbol_of_property_target_symbol sym_pta
;;

let property_symbol_of_property_target_body_implicit_symbol sym_pbi = 
  let sym_pta = Property_target_symbol_v.property_target_symbol_of_property_target_body_implicit_symbol sym_pbi in
    property_symbol_of_property_target_symbol sym_pta
;;

let property_symbol_of_property_target_body_implicit_tounit_symbol sym_pit = 
  let sym_pta = Property_target_symbol_v.property_target_symbol_of_property_target_body_implicit_tounit_symbol sym_pit in
    property_symbol_of_property_target_symbol sym_pta
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let property_command_body_debug_constructor s = property_symbol_of_property_command_symbol (Property_command_symbol_v.property_command_body_debug_constructor s);;

let property_command_body_set_constructor s = property_symbol_of_property_command_symbol (Property_command_symbol_v.property_command_body_set_constructor s);;

let property_command_body_title_constructor s = property_symbol_of_property_command_symbol (Property_command_symbol_v.property_command_body_title_constructor s);;

let property_command_body_trace_constructor s = property_symbol_of_property_command_symbol (Property_command_symbol_v.property_command_body_trace_constructor s);;

let property_context_domain_constructor s = property_symbol_of_property_context_symbol (Property_context_symbol_v.property_context_domain_constructor s);;

let property_context_inputbase_constructor s = property_symbol_of_property_context_symbol (Property_context_symbol_v.property_context_inputbase_constructor s);;

let property_context_inputbox_constructor s = property_symbol_of_property_context_symbol (Property_context_symbol_v.property_context_inputbox_constructor s);;

let property_context_sector_constructor s = property_symbol_of_property_context_symbol (Property_context_symbol_v.property_context_sector_constructor s);;

let property_operand_body_target_calculated_constructor s = property_symbol_of_property_operand_symbol (Property_operand_symbol_v.property_operand_body_target_calculated_constructor s);;

let property_operand_body_target_created_constructor s = property_symbol_of_property_operand_symbol (Property_operand_symbol_v.property_operand_body_target_created_constructor s);;

let property_operand_body_target_measured_constructor s = property_symbol_of_property_operand_symbol (Property_operand_symbol_v.property_operand_body_target_measured_constructor s);;

let property_operand_fence_external_constructor s = property_symbol_of_property_operand_symbol (Property_operand_symbol_v.property_operand_fence_external_constructor s);;

let property_operator_fence_creation_toentity_constructor s = property_symbol_of_property_operator_symbol (Property_operator_symbol_v.property_operator_fence_creation_toentity_constructor s);;

let property_operator_fence_creation_tomeasure_constructor s = property_symbol_of_property_operator_symbol (Property_operator_symbol_v.property_operator_fence_creation_tomeasure_constructor s);;

let property_operator_fence_creation_tobasic_constructor s = property_symbol_of_property_operator_symbol (Property_operator_symbol_v.property_operator_fence_creation_tobasic_constructor s);;

let property_operator_fence_tounit_print_constructor s = property_symbol_of_property_operator_symbol (Property_operator_symbol_v.property_operator_fence_tounit_print_constructor s);;

let property_operator_fence_tounit_write_constructor s = property_symbol_of_property_operator_symbol (Property_operator_symbol_v.property_operator_fence_tounit_write_constructor s);;

let property_target_body_implicit_tounit_constructor s = property_symbol_of_property_target_symbol (Property_target_symbol_v.property_target_body_implicit_tounit_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Property_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Property_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try property_symbol_of_property_command_symbol
      (Property_command_symbol_v.make nam s)
  with Failure "Not_a_property_command_symbol:Property_command_symbol_v.ml:make" ->
  try property_symbol_of_property_context_symbol
      (Property_context_symbol_v.make nam s)
  with Failure "Not_a_property_context_symbol:Property_context_symbol_v.ml:make" ->
  try property_symbol_of_property_operand_symbol
      (Property_operand_symbol_v.make nam s)
  with Failure "Not_a_property_operand_symbol:Property_operand_symbol_v.ml:make" ->
  try property_symbol_of_property_operator_symbol
      (Property_operator_symbol_v.make nam s)
  with Failure "Not_a_property_operator_symbol:Property_operator_symbol_v.ml:make" ->
  try property_symbol_of_property_target_symbol
      (Property_target_symbol_v.make nam s)
  with Failure "Not_a_property_target_symbol:Property_target_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Property_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Property_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Property_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Property_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Property subtype" nam s)
      "it does not exists"
      "Check file Property_symbol_v.ml"
    in
    failwith "Not_a_property_symbol:Property_symbol_v.ml:make"
;;


(** Property_symbol_v at 10:48:19 on 19 Mar 2017. created by version v2.4 of generator *)



