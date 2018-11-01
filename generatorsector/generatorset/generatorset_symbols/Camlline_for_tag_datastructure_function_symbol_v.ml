(** {3 Camlline_for_tag_datastructure_function_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_tag_datastructure_function_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_iter_symbol sym_dfi ->
    Camlline_for_tag_datastructure_function_iter_symbol_v.name sym_dfi
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_make_symbol sym_dfm ->
    Camlline_for_tag_datastructure_function_make_symbol_v.name sym_dfm
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_name -> "camlline_for_tag_datastructure_function_name"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_iter_symbol sym_dfi ->
  Camlline_for_tag_datastructure_function_iter_symbol_v.string_off sym_dfi
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_make_symbol sym_dfm ->
  Camlline_for_tag_datastructure_function_make_symbol_v.string_off sym_dfm
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_name -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_tdf =
  Format.sprintf "Camlline_for_tag_datastructure_function_symbol_t.%s" (String.capitalize_ascii (name sym_tdf))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_tdf =
  Format.sprintf "%s \"%s\"" (longname sym_tdf) (string_off sym_tdf)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_function_symbol = function
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_iter_symbol sym_dfi -> sym_dfi
  | sym_tdf -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_function_symbol"
      "Camlline_for_tag_datastructure_function_iter_symbol"
      (name sym_tdf) "check"
;;

let camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol = function
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_make_symbol sym_dfm -> sym_dfm
  | sym_tdf -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol"
      "Camlline_for_tag_datastructure_function_make_symbol"
      (name sym_tdf) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf = 
  let sym_dfm = camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf in
    Camlline_for_tag_datastructure_function_make_symbol_v.camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_function_make_symbol sym_dfm
;;

let camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf = 
  let sym_dfm = camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf in
    Camlline_for_tag_datastructure_function_make_symbol_v.camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_function_make_symbol sym_dfm
;;

let camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf = 
  let sym_dfm = camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf in
    Camlline_for_tag_datastructure_function_make_symbol_v.camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_function_make_symbol sym_dfm
;;


(** {6 Querying_topson_bare_for_symbol} *)

let is_camlline_for_tag_datastructure_function_name = function
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_name -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_function_symbol = function
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_iter_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol = function
  | Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_make_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_let_map_equal_das_vdot_map sym_tdf =
  if not (is_camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf)
  then false
  else
    begin
      let sym_dfi = camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf in
      Camlline_for_tag_datastructure_function_iter_symbol_v.is_let_map_equal_das_vdot_map sym_dfi
    end
;;

let is_let_map2_equal_das_vdot_map2 sym_tdf =
  if not (is_camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf)
  then false
  else
    begin
      let sym_dfi = camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf in
      Camlline_for_tag_datastructure_function_iter_symbol_v.is_let_map2_equal_das_vdot_map2 sym_dfi
    end
;;

let is_let_iter_equal_das_vdot_iter sym_tdf =
  if not (is_camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf)
  then false
  else
    begin
      let sym_dfi = camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf in
      Camlline_for_tag_datastructure_function_iter_symbol_v.is_let_iter_equal_das_vdot_iter sym_dfi
    end
;;

let is_let_iter2_equal_das_vdot_iter2 sym_tdf =
  if not (is_camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf)
  then false
  else
    begin
      let sym_dfi = camlline_for_tag_datastructure_function_iter_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf in
      Camlline_for_tag_datastructure_function_iter_symbol_v.is_let_iter2_equal_das_vdot_iter2 sym_dfi
    end
;;

let is_das_vdot_make_tag_a sym_tdf =
  if not (is_camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf)
  then false
  else
    begin
      let sym_dfm = camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf in
      Camlline_for_tag_datastructure_function_make_symbol_v.is_das_vdot_make_tag_a sym_dfm
    end
;;

let is_das_vdot_make_tag_a_tag_b sym_tdf =
  if not (is_camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf)
  then false
  else
    begin
      let sym_dfm = camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf in
      Camlline_for_tag_datastructure_function_make_symbol_v.is_das_vdot_make_tag_a_tag_b sym_dfm
    end
;;

let is_das_vdot_make_tag_a_tag_b_tag_c sym_tdf =
  if not (is_camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf)
  then false
  else
    begin
      let sym_dfm = camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf in
      Camlline_for_tag_datastructure_function_make_symbol_v.is_das_vdot_make_tag_a_tag_b_tag_c sym_dfm
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf =
  if not (is_camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf)
  then false
  else
    begin
  let sym_dfm = camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf in
  Camlline_for_tag_datastructure_function_make_symbol_v.is_camlline_for_tag_datastructure_function_make_uno_symbol_off_camlline_for_tag_datastructure_function_make_symbol sym_dfm
    end
;;

let is_camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf =
  if not (is_camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf)
  then false
  else
    begin
  let sym_dfm = camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf in
  Camlline_for_tag_datastructure_function_make_symbol_v.is_camlline_for_tag_datastructure_function_make_duo_symbol_off_camlline_for_tag_datastructure_function_make_symbol sym_dfm
    end
;;

let is_camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf =
  if not (is_camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf)
  then false
  else
    begin
  let sym_dfm = camlline_for_tag_datastructure_function_make_symbol_off_camlline_for_tag_datastructure_function_symbol sym_tdf in
  Camlline_for_tag_datastructure_function_make_symbol_v.is_camlline_for_tag_datastructure_function_make_trio_symbol_off_camlline_for_tag_datastructure_function_make_symbol sym_dfm
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_iter_symbol sym_dfi = 
  Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_iter_symbol sym_dfi
;;

let camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_symbol sym_dfm = 
  Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_make_symbol sym_dfm
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_uno_symbol sym_fmu = 
  let sym_dfm = Camlline_for_tag_datastructure_function_make_symbol_v.camlline_for_tag_datastructure_function_make_symbol_of_camlline_for_tag_datastructure_function_make_uno_symbol sym_fmu in
    camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_symbol sym_dfm
;;

let camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_duo_symbol sym_fmd = 
  let sym_dfm = Camlline_for_tag_datastructure_function_make_symbol_v.camlline_for_tag_datastructure_function_make_symbol_of_camlline_for_tag_datastructure_function_make_duo_symbol sym_fmd in
    camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_symbol sym_dfm
;;

let camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_trio_symbol sym_fmt = 
  let sym_dfm = Camlline_for_tag_datastructure_function_make_symbol_v.camlline_for_tag_datastructure_function_make_symbol_of_camlline_for_tag_datastructure_function_make_trio_symbol sym_fmt in
    camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_symbol sym_dfm
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)

let camlline_for_tag_datastructure_function_name = Camlline_for_tag_datastructure_function_symbol_t.Camlline_for_tag_datastructure_function_name;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let let_map_equal_das_vdot_map = camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_iter_symbol Camlline_for_tag_datastructure_function_iter_symbol_v.let_map_equal_das_vdot_map;;

let let_map2_equal_das_vdot_map2 = camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_iter_symbol Camlline_for_tag_datastructure_function_iter_symbol_v.let_map2_equal_das_vdot_map2;;

let let_iter_equal_das_vdot_iter = camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_iter_symbol Camlline_for_tag_datastructure_function_iter_symbol_v.let_iter_equal_das_vdot_iter;;

let let_iter2_equal_das_vdot_iter2 = camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_iter_symbol Camlline_for_tag_datastructure_function_iter_symbol_v.let_iter2_equal_das_vdot_iter2;;

let das_vdot_make_tag_a = camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_symbol Camlline_for_tag_datastructure_function_make_symbol_v.das_vdot_make_tag_a;;

let das_vdot_make_tag_a_tag_b = camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_symbol Camlline_for_tag_datastructure_function_make_symbol_v.das_vdot_make_tag_a_tag_b;;

let das_vdot_make_tag_a_tag_b_tag_c = camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_symbol Camlline_for_tag_datastructure_function_make_symbol_v.das_vdot_make_tag_a_tag_b_tag_c;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "camlline_for_tag_datastructure_function_name" -> camlline_for_tag_datastructure_function_name
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_tag_datastructure_function_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_tag_datastructure_function_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_iter_symbol
      (Camlline_for_tag_datastructure_function_iter_symbol_v.make nam s)
  with Failure s1 ->
    match s1 with
    | "Not_Camlline_for_tag_datastructure_function_iter_symbol:Camlline_for_tag_datastructure_function_iter_symbol_v:make" ->
	begin
	  try camlline_for_tag_datastructure_function_symbol_of_camlline_for_tag_datastructure_function_make_symbol
	      (Camlline_for_tag_datastructure_function_make_symbol_v.make nam s)
	  with Failure s2 ->
	    match s2 with
	    | "Not_Camlline_for_tag_datastructure_function_make_symbol:Camlline_for_tag_datastructure_function_make_symbol_v:make" ->
		failwith "Not_a_topson_notleaf:Camlline_for_tag_datastructure_function_symbol_v.ml:make_of_topson_notleaf"
	    | _ -> failwith s2
	end
    | _ -> failwith s1
;;

(** {6 Making_for_symbol} *)

let make nam str =
  try make_of_topson_bare nam
  with Failure s1 ->
    match s1 with
    | "Not_a_topson_bare:Camlline_for_tag_datastructure_function_symbol_v.ml:make_of_topson_bare" ->
	begin
	  try make_of_topson_ofstring nam str
	  with Failure s2 ->
	    match s2 with
	    | "Not_a_topson_ofstring:Camlline_for_tag_datastructure_function_symbol_v.ml:make_of_topson_ofstring" ->
		begin
		  try make_of_topson_notleaf nam str
		  with Failure s3 ->
		    match s3 with
		    | "Not_a_topson_notleaf:Camlline_for_tag_datastructure_function_symbol_v.ml:make_of_topson_notleaf" ->
			begin
			  let _ =
			    Error_messages_v.print_error nam_cod "make"
			      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figure_set_fence_point subtype" nam str)
			      "it does not exists"
			      "Check file Camlline_for_tag_datastructure_function_symbol_v.ml"
			  in
			  failwith "Not_a_figure_set_fence_point_symbol:Camlline_for_tag_datastructure_function_symbol_v.ml:make"
			end
		    | _ -> failwith s3
		end
	    | _ -> failwith s2
	end
    | _ -> failwith s1
;;

(** modified Failures at lundi 29 octobre 2018, 09:38:27 (UTC+0100) *)

(** created by version v1.11 of ./generator camlline_for_tag_datastructure_function implementation_for_symbol symbol at 9:15 6 May 2013. *)



