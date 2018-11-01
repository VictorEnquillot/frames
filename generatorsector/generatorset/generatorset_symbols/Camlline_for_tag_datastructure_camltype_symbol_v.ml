(** {3 Camlline_for_tag_datastructure_camltype_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_tag_datastructure_camltype_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_uno_symbol sym_dcu ->
    Camlline_for_tag_datastructure_camltype_uno_symbol_v.name sym_dcu
  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_duo_symbol sym_dcd ->
    Camlline_for_tag_datastructure_camltype_duo_symbol_v.name sym_dcd
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_uno_symbol sym_dcu ->
  Camlline_for_tag_datastructure_camltype_uno_symbol_v.string_off sym_dcu
  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_duo_symbol sym_dcd ->
  Camlline_for_tag_datastructure_camltype_duo_symbol_v.string_off sym_dcd
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_tdc =
  Format.sprintf "Camlline_for_tag_datastructure_camltype_symbol_t.%s" (String.capitalize_ascii (name sym_tdc))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_tdc =
  Format.sprintf "%s \"%s\"" (longname sym_tdc) (string_off sym_tdc)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_datastructure_camltype_symbol = function
  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_uno_symbol sym_dcu -> sym_dcu
  | sym_tdc -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_datastructure_camltype_symbol"
      "Camlline_for_tag_datastructure_camltype_uno_symbol"
      (name sym_tdc) "check"
;;

let camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_datastructure_camltype_symbol = function
  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_duo_symbol sym_dcd -> sym_dcd
  | sym_tdc -> Error_messages_v.print_fatal_error
      nam_cod "camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_datastructure_camltype_symbol"
      "Camlline_for_tag_datastructure_camltype_duo_symbol"
      (name sym_tdc) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_datastructure_camltype_symbol = function
  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_uno_symbol _ -> true
  | _ -> false
;;

let is_camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_datastructure_camltype_symbol = function
  | Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_duo_symbol _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_lpar_a_tag_rpar sym_tdc =
  if not (is_camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_datastructure_camltype_symbol sym_tdc)
  then false
  else
    begin
      let sym_dcu = camlline_for_tag_datastructure_camltype_uno_symbol_off_camlline_for_tag_datastructure_camltype_symbol sym_tdc in
      Camlline_for_tag_datastructure_camltype_uno_symbol_v.is_lpar_a_tag_rpar sym_dcu
    end
;;

let is_lpar_a_b_tag_rpar sym_tdc =
  if not (is_camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_datastructure_camltype_symbol sym_tdc)
  then false
  else
    begin
      let sym_dcd = camlline_for_tag_datastructure_camltype_duo_symbol_off_camlline_for_tag_datastructure_camltype_symbol sym_tdc in
      Camlline_for_tag_datastructure_camltype_duo_symbol_v.is_lpar_a_b_tag_rpar sym_dcd
    end
;;


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let camlline_for_tag_datastructure_camltype_symbol_of_camlline_for_tag_datastructure_camltype_uno_symbol sym_dcu = 
  Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_uno_symbol sym_dcu
;;

let camlline_for_tag_datastructure_camltype_symbol_of_camlline_for_tag_datastructure_camltype_duo_symbol sym_dcd = 
  Camlline_for_tag_datastructure_camltype_symbol_t.Camlline_for_tag_datastructure_camltype_duo_symbol sym_dcd
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let lpar_a_tag_rpar = camlline_for_tag_datastructure_camltype_symbol_of_camlline_for_tag_datastructure_camltype_uno_symbol Camlline_for_tag_datastructure_camltype_uno_symbol_v.lpar_a_tag_rpar;;

let lpar_a_b_tag_rpar = camlline_for_tag_datastructure_camltype_symbol_of_camlline_for_tag_datastructure_camltype_duo_symbol Camlline_for_tag_datastructure_camltype_duo_symbol_v.lpar_a_b_tag_rpar;;


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_tag_datastructure_camltype_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_tag_datastructure_camltype_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try camlline_for_tag_datastructure_camltype_symbol_of_camlline_for_tag_datastructure_camltype_uno_symbol
      (Camlline_for_tag_datastructure_camltype_uno_symbol_v.make nam s)
  with Failure s1 ->
    match s1 with
    | "Not_Camlline_for_tag_datastructure_camltype_uno_symbol:Camlline_for_tag_datastructure_camltype_uno_symbol_v:make" ->
	begin
	  try camlline_for_tag_datastructure_camltype_symbol_of_camlline_for_tag_datastructure_camltype_duo_symbol
	      (Camlline_for_tag_datastructure_camltype_duo_symbol_v.make nam s)
	  with Failure s2 ->
	    match s2 with
	    | "Not_Camlline_for_tag_datastructure_camltype_duo_symbol:Camlline_for_tag_datastructure_camltype_duo_symbol_v:make" ->
		failwith "Not_a_topson_notleaf:Camlline_for_tag_datastructure_camltype_symbol_v.ml:make_of_topson_notleaf"
	    | _ -> failwith s2
	end
    | _ -> failwith s1
;;

(** {6 Making_for_symbol} *)

let make nam str =
  try make_of_topson_bare nam
  with Failure s1 ->
    match s1 with
    | "Not_a_topson_bare:Camlline_for_tag_datastructure_camltype_symbol_v.ml:make_of_topson_bare" ->
	begin
	  try make_of_topson_ofstring nam str
	  with Failure s2 ->
	    match s2 with
	    | "Not_a_topson_ofstring:Camlline_for_tag_datastructure_camltype_symbol_v.ml:make_of_topson_ofstring" ->
		begin
		  try make_of_topson_notleaf nam str
		  with Failure s3 ->
		    match s3 with
		    | "Not_a_topson_notleaf:Camlline_for_tag_datastructure_camltype_symbol_v.ml:make_of_topson_notleaf" ->
			begin
			  let _ =
			    Error_messages_v.print_error nam_cod "make"
			      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figure_set_fence_point subtype" nam str)
			      "it does not exists"
			      "Check file Camlline_for_tag_datastructure_camltype_symbol_v.ml"
			  in
			  failwith "Not_a_figure_set_fence_point_symbol:Camlline_for_tag_datastructure_camltype_symbol_v.ml:make"
			end
		    | _ -> failwith s3
		end
	    | _ -> failwith s2
		  
	end
    | _ -> failwith s1
;;

(** modified Failures at lundi 29 octobre 2018, 09:43:08 (UTC+0100) *)

(** created by version v1.11 of ./generator camlline_for_tag_datastructure_camltype implementation_for_symbol symbol at 9:15 6 May 2013. *)



