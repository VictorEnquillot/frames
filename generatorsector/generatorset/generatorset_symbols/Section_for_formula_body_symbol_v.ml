(** {3 Section_for_formula_body_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SGEN:Section_for_formula_body_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_builder_data_symbol sym_sbd ->
    Section_for_formula_body_builder_data_symbol_v.name sym_sbd
  | Section_for_formula_body_symbol_t.Section_for_formula_body_localset_builder_symbol sym_sdb ->
    Section_for_formula_body_localset_builder_symbol_v.name sym_sdb
  | Section_for_formula_body_symbol_t.Section_for_formula_body_localset_data_symbol sym_sdd ->
    Section_for_formula_body_localset_data_symbol_v.name sym_sdd
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol sym_ssb ->
    Section_for_formula_body_son_builder_symbol_v.name sym_ssb
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_symbol sym_sst ->
    Section_for_formula_body_son_top_symbol_v.name sym_sst
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol sym_stb ->
    Section_for_formula_body_son_top_builder_symbol_v.name sym_stb
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_data_symbol sym_std ->
    Section_for_formula_body_son_top_data_symbol_v.name sym_std
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_symbol sym_stm ->
    Section_for_formula_body_son_top_main_symbol_v.name sym_stm
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_builder_symbol sym_smb ->
    Section_for_formula_body_son_top_main_builder_symbol_v.name sym_smb
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_symbol sym_sbt ->
    Section_for_formula_body_top_symbol_v.name sym_sbt
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_symbol sym_stb ->
    Section_for_formula_body_top_builder_symbol_v.name sym_stb
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_data_symbol sym_sbd ->
    Section_for_formula_body_top_builder_data_symbol_v.name sym_sbd
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_data_symbol sym_std ->
    Section_for_formula_body_top_data_symbol_v.name sym_std
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_builder_symbol sym_smb ->
    Section_for_formula_body_top_main_builder_symbol_v.name sym_smb
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_data_symbol sym_smd ->
    Section_for_formula_body_top_main_data_symbol_v.name sym_smd
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_builder_data_symbol sym_sbd ->
  Section_for_formula_body_builder_data_symbol_v.string_off sym_sbd
  | Section_for_formula_body_symbol_t.Section_for_formula_body_localset_builder_symbol sym_sdb ->
  Section_for_formula_body_localset_builder_symbol_v.string_off sym_sdb
  | Section_for_formula_body_symbol_t.Section_for_formula_body_localset_data_symbol sym_sdd ->
  Section_for_formula_body_localset_data_symbol_v.string_off sym_sdd
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol sym_ssb ->
  Section_for_formula_body_son_builder_symbol_v.string_off sym_ssb
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_symbol sym_sst ->
  Section_for_formula_body_son_top_symbol_v.string_off sym_sst
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol sym_stb ->
  Section_for_formula_body_son_top_builder_symbol_v.string_off sym_stb
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_data_symbol sym_std ->
  Section_for_formula_body_son_top_data_symbol_v.string_off sym_std
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_symbol sym_stm ->
  Section_for_formula_body_son_top_main_symbol_v.string_off sym_stm
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_builder_symbol sym_smb ->
  Section_for_formula_body_son_top_main_builder_symbol_v.string_off sym_smb
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_symbol sym_sbt ->
  Section_for_formula_body_top_symbol_v.string_off sym_sbt
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_symbol sym_stb ->
  Section_for_formula_body_top_builder_symbol_v.string_off sym_stb
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_data_symbol sym_sbd ->
  Section_for_formula_body_top_builder_data_symbol_v.string_off sym_sbd
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_data_symbol sym_std ->
  Section_for_formula_body_top_data_symbol_v.string_off sym_std
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_builder_symbol sym_smb ->
  Section_for_formula_body_top_main_builder_symbol_v.string_off sym_smb
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_data_symbol sym_smd ->
  Section_for_formula_body_top_main_data_symbol_v.string_off sym_smd
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_sfb =
  Format.sprintf "Section_for_formula_body_symbol_t.%s" (String.capitalize_ascii (name sym_sfb))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_sfb =
  Format.sprintf "%s \"%s\"" (longname sym_sfb) (string_off sym_sfb)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let section_for_formula_body_builder_data_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_builder_data_symbol sym_sbd -> sym_sbd
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_builder_data_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_builder_data_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_localset_builder_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_localset_builder_symbol sym_sdb -> sym_sdb
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_localset_builder_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_localset_builder_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_localset_data_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_localset_data_symbol sym_sdd -> sym_sdd
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_localset_data_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_localset_data_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_son_builder_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol sym_ssb -> sym_ssb
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_son_builder_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_son_builder_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_son_top_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_symbol sym_sst -> sym_sst
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_son_top_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_son_top_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_son_top_builder_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol sym_stb -> sym_stb
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_son_top_builder_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_son_top_builder_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_son_top_data_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_data_symbol sym_std -> sym_std
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_son_top_data_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_son_top_data_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_son_top_main_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_symbol sym_stm -> sym_stm
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_son_top_main_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_son_top_main_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_son_top_main_builder_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_builder_symbol sym_smb -> sym_smb
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_son_top_main_builder_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_son_top_main_builder_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_top_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_symbol sym_sbt -> sym_sbt
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_top_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_top_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_symbol sym_stb -> sym_stb
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_top_builder_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_top_builder_data_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_data_symbol sym_sbd -> sym_sbd
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_top_builder_data_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_top_builder_data_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_top_data_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_data_symbol sym_std -> sym_std
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_top_data_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_top_data_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_top_main_builder_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_builder_symbol sym_smb -> sym_smb
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_top_main_builder_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_top_main_builder_symbol"
      (name sym_sfb) "check"
;;

let section_for_formula_body_top_main_data_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_data_symbol sym_smd -> sym_smd
  | sym_sfb -> Error_messages_v.print_fatal_error
      nam_cod "section_for_formula_body_top_main_data_symbol_off_section_for_formula_body_symbol"
      "Section_for_formula_body_top_main_data_symbol"
      (name sym_sfb) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_section_for_formula_body_builder_data_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_builder_data_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_localset_builder_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_localset_builder_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_localset_data_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_localset_data_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_son_builder_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_son_top_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_son_top_builder_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_son_top_data_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_data_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_son_top_main_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_son_top_main_builder_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_builder_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_top_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_top_builder_data_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_data_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_top_data_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_data_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_top_main_builder_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_builder_symbol _ -> true
  | _ -> false
;;

let is_section_for_formula_body_top_main_data_symbol_off_section_for_formula_body_symbol = function
  | Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_data_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_data_formula_list sym_sfb =
  if not (is_section_for_formula_body_builder_data_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_sbd = section_for_formula_body_builder_data_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_builder_data_symbol_v.is_data_formula_list sym_sbd
    end
;;

let is_builder_tag_list sym_sfb =
  if not (is_section_for_formula_body_localset_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_sdb = section_for_formula_body_localset_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_localset_builder_symbol_v.is_builder_tag_list sym_sdb
    end
;;

let is_data_tag_list sym_sfb =
  if not (is_section_for_formula_body_localset_data_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_sdd = section_for_formula_body_localset_data_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_localset_data_symbol_v.is_data_tag_list sym_sdd
    end
;;

let is_pipe_topson_formula_type_bare_constructors sym_sfb =
  if not (is_section_for_formula_body_son_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_ssb = section_for_formula_body_son_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_builder_symbol_v.is_pipe_topson_formula_type_bare_constructors sym_ssb
    end
;;

let is_pipe_topson_formula_type_ofstring_constructors sym_sfb =
  if not (is_section_for_formula_body_son_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_ssb = section_for_formula_body_son_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_builder_symbol_v.is_pipe_topson_formula_type_ofstring_constructors sym_ssb
    end
;;

let is_symbol_of_formula_topson_pattern_bare sym_sfb =
  if not (is_section_for_formula_body_son_top_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_sst = section_for_formula_body_son_top_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_top_symbol_v.is_symbol_of_formula_topson_pattern_bare sym_sst
    end
;;

let is_symbol_of_formula_topson_pattern_notleaf sym_sfb =
  if not (is_section_for_formula_body_son_top_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_sst = section_for_formula_body_son_top_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_top_symbol_v.is_symbol_of_formula_topson_pattern_notleaf sym_sst
    end
;;

let is_symbol_of_formula_topson_pattern_ofstring sym_sfb =
  if not (is_section_for_formula_body_son_top_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_sst = section_for_formula_body_son_top_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_top_symbol_v.is_symbol_of_formula_topson_pattern_ofstring sym_sst
    end
;;

let is_builder_tag_list_topson_pattern_bare_for_formula sym_sfb =
  if not (is_section_for_formula_body_son_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_stb = section_for_formula_body_son_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_top_builder_symbol_v.is_builder_tag_list_topson_pattern_bare_for_formula sym_stb
    end
;;

let is_builder_tag_list_topson_pattern_notleaf_for_formula sym_sfb =
  if not (is_section_for_formula_body_son_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_stb = section_for_formula_body_son_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_top_builder_symbol_v.is_builder_tag_list_topson_pattern_notleaf_for_formula sym_stb
    end
;;

let is_builder_tag_list_topson_pattern_ofstring_for_formula sym_sfb =
  if not (is_section_for_formula_body_son_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_stb = section_for_formula_body_son_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_top_builder_symbol_v.is_builder_tag_list_topson_pattern_ofstring_for_formula sym_stb
    end
;;

let is_data_tag_list_topson_pattern_bare_for_formula sym_sfb =
  if not (is_section_for_formula_body_son_top_data_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_std = section_for_formula_body_son_top_data_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_top_data_symbol_v.is_data_tag_list_topson_pattern_bare_for_formula sym_std
    end
;;

let is_data_tag_list_topson_pattern_notleaf_for_formula sym_sfb =
  if not (is_section_for_formula_body_son_top_data_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_std = section_for_formula_body_son_top_data_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_top_data_symbol_v.is_data_tag_list_topson_pattern_notleaf_for_formula sym_std
    end
;;

let is_data_tag_list_topson_pattern_ofstring_for_formula sym_sfb =
  if not (is_section_for_formula_body_son_top_data_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_std = section_for_formula_body_son_top_data_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_top_data_symbol_v.is_data_tag_list_topson_pattern_ofstring_for_formula sym_std
    end
;;

let is_make_topson_pattern_notleaf_for_formula sym_sfb =
  if not (is_section_for_formula_body_son_top_main_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_stm = section_for_formula_body_son_top_main_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_top_main_symbol_v.is_make_topson_pattern_notleaf_for_formula sym_stm
    end
;;

let is_make_topson_pattern_bare_for_formula sym_sfb =
  if not (is_section_for_formula_body_son_top_main_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_smb = section_for_formula_body_son_top_main_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_top_main_builder_symbol_v.is_make_topson_pattern_bare_for_formula sym_smb
    end
;;

let is_make_topson_pattern_ofstring_for_formula sym_sfb =
  if not (is_section_for_formula_body_son_top_main_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_smb = section_for_formula_body_son_top_main_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_son_top_main_builder_symbol_v.is_make_topson_pattern_ofstring_for_formula sym_smb
    end
;;

let is_symbol_of_formula_in_name_top sym_sfb =
  if not (is_section_for_formula_body_top_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_sbt = section_for_formula_body_top_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_top_symbol_v.is_symbol_of_formula_in_name_top sym_sbt
    end
;;

let is_symbol_of_formula_in_string_off_top sym_sfb =
  if not (is_section_for_formula_body_top_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_sbt = section_for_formula_body_top_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_top_symbol_v.is_symbol_of_formula_in_string_off_top sym_sbt
    end
;;

let is_builder_formula_list sym_sfb =
  if not (is_section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_stb = section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_top_builder_symbol_v.is_builder_formula_list sym_stb
    end
;;

let is_builder_tag_list_of_tag_for_formula sym_sfb =
  if not (is_section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_stb = section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_top_builder_symbol_v.is_builder_tag_list_of_tag_for_formula sym_stb
    end
;;

let is_iter2_on_builder_tag_list sym_sfb =
  if not (is_section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_stb = section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_top_builder_symbol_v.is_iter2_on_builder_tag_list sym_stb
    end
;;

let is_iter_on_builder_tag_list sym_sfb =
  if not (is_section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_stb = section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_top_builder_symbol_v.is_iter_on_builder_tag_list sym_stb
    end
;;

let is_map2_on_builder_tag_list sym_sfb =
  if not (is_section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_stb = section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_top_builder_symbol_v.is_map2_on_builder_tag_list sym_stb
    end
;;

let is_map_on_builder_tag_list sym_sfb =
  if not (is_section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_stb = section_for_formula_body_top_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_top_builder_symbol_v.is_map_on_builder_tag_list sym_stb
    end
;;

let is_documentation_list_for_formula sym_sfb =
  if not (is_section_for_formula_body_top_builder_data_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_sbd = section_for_formula_body_top_builder_data_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_top_builder_data_symbol_v.is_documentation_list_for_formula sym_sbd
    end
;;

let is_data_tag_list_of_tag_for_formula sym_sfb =
  if not (is_section_for_formula_body_top_data_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_std = section_for_formula_body_top_data_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_top_data_symbol_v.is_data_tag_list_of_tag_for_formula sym_std
    end
;;

let is_builder_node_sole_index_builder_list sym_sfb =
  if not (is_section_for_formula_body_top_main_builder_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_smb = section_for_formula_body_top_main_builder_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_top_main_builder_symbol_v.is_builder_node_sole_index_builder_list sym_smb
    end
;;

let is_builder_stem_sole_index_data_list sym_sfb =
  if not (is_section_for_formula_body_top_main_data_symbol_off_section_for_formula_body_symbol sym_sfb)
  then false
  else
    begin
      let sym_smd = section_for_formula_body_top_main_data_symbol_off_section_for_formula_body_symbol sym_sfb in
      Section_for_formula_body_top_main_data_symbol_v.is_builder_stem_sole_index_data_list sym_smd
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let section_for_formula_body_symbol_of_section_for_formula_body_builder_data_symbol sym_sbd = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_builder_data_symbol sym_sbd
;;

let section_for_formula_body_symbol_of_section_for_formula_body_localset_builder_symbol sym_sdb = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_localset_builder_symbol sym_sdb
;;

let section_for_formula_body_symbol_of_section_for_formula_body_localset_data_symbol sym_sdd = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_localset_data_symbol sym_sdd
;;

let section_for_formula_body_symbol_of_section_for_formula_body_son_builder_symbol sym_ssb = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_son_builder_symbol sym_ssb
;;

let section_for_formula_body_symbol_of_section_for_formula_body_son_top_symbol sym_sst = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_symbol sym_sst
;;

let section_for_formula_body_symbol_of_section_for_formula_body_son_top_builder_symbol sym_stb = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_builder_symbol sym_stb
;;

let section_for_formula_body_symbol_of_section_for_formula_body_son_top_data_symbol sym_std = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_data_symbol sym_std
;;

let section_for_formula_body_symbol_of_section_for_formula_body_son_top_main_symbol sym_stm = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_symbol sym_stm
;;

let section_for_formula_body_symbol_of_section_for_formula_body_son_top_main_builder_symbol sym_smb = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_son_top_main_builder_symbol sym_smb
;;

let section_for_formula_body_symbol_of_section_for_formula_body_top_symbol sym_sbt = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_top_symbol sym_sbt
;;

let section_for_formula_body_symbol_of_section_for_formula_body_top_builder_symbol sym_stb = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_symbol sym_stb
;;

let section_for_formula_body_symbol_of_section_for_formula_body_top_builder_data_symbol sym_sbd = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_top_builder_data_symbol sym_sbd
;;

let section_for_formula_body_symbol_of_section_for_formula_body_top_data_symbol sym_std = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_top_data_symbol sym_std
;;

let section_for_formula_body_symbol_of_section_for_formula_body_top_main_builder_symbol sym_smb = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_builder_symbol sym_smb
;;

let section_for_formula_body_symbol_of_section_for_formula_body_top_main_data_symbol sym_smd = 
  Section_for_formula_body_symbol_t.Section_for_formula_body_top_main_data_symbol sym_smd
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let data_formula_list = section_for_formula_body_symbol_of_section_for_formula_body_builder_data_symbol Section_for_formula_body_builder_data_symbol_v.data_formula_list;;

let builder_tag_list = section_for_formula_body_symbol_of_section_for_formula_body_localset_builder_symbol Section_for_formula_body_localset_builder_symbol_v.builder_tag_list;;

let data_tag_list = section_for_formula_body_symbol_of_section_for_formula_body_localset_data_symbol Section_for_formula_body_localset_data_symbol_v.data_tag_list;;

let pipe_topson_formula_type_bare_constructors = section_for_formula_body_symbol_of_section_for_formula_body_son_builder_symbol Section_for_formula_body_son_builder_symbol_v.pipe_topson_formula_type_bare_constructors;;

let pipe_topson_formula_type_ofstring_constructors = section_for_formula_body_symbol_of_section_for_formula_body_son_builder_symbol Section_for_formula_body_son_builder_symbol_v.pipe_topson_formula_type_ofstring_constructors;;

let symbol_of_formula_topson_pattern_bare = section_for_formula_body_symbol_of_section_for_formula_body_son_top_symbol Section_for_formula_body_son_top_symbol_v.symbol_of_formula_topson_pattern_bare;;

let symbol_of_formula_topson_pattern_notleaf = section_for_formula_body_symbol_of_section_for_formula_body_son_top_symbol Section_for_formula_body_son_top_symbol_v.symbol_of_formula_topson_pattern_notleaf;;

let symbol_of_formula_topson_pattern_ofstring = section_for_formula_body_symbol_of_section_for_formula_body_son_top_symbol Section_for_formula_body_son_top_symbol_v.symbol_of_formula_topson_pattern_ofstring;;

let builder_tag_list_topson_pattern_bare_for_formula = section_for_formula_body_symbol_of_section_for_formula_body_son_top_builder_symbol Section_for_formula_body_son_top_builder_symbol_v.builder_tag_list_topson_pattern_bare_for_formula;;

let builder_tag_list_topson_pattern_notleaf_for_formula = section_for_formula_body_symbol_of_section_for_formula_body_son_top_builder_symbol Section_for_formula_body_son_top_builder_symbol_v.builder_tag_list_topson_pattern_notleaf_for_formula;;

let builder_tag_list_topson_pattern_ofstring_for_formula = section_for_formula_body_symbol_of_section_for_formula_body_son_top_builder_symbol Section_for_formula_body_son_top_builder_symbol_v.builder_tag_list_topson_pattern_ofstring_for_formula;;

let data_tag_list_topson_pattern_bare_for_formula = section_for_formula_body_symbol_of_section_for_formula_body_son_top_data_symbol Section_for_formula_body_son_top_data_symbol_v.data_tag_list_topson_pattern_bare_for_formula;;

let data_tag_list_topson_pattern_notleaf_for_formula = section_for_formula_body_symbol_of_section_for_formula_body_son_top_data_symbol Section_for_formula_body_son_top_data_symbol_v.data_tag_list_topson_pattern_notleaf_for_formula;;

let data_tag_list_topson_pattern_ofstring_for_formula = section_for_formula_body_symbol_of_section_for_formula_body_son_top_data_symbol Section_for_formula_body_son_top_data_symbol_v.data_tag_list_topson_pattern_ofstring_for_formula;;

let make_topson_pattern_notleaf_for_formula = section_for_formula_body_symbol_of_section_for_formula_body_son_top_main_symbol Section_for_formula_body_son_top_main_symbol_v.make_topson_pattern_notleaf_for_formula;;

let make_topson_pattern_bare_for_formula = section_for_formula_body_symbol_of_section_for_formula_body_son_top_main_builder_symbol Section_for_formula_body_son_top_main_builder_symbol_v.make_topson_pattern_bare_for_formula;;

let make_topson_pattern_ofstring_for_formula = section_for_formula_body_symbol_of_section_for_formula_body_son_top_main_builder_symbol Section_for_formula_body_son_top_main_builder_symbol_v.make_topson_pattern_ofstring_for_formula;;

let symbol_of_formula_in_name_top = section_for_formula_body_symbol_of_section_for_formula_body_top_symbol Section_for_formula_body_top_symbol_v.symbol_of_formula_in_name_top;;

let symbol_of_formula_in_string_off_top = section_for_formula_body_symbol_of_section_for_formula_body_top_symbol Section_for_formula_body_top_symbol_v.symbol_of_formula_in_string_off_top;;

let builder_formula_list = section_for_formula_body_symbol_of_section_for_formula_body_top_builder_symbol Section_for_formula_body_top_builder_symbol_v.builder_formula_list;;

let builder_tag_list_of_tag_for_formula = section_for_formula_body_symbol_of_section_for_formula_body_top_builder_symbol Section_for_formula_body_top_builder_symbol_v.builder_tag_list_of_tag_for_formula;;

let iter2_on_builder_tag_list = section_for_formula_body_symbol_of_section_for_formula_body_top_builder_symbol Section_for_formula_body_top_builder_symbol_v.iter2_on_builder_tag_list;;

let iter_on_builder_tag_list = section_for_formula_body_symbol_of_section_for_formula_body_top_builder_symbol Section_for_formula_body_top_builder_symbol_v.iter_on_builder_tag_list;;

let map2_on_builder_tag_list = section_for_formula_body_symbol_of_section_for_formula_body_top_builder_symbol Section_for_formula_body_top_builder_symbol_v.map2_on_builder_tag_list;;

let map_on_builder_tag_list = section_for_formula_body_symbol_of_section_for_formula_body_top_builder_symbol Section_for_formula_body_top_builder_symbol_v.map_on_builder_tag_list;;

let documentation_list_for_formula = section_for_formula_body_symbol_of_section_for_formula_body_top_builder_data_symbol Section_for_formula_body_top_builder_data_symbol_v.documentation_list_for_formula;;

let data_tag_list_of_tag_for_formula = section_for_formula_body_symbol_of_section_for_formula_body_top_data_symbol Section_for_formula_body_top_data_symbol_v.data_tag_list_of_tag_for_formula;;

let builder_node_sole_index_builder_list = section_for_formula_body_symbol_of_section_for_formula_body_top_main_builder_symbol Section_for_formula_body_top_main_builder_symbol_v.builder_node_sole_index_builder_list;;

let builder_stem_sole_index_data_list = section_for_formula_body_symbol_of_section_for_formula_body_top_main_data_symbol Section_for_formula_body_top_main_data_symbol_v.builder_stem_sole_index_data_list;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Section_for_formula_body_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Section_for_formula_body_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try section_for_formula_body_symbol_of_section_for_formula_body_builder_data_symbol
      (Section_for_formula_body_builder_data_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_builder_data_symbol:Section_for_formula_body_builder_data_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_localset_builder_symbol
      (Section_for_formula_body_localset_builder_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_localset_builder_symbol:Section_for_formula_body_localset_builder_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_localset_data_symbol
      (Section_for_formula_body_localset_data_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_localset_data_symbol:Section_for_formula_body_localset_data_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_son_builder_symbol
      (Section_for_formula_body_son_builder_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_son_builder_symbol:Section_for_formula_body_son_builder_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_son_top_symbol
      (Section_for_formula_body_son_top_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_son_top_symbol:Section_for_formula_body_son_top_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_son_top_builder_symbol
      (Section_for_formula_body_son_top_builder_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_son_top_builder_symbol:Section_for_formula_body_son_top_builder_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_son_top_data_symbol
      (Section_for_formula_body_son_top_data_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_son_top_data_symbol:Section_for_formula_body_son_top_data_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_son_top_main_symbol
      (Section_for_formula_body_son_top_main_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_son_top_main_symbol:Section_for_formula_body_son_top_main_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_son_top_main_builder_symbol
      (Section_for_formula_body_son_top_main_builder_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_son_top_main_builder_symbol:Section_for_formula_body_son_top_main_builder_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_top_symbol
      (Section_for_formula_body_top_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_top_symbol:Section_for_formula_body_top_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_top_builder_symbol
      (Section_for_formula_body_top_builder_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_top_builder_symbol:Section_for_formula_body_top_builder_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_top_builder_data_symbol
      (Section_for_formula_body_top_builder_data_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_top_builder_data_symbol:Section_for_formula_body_top_builder_data_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_top_data_symbol
      (Section_for_formula_body_top_data_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_top_data_symbol:Section_for_formula_body_top_data_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_top_main_builder_symbol
      (Section_for_formula_body_top_main_builder_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_top_main_builder_symbol:Section_for_formula_body_top_main_builder_symbol_v:make" ->
  try section_for_formula_body_symbol_of_section_for_formula_body_top_main_data_symbol
      (Section_for_formula_body_top_main_data_symbol_v.make nam s)
  with Failure "Not_a_section_for_formula_body_top_main_data_symbol:Section_for_formula_body_top_main_data_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Section_for_formula_body_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Section_for_formula_body_symbol_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Section_for_formula_body_symbol_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Section_for_formula_body_symbol_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_cod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Section_for_formula_body subtype" nam s)
      "it does not exists"
      "Check file Section_for_formula_body_symbol_v.ml"
    in
    failwith "Not_a_section_for_formula_body_symbol:Section_for_formula_body_symbol_v.ml:make"
;;


(** Section_for_formula_body_symbol_v at 20:0:11 on 30 May 2013. created by version v1.13 of generator *)



