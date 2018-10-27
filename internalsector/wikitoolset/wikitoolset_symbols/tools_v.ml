(** {3 Functionalities of Tools} *)

let nam_cod = "tools_v.ml";;

(** {6 Tools} *)

let print_fatal_error nam_mod nam_fun nam_exp nam_fnd nam_cur =
  Format.fprintf
    Format.err_formatter
    "@.@[<hov>%s:%s: --- Fatal Error ---\
     @.    expecting %s.\
     @.    and found %s.\
     @.cure :\
     @.    %s @]@.@.@."
     nam_mod nam_fun nam_exp nam_fnd nam_cur;
     assert false;
;;

let word_list_off_string str =
  Str.split (Str.regexp "[ \t]+") str
;;

let rec right_list_include_of_predicate_of_list prd lst =
  match lst with
    | [] -> []
    | h::t ->
      if (prd h) 
      then h::t
      else right_list_include_of_predicate_of_list prd t
;;

let extract_list_of_predicate_of_predicate_of_list prd_f prd_l lst =
  let tl_l = right_list_include_of_predicate_of_list prd_f lst in
  let tl_lr = List.rev tl_l in
  let l_r = right_list_include_of_predicate_of_list prd_l tl_lr in
  List.rev l_r
;;

let string_list_of_in_channel ich =
  let head ic =
    try input_line ic 
    with End_of_file -> "eof"
  in
  
  let rec apply lst =
    let h = head ich in  
    if h = "eof"
    then 
      lst
    else 
      h :: apply lst 
  in
  apply [] 
;; 

let string_of_char_list c_l =
  let str_l = List.map (String.make 1) c_l in
  String.concat "" str_l
;;

let in_channel_of_file_name nam_fil =
  try open_in nam_fil 
  with Sys_error _ ->
    failwith "No_such_file:tools_v.ml.in_channel_of_file_name"
;;

let read_string_list_of_file_name nam_fil =
  let ich = try in_channel_of_file_name nam_fil
  with Failure "No_such_file:tools_v.ml.in_channel_of_file_name" ->
    failwith "No_such_file:tools_v.ml.read_string_list_of_file_name" 
  in
  string_list_of_in_channel ich 
;;

(*
    print_fatal_error
      nam_cod 
      "read_string_list_of_module_name_of_file_name" 
      ("file >" ^ nam_fil  ^"< exists")
      "No such file or directory" 
      "check file name"
  in
*)

let open_write_of_module_name_of_function_name_of_file_name nam_cod nam_fun nam_fil =
  try open_out nam_fil
  with 
    | Sys_error("Bad file descriptor") ->
	print_fatal_error
	  nam_cod 
	  "open_write_of_module_name_of_function_name_of_file_name"
	  ("file >" ^ nam_fil  ^"<  has a valid descriptor")
	  "it had not" 
	  "check file descriptor"
	  
    | Sys_error msg -> 
	print_fatal_error
	  nam_cod 
	  "open_write_of_module_name_of_function_name_of_file_name"
	  ("file >" ^ nam_fil  ^"< could be opened")
	  ("Sys_error "^msg)
	  "check file"
;;

let cut_off_last_element_off_list lst  =
(*  [first; ....; last;] *)
    let rev = List.rev lst in
    List.rev (
    try List.tl rev
    with tl -> failwith ("List_empty:Lst_v.cut_off_last_element_off_list")
 ) 
;;

let current_directory () = 
  Sys.getcwd ()
;;

let environment_variable_of_string str =
  Sys.getenv str 
;;

let skip_character ich =
  Scanf.fscanf ich "%1c" ( fun c -> () )
;;   

let rec skip_blanks ich =
  Scanf.fscanf ich "%0c"
    (fun c ->
      match c with
      | ' ' -> Scanf.fscanf ich "%1c" (fun c1 -> ich);
      | _ -> ich
    )
;;   

let not_yet_implemented m s =
  failwith
    (Printf.sprintf "%s.%s is not yet implemented, please report." m s) 
;;

let next_char_stay_of_in_channel ich =
  Scanf.fscanf ich "%0c" (fun c -> c)
;;

let next_char_move_of_in_channel ich =
  Scanf.fscanf ich "%1c" (fun c -> c)
;;

let next_word_of_in_channel ich =
  let rec apply c_l ich =
    Scanf.fscanf ich "%1c"
      (fun c ->
	match c with  
	| '"' -> 
	    let nex_c = next_char_stay_of_in_channel ich in
	    begin
	      match nex_c with 
	      | ' ' | '>' -> c_l
	      | _ -> 
		  
		  let c_l_new = c :: c_l in
		  apply c_l_new ich 
	    end

	| '=' | ' ' -> 
	    c_l
	| _ -> 
            let c_l_new = c :: c_l in
            apply c_l_new ich 
      )
  in
  let c_l = List.rev (apply [] ich) in
  string_of_char_list c_l
;;



