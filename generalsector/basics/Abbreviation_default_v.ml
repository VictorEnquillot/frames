(** {3 Builds any kind of abbreviation_defaults.} *)

let nam_mod = "abbreviation_default_v";;

(** This module gives redundant abbreviation_defaults or default abbreviation_defaults.*)

let check_empty_string wor str =
  if str = "" 
  then Error_messages_v.print_fatal_error nam_mod
      "one_character_abbreviation_default_of_word" 
      "input string non-empty"
      "input string empty"
      ("check input word >"^wor^"<")
;;

let rec one_character_abbreviation_default_of_word str =
  check_empty_string str str;
  let ib = Scanf.Scanning.from_string str in
  let c = Scanf.bscanf ib "%0c" (fun c -> c) in
  match c with
  | 'e' ->
      Scanf.bscanf ib "%5s" 
	(fun s -> 
	  match s with 
	  | "eight" -> '8'
	  | _ -> c
	)
  | 'f' ->
      Scanf.bscanf ib "%4s" 
	(fun s -> 
	  match s with 
	  | "four" -> '4'
	  | "five" -> '5'
	  | _ -> c
	)
  | 'm' ->
      Scanf.bscanf ib "%5s" 
	(fun s -> 
	  match s with 
	  | "minus" ->
	      let wor = Scanf.bscanf ib "%s" (fun s -> s) in
	      check_empty_string str wor;
	      one_character_abbreviation_default_of_word wor
	  | _ -> c
	)
  | 'n' ->
      Scanf.bscanf ib "%4s" 
	(fun s -> 
	  match s with 
	  | "nine" -> '9'
	  | _ -> c
	)
  | 'o' ->
      Scanf.bscanf ib "%3s" 
	(fun s -> 
	  match s with 
	  | "one" -> '1'
	  | _ -> c
	)
  | 'p' ->
      Scanf.bscanf ib "%4s" 
	(fun s -> 
	  match s with 
	  | "plus" ->
	      let wor = Scanf.bscanf ib "%s" (fun s -> s) in
	      check_empty_string str wor;
	      one_character_abbreviation_default_of_word wor
	  | _ -> c
	)
  | 's' ->
      Scanf.bscanf ib "%3s" 
	(fun s -> 
	  match s with 
	  | "six" -> '6'
	  | "sev" -> 
	      Scanf.bscanf ib "%2s" 
		(fun s -> 
		  match s with 
		  | "en" -> '7'
		  | _ -> c
		)
	  | _ -> c
	)
  | 't' ->
      Scanf.bscanf ib "%3s" 
	(fun s -> 
	  match s with 
	  | "two" -> '2'
	  | "thr" -> 
	      Scanf.bscanf ib "%2s" 
		(fun s -> 
		  match s with 
		  | "ee" -> '3'
		  | _ -> c
		)
	  | _ -> c
	)
  | 'z' ->
      Scanf.bscanf ib "%4s" 
	(fun s -> 
	  match s with 
	  | "zero" -> '0'
	  | _ -> c
	)
  | _ -> c
;;

let rec next_consonant_of_in_channel ib =
  let c = Scanf.bscanf ib "%1c" (fun c -> c) in
  match c with
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'y' -> 
	next_consonant_of_in_channel ib
    | _ -> c
;;

(*
let two_characters_abbreviation_default_of_word str =
  let c_1 = one_character_abbreviation_default_of_word str in

  let ib = Scanf.Scanning.from_string str in

  let c_2 = Scanf.bscanf ib "%0c" (fun c -> c) in
  match c with
    | 'a' | 'e' | 'i' | 'o' | 'u'  ->

    | _ ->
	Scanf.bscanf ib "%5s" 
	  (fun s -> 
	    match s with 
	    | "eight" -> '8'
	    | _ -> c
;;
*)

(** {6 Module-type Abbreviation 2 or more characters *)

let abbreviation_default_module_of_string str =
  let wrd_l = String_v.split_of_character_of_string '_' str in
  let cou_wrd = List.length wrd_l in
  let abb =
    match cou_wrd with
    | 1 -> (String.sub str 0 2)
    | _ -> String_v.string_of_character_list
	  (List.map one_character_abbreviation_default_of_word wrd_l)
  in
  String.capitalize_ascii abb
;;

(** atom -> ato *)
(** atom_onetied_symbol -> sym_aon *)
(** xaa_yaa_zaa -> xyz  *)

(** {6 Argument-type Abbreviation 3 characters *)

let abbreviation_default_argument_of_string str =

  let wrd_l = String_v.split_of_character_of_string '_' str in
  let cou_wrd = List.length wrd_l in
  
  match cou_wrd with
  | 0 -> ""
  | 1 -> (* atom -> ato *) 
      let wrd = List.hd wrd_l in
      begin
	match String.length wrd with
	| 1 | 2 | 3 -> wrd
	| _ -> 
	    String_v.first_three_characters_off_string wrd 
      end

  | 2 -> (* atom_onetied -> aon *) (* x_2d -> x2d *)
      let w_1 = List.nth wrd_l 0 in
      let w_2 = List.nth wrd_l 1 in

      let s11 = String_v.first_character_string_off_string w_1 in
      let s22 = try String_v.first_two_characters_off_string w_2
      with Failure _ -> w_2 in

      Format.sprintf "%s%s" s11 s22 
	    
  | 3 -> (* atom_onetied_single -> a1s *) 
      String_v.string_of_character_list 
	(List.map one_character_abbreviation_default_of_word wrd_l)

  | _ -> (* atom_zerotied_cation_plusone -> acp *) 

      let c_l = List.map one_character_abbreviation_default_of_word wrd_l in
      let c3_l = 
	[(List.nth c_l 0); 
	 (List.nth c_l (cou_wrd-2)); 
	 (List.nth c_l (cou_wrd-1))]
      in
      String_v.string_of_character_list c3_l
;;

(* h_s -> h_s  *)
(* atom -> atm  *)
(* xaa_yaa_zaa -> xyz  *)
(* atom_seventied_single -> a7s *)
(* atom_zerotied_cation_plusone -> ac1 *)
