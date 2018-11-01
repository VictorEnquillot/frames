(** {3 Camlline_for_symbol_duo_son_top_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_symbol_duo_son_top_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_bare_symbol sym_stb ->
    Camlline_for_symbol_duo_son_top_bare_symbol_v.name sym_stb
  | Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_notleaf_symbol sym_stn ->
    Camlline_for_symbol_duo_son_top_notleaf_symbol_v.name sym_stn
  | Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_ofstring_symbol sym_sto ->
    Camlline_for_symbol_duo_son_top_ofstring_symbol_v.name sym_sto
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_bare_symbol sym_stb ->
  Camlline_for_symbol_duo_son_top_bare_symbol_v.string_off sym_stb
  | Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_notleaf_symbol sym_stn ->
  Camlline_for_symbol_duo_son_top_notleaf_symbol_v.string_off sym_stn
  | Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_ofstring_symbol sym_sto ->
  Camlline_for_symbol_duo_son_top_ofstring_symbol_v.string_off sym_sto
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_dst =
  Format.sprintf "Camlline_for_symbol_duo_son_top_symbol_t.%s" (String.capitalize_ascii (name sym_dst))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_dst =
  Format.sprintf "%s \"%s\"" (longname sym_dst) (string_off sym_dst)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol = function
  | Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_bare_symbol sym_stb -> sym_stb
  | sym_dst -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol"
      "Camlline_for_symbol_duo_son_top_bare_symbol"
      (name sym_dst) "check"
;;

let camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol = function
  | Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_notleaf_symbol sym_stn -> sym_stn
  | sym_dst -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol"
      "Camlline_for_symbol_duo_son_top_notleaf_symbol"
      (name sym_dst) "check"
;;

let camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_son_top_symbol = function
  | Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_ofstring_symbol sym_sto -> sym_sto
  | sym_dst -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_son_top_symbol"
      "Camlline_for_symbol_duo_son_top_ofstring_symbol"
      (name sym_dst) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol = function
  | Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_bare_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol = function
  | Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_notleaf_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_son_top_symbol = function
  | Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_ofstring_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_et_symbol_tdot_es sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stb = camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_bare_symbol_v.is_et_symbol_tdot_es sym_stb
    end
;;

let is_let_ac_at_equal_et_symbol_vdot_es_in sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stb = camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_bare_symbol_v.is_let_ac_at_equal_et_symbol_vdot_es_in sym_stb
    end
;;

let is_let_es_equal_et_symbol_tdot_es sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stb = camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_bare_symbol_v.is_let_es_equal_et_symbol_tdot_es sym_stb
    end
;;

let is_pipe_et_symbol_tdot_es_arrow sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stb = camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_bare_symbol_v.is_pipe_et_symbol_tdot_es_arrow sym_stb
    end
;;

let is_pipe_et_symbol_tdot_es_arrow_emptystring sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stb = camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_bare_symbol_v.is_pipe_et_symbol_tdot_es_arrow_emptystring sym_stb
    end
;;

let is_pipe_et_symbol_tdot_es_arrow_string sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stb = camlline_for_symbol_duo_son_top_bare_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_bare_symbol_v.is_pipe_et_symbol_tdot_es_arrow_string sym_stb
    end
;;

let is_et_symbol_tdot_es_symbol sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stn = camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_notleaf_symbol_v.is_et_symbol_tdot_es_symbol sym_stn
    end
;;

let is_let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stn = camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_notleaf_symbol_v.is_let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es sym_stn
    end
;;

let is_let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stn = camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_notleaf_symbol_v.is_let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg sym_stn
    end
;;

let is_pipe_et_symbol_tdot_es_symbol_sym_as_arrow sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stn = camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_notleaf_symbol_v.is_pipe_et_symbol_tdot_es_symbol_sym_as_arrow sym_stn
    end
;;

let is_et_symbol_of_es_symbol_sym_as sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stn = camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_notleaf_symbol_v.is_et_symbol_of_es_symbol_sym_as sym_stn
    end
;;

let is_et_symbol_tdot_es_symbol_sym_as sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stn = camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_notleaf_symbol_v.is_et_symbol_tdot_es_symbol_sym_as sym_stn
    end
;;

let is_pipe_et_symbol_tdot_es_symbol_underscore_arrow_string sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stn = camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_notleaf_symbol_v.is_pipe_et_symbol_tdot_es_symbol_underscore_arrow_string sym_stn
    end
;;

let is_try_et_symbol_of_es_symbol sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_stn = camlline_for_symbol_duo_son_top_notleaf_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_notleaf_symbol_v.is_try_et_symbol_of_es_symbol sym_stn
    end
;;

let is_et_symbol_tdot_es_sarg sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_sto = camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_ofstring_symbol_v.is_et_symbol_tdot_es_sarg sym_sto
    end
;;

let is_let_es_sarg_equal_et_symbol_tdot_es_sarg sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_sto = camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_ofstring_symbol_v.is_let_es_sarg_equal_et_symbol_tdot_es_sarg sym_sto
    end
;;

let is_pipe_et_symbol_tdot_es_sarg_arrow sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_sto = camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_ofstring_symbol_v.is_pipe_et_symbol_tdot_es_sarg_arrow sym_sto
    end
;;

let is_pipe_et_symbol_tdot_es_sarg_arrow_sarg sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_sto = camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_ofstring_symbol_v.is_pipe_et_symbol_tdot_es_sarg_arrow_sarg sym_sto
    end
;;

let is_pipe_et_symbol_tdot_es_underscore_arrow_string sym_dst =
  if not (is_camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst)
  then false
  else
    begin
      let sym_sto = camlline_for_symbol_duo_son_top_ofstring_symbol_off_camlline_for_symbol_duo_son_top_symbol sym_dst in
      Camlline_for_symbol_duo_son_top_ofstring_symbol_v.is_pipe_et_symbol_tdot_es_underscore_arrow_string sym_sto
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol sym_stb = 
  Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_bare_symbol sym_stb
;;

let camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol sym_stn = 
  Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_notleaf_symbol sym_stn
;;

let camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol sym_sto = 
  Camlline_for_symbol_duo_son_top_symbol_t.Camlline_for_symbol_duo_son_top_ofstring_symbol sym_sto
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let et_symbol_tdot_es = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol Camlline_for_symbol_duo_son_top_bare_symbol_v.et_symbol_tdot_es;;

let let_sym_at_equal_et_symbol_vdot_es_in = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol Camlline_for_symbol_duo_son_top_bare_symbol_v.let_sym_at_equal_et_symbol_vdot_es_in;;

let let_es_equal_et_symbol_tdot_es = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol Camlline_for_symbol_duo_son_top_bare_symbol_v.let_es_equal_et_symbol_tdot_es;;

let pipe_et_symbol_tdot_es_arrow = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol Camlline_for_symbol_duo_son_top_bare_symbol_v.pipe_et_symbol_tdot_es_arrow;;

let pipe_et_symbol_tdot_es_arrow_emptystring = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol Camlline_for_symbol_duo_son_top_bare_symbol_v.pipe_et_symbol_tdot_es_arrow_emptystring;;

let pipe_et_symbol_tdot_es_arrow_string = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol Camlline_for_symbol_duo_son_top_bare_symbol_v.pipe_et_symbol_tdot_es_arrow_string;;

let et_symbol_tdot_es_symbol = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol Camlline_for_symbol_duo_son_top_notleaf_symbol_v.et_symbol_tdot_es_symbol;;

let let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol Camlline_for_symbol_duo_son_top_notleaf_symbol_v.let_es_equal_et_symbol_of_es_symbol_es_symbol_vdot_es;;

let let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol Camlline_for_symbol_duo_son_top_notleaf_symbol_v.let_es_symbol_arg_equal_et_symbol_tdot_es_symbol_arg;;

let pipe_et_symbol_tdot_es_symbol_sym_as_arrow = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol Camlline_for_symbol_duo_son_top_notleaf_symbol_v.pipe_et_symbol_tdot_es_symbol_sym_as_arrow;;

let et_symbol_of_es_symbol_sym_as = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol Camlline_for_symbol_duo_son_top_notleaf_symbol_v.et_symbol_of_es_symbol_sym_as;;

let et_symbol_tdot_es_symbol_sym_as = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol Camlline_for_symbol_duo_son_top_notleaf_symbol_v.et_symbol_tdot_es_symbol_sym_as;;

let pipe_et_symbol_tdot_es_symbol_underscore_arrow_string = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol Camlline_for_symbol_duo_son_top_notleaf_symbol_v.pipe_et_symbol_tdot_es_symbol_underscore_arrow_string;;

let try_et_symbol_of_es_symbol = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol Camlline_for_symbol_duo_son_top_notleaf_symbol_v.try_et_symbol_of_es_symbol;;

let et_symbol_tdot_es_sarg = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol Camlline_for_symbol_duo_son_top_ofstring_symbol_v.et_symbol_tdot_es_sarg;;

let let_es_sarg_equal_et_symbol_tdot_es_sarg = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol Camlline_for_symbol_duo_son_top_ofstring_symbol_v.let_es_sarg_equal_et_symbol_tdot_es_sarg;;

let pipe_et_symbol_tdot_es_sarg_arrow = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol Camlline_for_symbol_duo_son_top_ofstring_symbol_v.pipe_et_symbol_tdot_es_sarg_arrow;;

let pipe_et_symbol_tdot_es_sarg_arrow_sarg = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol Camlline_for_symbol_duo_son_top_ofstring_symbol_v.pipe_et_symbol_tdot_es_sarg_arrow_sarg;;

let pipe_et_symbol_tdot_es_underscore_arrow_string = camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol Camlline_for_symbol_duo_son_top_ofstring_symbol_v.pipe_et_symbol_tdot_es_underscore_arrow_string;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_symbol_duo_son_top_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_symbol_duo_son_top_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_bare_symbol
      (Camlline_for_symbol_duo_son_top_bare_symbol_v.make nam s)
  with Failure s1 ->
    match s1 with
    | "Not_Camlline_for_symbol_duo_son_top_bare_symbol:Camlline_for_symbol_duo_son_top_bare_symbol_v:make" ->
	begin
	  try camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_notleaf_symbol
	      (Camlline_for_symbol_duo_son_top_notleaf_symbol_v.make nam s)
	  with Failure s2 ->
	    match s2 with
	    | "Not_Camlline_for_symbol_duo_son_top_notleaf_symbol:Camlline_for_symbol_duo_son_top_notleaf_symbol_v:make" ->
		begin
		  try camlline_for_symbol_duo_son_top_symbol_of_camlline_for_symbol_duo_son_top_ofstring_symbol
		      (Camlline_for_symbol_duo_son_top_ofstring_symbol_v.make nam s)
		  with Failure s3 ->
		    match s3 with
		    | "Not_Camlline_for_symbol_duo_son_top_ofstring_symbol:Camlline_for_symbol_duo_son_top_ofstring_symbol_v:make" ->
			failwith "Not_a_topson_notleaf:Camlline_for_symbol_duo_son_top_symbol_v.ml:make_of_topson_notleaf"
		    | _ -> failwith s3
		end
	    | _ -> failwith s2
	end
    | _ -> failwith s1
;;

(** {6 Making_for_symbol} *)

let make nam str =
  try make_of_topson_bare nam
  with Failure s1 ->
    match s1 with
    | "Not_a_topson_bare:Camlline_for_symbol_duo_son_top_symbol_v.ml:make_of_topson_bare" ->
	begin
	  try make_of_topson_ofstring nam str
	  with Failure s2 ->
	    match s2 with
	    | "Not_a_topson_ofstring:Camlline_for_symbol_duo_son_top_symbol_v.ml:make_of_topson_ofstring" ->
		begin
		  try make_of_topson_notleaf nam str
		  with Failure s3 ->
		    match s3 with
		    | "Not_a_topson_notleaf:Camlline_for_symbol_duo_son_top_symbol_v.ml:make_of_topson_notleaf" ->
			begin
			  let _ =
			    Error_messages_v.print_error nam_cod "make"
			      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figure_set_fence_point subtype" nam str)
			      "it does not exists"
			      "Check file Camlline_for_symbol_duo_son_top_symbol_v.ml"
			  in
			  failwith "Not_a_figure_set_fence_point_symbol:Camlline_for_symbol_duo_son_top_symbol_v.ml:make"
			end
		    | _ -> failwith s3
		end
	    | _ -> failwith s2
	end
    | _ -> failwith s1
;;

(** modified Failures at lundi 29 octobre 2018, 10:41:37 (UTC+0100) *)


(** created by version v1.11 of ./generator camlline_for_symbol_duo_son_top implementation_for_symbol symbol at 9:15 6 May 2013. *)



