(** {3 Figure_set_fence_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Figure_set_fence_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Figure_set_fence_symbol_t.Figure_set_fence_point_symbol sym_ffp ->
    Figure_set_fence_point_symbol_v.name sym_ffp
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Figure_set_fence_symbol_t.Figure_set_fence_point_symbol sym_ffp ->
  Figure_set_fence_point_symbol_v.string_off sym_ffp
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_fsf =
  Format.sprintf "Figure_set_fence_symbol_t.%s" (String.capitalize_ascii (name sym_fsf))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_fsf =
  Format.sprintf "%s \"%s\"" (longname sym_fsf) (string_off sym_fsf)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let figure_set_fence_point_symbol_off_figure_set_fence_symbol = function
  | Figure_set_fence_symbol_t.Figure_set_fence_point_symbol sym_ffp -> sym_ffp
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_figure_set_fence_point_symbol_off_figure_set_fence_symbol = function
  | Figure_set_fence_symbol_t.Figure_set_fence_point_symbol _ -> true
;;


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)

let is_figure_set_fence_point_constructor sym_fsf =
  if not (is_figure_set_fence_point_symbol_off_figure_set_fence_symbol sym_fsf)
  then false
  else
    begin
      let sym_ffp = figure_set_fence_point_symbol_off_figure_set_fence_symbol sym_fsf in
      Figure_set_fence_point_symbol_v.is_figure_set_fence_point_constructor sym_ffp
    end
;;


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let figure_set_fence_symbol_of_figure_set_fence_point_symbol sym_ffp = 
  Figure_set_fence_symbol_t.Figure_set_fence_point_symbol sym_ffp
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)

let figure_set_fence_point_constructor s = figure_set_fence_symbol_of_figure_set_fence_point_symbol (Figure_set_fence_point_symbol_v.figure_set_fence_point_constructor s);;


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Figure_set_fence_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Figure_set_fence_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  try figure_set_fence_symbol_of_figure_set_fence_point_symbol
      (Figure_set_fence_point_symbol_v.make nam s)
  with Failure s ->
    match s with
    | "Not_a_figure_set_fence_point_symbol:Figure_set_fence_point_symbol_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Figure_set_fence_symbol_v.ml:make_of_topson_notleaf"
    | _ -> failwith s
;;


(** {6 Making_for_symbol} *)

let make nam str =
  try make_of_topson_bare nam
  with Failure s1 ->
    match s1 with
    | "Not_a_topson_bare:Figure_set_fence_symbol_v.ml:make_of_topson_bare" ->
	begin
	  try make_of_topson_ofstring nam str
	  with Failure s2 ->
	    match s2 with
	    | "Not_a_topson_ofstring:Figure_set_fence_symbol_v.ml:make_of_topson_ofstring" ->
		begin
		  try make_of_topson_notleaf nam str
		  with Failure s3 ->
		    match s3 with
		    | "Not_a_topson_notleaf:Figure_set_fence_symbol_v.ml:make_of_topson_notleaf" ->
			begin
			  let _ =
			    Error_messages_v.print_error nam_cod "make"
			      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Figure_set_fence_point subtype" nam str)
			      "it does not exists"
			      "Check file Figure_set_fence_symbol_v.ml"
			  in
			  failwith "Not_a_figure_set_fence_point_symbol:Figure_set_fence_symbol_v.ml:make"
			end
		    | _ -> failwith s3
		end
	    | _ -> failwith s2
		  
	end
    | _ -> failwith s1
;;

(** Figure_set_fence_symbol_v at 13:58:5 on 2 Dec 2016. created by version v2.4 of generator *)



