(** {3 Camlline_for_formula_trio_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_formula_trio_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_builder_symbol sym_stb ->
    Camlline_for_formula_trio_son_top_builder_symbol_v.name sym_stb
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_data_symbol sym_std ->
    Camlline_for_formula_trio_son_top_data_symbol_v.name sym_std
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_builder_data_symbol sym_tbd ->
    Camlline_for_formula_trio_top_builder_data_symbol_v.name sym_tbd
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_main_builder_symbol sym_tmb ->
    Camlline_for_formula_trio_top_main_builder_symbol_v.name sym_tmb
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_builder_symbol sym_stb ->
  Camlline_for_formula_trio_son_top_builder_symbol_v.string_off sym_stb
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_data_symbol sym_std ->
  Camlline_for_formula_trio_son_top_data_symbol_v.string_off sym_std
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_builder_data_symbol sym_tbd ->
  Camlline_for_formula_trio_top_builder_data_symbol_v.string_off sym_tbd
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_main_builder_symbol sym_tmb ->
  Camlline_for_formula_trio_top_main_builder_symbol_v.string_off sym_tmb
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fft =
  Format.sprintf "Camlline_for_formula_trio_symbol_t.%s" (String.capitalize_ascii (name sym_fft))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fft =
  Format.sprintf "%s \"%s\"" (longname sym_fft) (string_off sym_fft)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_trio_symbol = function
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_builder_symbol sym_stb -> sym_stb
  | sym_fft -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_trio_symbol"
      "Camlline_for_formula_trio_son_top_builder_symbol"
      (name sym_fft) "check"
;;

let camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_trio_symbol = function
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_data_symbol sym_std -> sym_std
  | sym_fft -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_trio_symbol"
      "Camlline_for_formula_trio_son_top_data_symbol"
      (name sym_fft) "check"
;;

let camlline_for_formula_trio_top_builder_data_symbol_off_camlline_for_formula_trio_symbol = function
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_builder_data_symbol sym_tbd -> sym_tbd
  | sym_fft -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_trio_top_builder_data_symbol_off_camlline_for_formula_trio_symbol"
      "Camlline_for_formula_trio_top_builder_data_symbol"
      (name sym_fft) "check"
;;

let camlline_for_formula_trio_top_main_builder_symbol_off_camlline_for_formula_trio_symbol = function
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_main_builder_symbol sym_tmb -> sym_tmb
  | sym_fft -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_formula_trio_top_main_builder_symbol_off_camlline_for_formula_trio_symbol"
      "Camlline_for_formula_trio_top_main_builder_symbol"
      (name sym_fft) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_trio_symbol = function
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_builder_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_trio_symbol = function
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_data_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_trio_top_builder_data_symbol_off_camlline_for_formula_trio_symbol = function
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_builder_data_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_formula_trio_top_main_builder_symbol_off_camlline_for_formula_trio_symbol = function
  | Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_main_builder_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar sym_fft =
  if not (is_camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft)
  then false
  else
    begin
      let sym_stb = camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft in
      Camlline_for_formula_trio_son_top_builder_symbol_v.is_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar sym_stb
    end
;;

let is_et_formula_tdot_es_tag_ab_l sym_fft =
  if not (is_camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft)
  then false
  else
    begin
      let sym_stb = camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft in
      Camlline_for_formula_trio_son_top_builder_symbol_v.is_et_formula_tdot_es_tag_ab_l sym_stb
    end
;;

let is_pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l sym_fft =
  if not (is_camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft)
  then false
  else
    begin
      let sym_stb = camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft in
      Camlline_for_formula_trio_son_top_builder_symbol_v.is_pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l sym_stb
    end
;;

let is_pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l sym_fft =
  if not (is_camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft)
  then false
  else
    begin
      let sym_stb = camlline_for_formula_trio_son_top_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft in
      Camlline_for_formula_trio_son_top_builder_symbol_v.is_pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l sym_stb
    end
;;

let is_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar sym_fft =
  if not (is_camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_trio_symbol sym_fft)
  then false
  else
    begin
      let sym_std = camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_trio_symbol sym_fft in
      Camlline_for_formula_trio_son_top_data_symbol_v.is_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar sym_std
    end
;;

let is_et_formula_tdot_es_tag_ad_l sym_fft =
  if not (is_camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_trio_symbol sym_fft)
  then false
  else
    begin
      let sym_std = camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_trio_symbol sym_fft in
      Camlline_for_formula_trio_son_top_data_symbol_v.is_et_formula_tdot_es_tag_ad_l sym_std
    end
;;

let is_pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar_arrow_tag_ad_l sym_fft =
  if not (is_camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_trio_symbol sym_fft)
  then false
  else
    begin
      let sym_std = camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_trio_symbol sym_fft in
      Camlline_for_formula_trio_son_top_data_symbol_v.is_pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar_arrow_tag_ad_l sym_std
    end
;;

let is_pipe_et_formula_tdot_es_tag_ad_l_arrow_tag_ad_l sym_fft =
  if not (is_camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_trio_symbol sym_fft)
  then false
  else
    begin
      let sym_std = camlline_for_formula_trio_son_top_data_symbol_off_camlline_for_formula_trio_symbol sym_fft in
      Camlline_for_formula_trio_son_top_data_symbol_v.is_pipe_et_formula_tdot_es_tag_ad_l_arrow_tag_ad_l sym_std
    end
;;

let is_let_tag_ab_l_equal_ed_tag_list_off_et_formula_for_at_in sym_fft =
  if not (is_camlline_for_formula_trio_top_builder_data_symbol_off_camlline_for_formula_trio_symbol sym_fft)
  then false
  else
    begin
      let sym_tbd = camlline_for_formula_trio_top_builder_data_symbol_off_camlline_for_formula_trio_symbol sym_fft in
      Camlline_for_formula_trio_top_builder_data_symbol_v.is_let_tag_ab_l_equal_ed_tag_list_off_et_formula_for_at_in sym_tbd
    end
;;

let is_let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in sym_fft =
  if not (is_camlline_for_formula_trio_top_main_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft)
  then false
  else
    begin
      let sym_tmb = camlline_for_formula_trio_top_main_builder_symbol_off_camlline_for_formula_trio_symbol sym_fft in
      Camlline_for_formula_trio_top_main_builder_symbol_v.is_let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in sym_tmb
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_builder_symbol sym_stb = 
  Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_builder_symbol sym_stb
;;

let camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_data_symbol sym_std = 
  Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_son_top_data_symbol sym_std
;;

let camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_top_builder_data_symbol sym_tbd = 
  Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_builder_data_symbol sym_tbd
;;

let camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_top_main_builder_symbol sym_tmb = 
  Camlline_for_formula_trio_symbol_t.Camlline_for_formula_trio_top_main_builder_symbol sym_tmb
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar = camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_builder_symbol Camlline_for_formula_trio_son_top_builder_symbol_v.et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar;;

let et_formula_tdot_es_tag_ab_l = camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_builder_symbol Camlline_for_formula_trio_son_top_builder_symbol_v.et_formula_tdot_es_tag_ab_l;;

let pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l = camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_builder_symbol Camlline_for_formula_trio_son_top_builder_symbol_v.pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ab_l_rpar_arrow_tag_ab_l;;

let pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l = camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_builder_symbol Camlline_for_formula_trio_son_top_builder_symbol_v.pipe_et_formula_tdot_es_tag_ab_l_arrow_tag_ab_l;;

let et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar = camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_data_symbol Camlline_for_formula_trio_son_top_data_symbol_v.et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar;;

let et_formula_tdot_es_tag_ad_l = camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_data_symbol Camlline_for_formula_trio_son_top_data_symbol_v.et_formula_tdot_es_tag_ad_l;;

let pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar_arrow_tag_ad_l = camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_data_symbol Camlline_for_formula_trio_son_top_data_symbol_v.pipe_et_formula_tdot_es_lpar_sarg_comma_tag_ad_l_rpar_arrow_tag_ad_l;;

let pipe_et_formula_tdot_es_tag_ad_l_arrow_tag_ad_l = camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_data_symbol Camlline_for_formula_trio_son_top_data_symbol_v.pipe_et_formula_tdot_es_tag_ad_l_arrow_tag_ad_l;;

let let_tag_ab_l_equal_ed_tag_list_off_et_formula_for_at_in = camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_top_builder_data_symbol Camlline_for_formula_trio_top_builder_data_symbol_v.let_tag_ab_l_equal_ed_tag_list_off_et_formula_for_at_in;;

let let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in = camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_top_main_builder_symbol Camlline_for_formula_trio_top_main_builder_symbol_v.let_tag_ab_l_equal_build_n_store_sym_at_soi_mai_in;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_formula_trio_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_formula_trio_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_builder_symbol
      (Camlline_for_formula_trio_son_top_builder_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_trio_son_top_builder_symbol:Camlline_for_formula_trio_son_top_builder_symbol_v:make" ->
  try camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_son_top_data_symbol
      (Camlline_for_formula_trio_son_top_data_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_trio_son_top_data_symbol:Camlline_for_formula_trio_son_top_data_symbol_v:make" ->
  try camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_top_builder_data_symbol
      (Camlline_for_formula_trio_top_builder_data_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_trio_top_builder_data_symbol:Camlline_for_formula_trio_top_builder_data_symbol_v:make" ->
  try camlline_for_formula_trio_symbol_of_camlline_for_formula_trio_top_main_builder_symbol
      (Camlline_for_formula_trio_top_main_builder_symbol_v.make nam s)
  with Failure "Not_Camlline_for_formula_trio_top_main_builder_symbol:Camlline_for_formula_trio_top_main_builder_symbol_v:make" ->
  failwith "Not_a_topson_notleaf:Camlline_for_formula_trio_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam str =
  try make_of_topson_bare nam
  with Failure s1 ->
    match s1 with
    | "Not_a_topson_bare:Camlline_for_formula_trio_symbol_v.ml:make_of_topson_bare" ->
	begin
	  try make_of_topson_ofstring nam str
	  with Failure s2 ->
	    match s2 with
	    | "Not_a_topson_ofstring:Camlline_for_formula_trio_symbol_v.ml:make_of_topson_ofstring" ->
		begin
		  try make_of_topson_notleaf nam str
		  with Failure s3 ->
		    match s3 with
		    | "Not_a_topson_notleaf:Camlline_for_formula_trio_symbol_v.ml:make_of_topson_notleaf" ->
			begin
			  let _ =
			    Error_messages_v.print_error nam_cod "make"
			      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figure_set_fence_point subtype" nam str)
			      "it does not exists"
			      "Check file Camlline_for_formula_trio_symbol_v.ml"
			  in
			  failwith "Not_a_figure_set_fence_point_symbol:Camlline_for_formula_trio_symbol_v.ml:make"
			end
		    | _ -> failwith s3
		end
	    | _ -> failwith s2
	end
    | _ -> failwith s1
;;

(** modified Failures at lundi 29 octobre 2018, 10:56:09 (UTC+0100) *)


(** created by version v1.11 of ./generator camlline_for_formula_trio implementation_for_symbol symbol at 9:15 6 May 2013. *)



