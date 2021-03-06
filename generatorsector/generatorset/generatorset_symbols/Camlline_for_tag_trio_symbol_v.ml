(** {3 Camlline_for_tag_trio_symbol_v} *)


(** {6 Documenting_for_symbol} *)

let documentation () = 
[
  "Needs: ";
  "Current : SFIG:Camlline_for_tag_trio_symbol_v";
  "Needed-by: ";
  "What-is-it: ";
  "How-is-it-done: ";
  "Example: ";
]
;;

let nam_cod = Management_v.current_module_name (documentation ());;


(** {6 Naming_for_symbol} *)

let name = function
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar -> "lpar_a_b_c_tag_rpar"
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_footed_capped -> "lpar_a_b_c_tag_rpar_tree_footed_capped"
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped -> "lpar_a_b_c_tag_rpar_tree_leafed_capped"
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet -> "lpar_a_b_c_tag_rpar_triplet"
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet_list -> "lpar_a_b_c_tag_rpar_triplet_list"
;;


(** {6 String_offing_for_symbol} *)

let string_off = function
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar -> ""
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_footed_capped -> ""
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped -> ""
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet -> ""
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet_list -> ""
;;


(** {6 Longnaming_for_symbol} *)

let longname sym_ftt =
  Format.sprintf "Camlline_for_tag_trio_symbol_t.%s" (String.capitalize_ascii (name sym_ftt))
;;


(** {6 Fullnaming_for_symbol} *)

let fullname sym_ftt =
  Format.sprintf "%s \"%s\"" (longname sym_ftt) (string_off sym_ftt)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)

let is_lpar_a_b_c_tag_rpar = function
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar -> true
  | _ -> false
;;

let is_lpar_a_b_c_tag_rpar_tree_footed_capped = function
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_footed_capped -> true
  | _ -> false
;;

let is_lpar_a_b_c_tag_rpar_tree_leafed_capped = function
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped -> true
  | _ -> false
;;

let is_lpar_a_b_c_tag_rpar_triplet = function
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet -> true
  | _ -> false
;;

let is_lpar_a_b_c_tag_rpar_triplet_list = function
  | Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet_list -> true
  | _ -> false
;;


(** {6 Querying_topson_ofstring_for_symbol} *)


(** {6 Querying_topson_notleaf_for_symbol} *)


(** {6 Querying_grandson_bare_for_symbol} *)


(** {6 Querying_grandson_ofstring_for_symbol} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)

let lpar_a_b_c_tag_rpar = Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar;;

let lpar_a_b_c_tag_rpar_tree_footed_capped = Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_footed_capped;;

let lpar_a_b_c_tag_rpar_tree_leafed_capped = Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_tree_leafed_capped;;

let lpar_a_b_c_tag_rpar_triplet = Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet;;

let lpar_a_b_c_tag_rpar_triplet_list = Camlline_for_tag_trio_symbol_t.Lpar_a_b_c_tag_rpar_triplet_list;;


(** {6 Abbreviating_topson_ofstring_for_symbol} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)


(** {6 Abbreviating_grandson_ofstring_for_symbol} *)


(** {6 Making_for_symbol_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | "lpar_a_b_c_tag_rpar" -> lpar_a_b_c_tag_rpar
  | "lpar_a_b_c_tag_rpar_tree_footed_capped" -> lpar_a_b_c_tag_rpar_tree_footed_capped
  | "lpar_a_b_c_tag_rpar_tree_leafed_capped" -> lpar_a_b_c_tag_rpar_tree_leafed_capped
  | "lpar_a_b_c_tag_rpar_triplet" -> lpar_a_b_c_tag_rpar_triplet
  | "lpar_a_b_c_tag_rpar_triplet_list" -> lpar_a_b_c_tag_rpar_triplet_list
  | _ ->
  failwith "Not_a_topson_bare:Camlline_for_tag_trio_symbol_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_symbol_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase_ascii nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Camlline_for_tag_trio_symbol_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_symbol_notleaf} *)

let make_of_topson_notleaf nam s =
  failwith "Not_a_topson_notleaf:Camlline_for_tag_trio_symbol_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for_symbol} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure s1 ->
    match s1 with
    | "Not_a_topson_bare:Camlline_for_tag_trio_symbol_v.ml:make_of_topson_bare" ->
	begin
	  try make_of_topson_ofstring nam s
	  with Failure s2 ->
	    match s2 with
	    | "Not_a_topson_ofstring:Camlline_for_tag_trio_symbol_v.ml:make_of_topson_ofstring" ->
		begin
		  try make_of_topson_notleaf nam s
		  with Failure s3 ->
		    match s3 with
		    | "Not_a_topson_notleaf:Camlline_for_tag_trio_symbol_v.ml:make_of_topson_notleaf" ->
			begin
			  let _ =
			    Error_messages_v.print_error nam_cod "make"
			      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Camlline_for_tag_trio subtype" nam s)
			      "it does not exists"
			      "Check file camlline_for_tag_trio_symbol_v.ml"
			  in
			  failwith "Not_a_valid_camlline_for_tag_trio_symbol:Camlline_for_tag_trio_symbol_v.ml:make"
			end
		    | _ -> failwith s3
		end
	    | _ -> failwith s2
	end
    | _ -> failwith s1
;;


(** created by version v1.11 of ./generator camlline_for_tag_trio implementation_for_symbol symbol at 9:15 6 May 2013. *)



