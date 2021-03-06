(** {3 Camlline_for_tag_datastructure_function_make_duo_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_tag_datastructure_function_make_duo_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_tag_datastructure_function_make_duo_symbol_t.Das_vdot_make_tag_a_tag_b -> "das_vdot_make_tag_a_tag_b"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_tag_datastructure_function_make_duo_symbol_t.Das_vdot_make_tag_a_tag_b -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fmd =
  Format.sprintf "Camlline_for_tag_datastructure_function_make_duo_symbol_t.%s" (String.capitalize_ascii (name sym_fmd))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fmd =
  Format.sprintf "%s \"%s\"" (longname sym_fmd) (string_off sym_fmd)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_das_vdot_make_tag_a_tag_b = function
  | Camlline_for_tag_datastructure_function_make_duo_symbol_t.Das_vdot_make_tag_a_tag_b -> true
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let das_vdot_make_tag_a_tag_b = Camlline_for_tag_datastructure_function_make_duo_symbol_t.Das_vdot_make_tag_a_tag_b;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "das_vdot_make_tag_a_tag_b" -> das_vdot_make_tag_a_tag_b
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_tag_datastructure_function_make_duo_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_tag_datastructure_function_make_duo_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlline_for_tag_datastructure_function_make_duo_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam str =
  try make_of_topson_bare nam
  with Failure s1 ->
    match s1 with
    | "Not_a_topson_bare:Camlline_for_tag_datastructure_function_make_duo_symbol_v.ml:make_of_topson_bare" ->
	begin
	  try make_of_topson_ofstring nam str
	  with Failure s2 ->
	    match s2 with
	    | "Not_a_topson_ofstring:Camlline_for_tag_datastructure_function_make_duo_symbol_v.ml:make_of_topson_ofstring" ->
		begin
		  try make_of_topson_notleaf nam str
		  with Failure s3 ->
		    match s3 with
		    | "Not_a_topson_notleaf:Camlline_for_tag_datastructure_function_make_duo_symbol_v.ml:make_of_topson_notleaf" ->
			begin
			  let _ =
			    Error_messages_v.print_error nam_cod "make"
			      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figure_set_fence_point subtype" nam str)
			      "it does not exists"
			      "Check file Camlline_for_tag_datastructure_function_make_duo_symbol_v.ml"
			  in
			  failwith "Not_a_figure_set_fence_point_symbol:Camlline_for_tag_datastructure_function_make_duo_symbol_v.ml:make"
			end
		    | _ -> failwith s3
		end
	    | _ -> failwith s2
		  
	end
    | _ -> failwith s1
;;

(** modified Failures at lundi 29 octobre 2018, 09:24:54 (UTC+0100) *)

(** created by version v1.11 of ./generator camlline_for_tag_datastructure_function_make_duo implementation_for_symbol symbol at 9:15 6 May 2013. *)



