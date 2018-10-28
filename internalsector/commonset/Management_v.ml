let nam_mod = "Management_v.ml";;

let points =
  let byt = Bytes.make 80 '.' in
  Bytes.set byt 4 '|';
  Bytes.set byt 9 '|';
  Bytes.set byt 14 '|';
  Bytes.set byt 19 '|';
  Bytes.set byt 24 '|';
  byt
;;

let stack_dump sta =
  Format.fprintf Format.err_formatter "Module_name_stack:@.";
  Stack.iter 
    (fun  (s, i) -> 
      (Format.fprintf Format.err_formatter "(%s, %i)@." s i) 
    )
    sta
;;

let module_name_canonical nam_mod =
  let len = String.length nam_mod in
  if String.sub nam_mod (len-3) 3 = ".ml" 
  then String.sub nam_mod 0 (len-3)
  else nam_mod
;;


let local_module_name str =
  (* Format.fprintf Format.err_formatter "@.str %s" str; *)
  let reg = Str.regexp "File \"\\([A-Za-z_]+\\.ml\\)\"" in
  if Str.string_match reg str 0 
  then (* Improve with Regexp *)
    String_v.cut_last_character_off_string 
      (String_v.cut_first_characters_of_count_off_string 6 (Str.matched_string str))
  else
    "undefined"
;;

let current_module_name str_l =
  let nam_fun = "current_module_name" in
  let str_tok =  "Current : " in
  let len_tok = String.length str_tok in

  let cur_str = try 
    List.find 
      (fun s -> (String.length s > len_tok) && (String.sub s 0 len_tok = str_tok)) 
      str_l 
  with Not_found ->
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "\"Current : \" were a substring of at least one documentation line" )
      (Format.sprintf "documentation list :@.   %s"
	 (List_v.name_with_separator Utilities_v.identity ";\n " str_l) ) 
      ("Check in documentation function for string \""^str_tok^"XXX:<module name>\" ")
  in
  let len_cur = String.length cur_str in
  let nam_mod = try 
    String.sub cur_str len_tok (len_cur-len_tok) 
  with Invalid_argument s ->
    match s with
    | "String.sub" ->
    Error_messages_v.print_fatal_error nam_mod "current_module_name"
      (Format.sprintf "documentation line >%s< were more than %i characters long" cur_str len_tok)
      (Format.sprintf "line length is %i" (String.length cur_str))
	  "Please correct documentation line"
    | _ -> failwith s
  in
  let idx_sem = try 
    String.index nam_mod ':' 
  with Not_found ->
    Error_messages_v.print_fatal_error nam_mod "current_module_name"
      (Format.sprintf "module name >%s< were prefixed by some Directory Abbreviation followed by :" nam_mod)
      "it is NOT"
      "Please add this abbreviation to module name"
  in
  let len_nam = String.length nam_mod in

  try
    String.sub nam_mod (idx_sem+1) (len_nam-(idx_sem+1)) 
  with Invalid_argument s ->
    match s with
    | "String.sub" ->
    Error_messages_v.print_fatal_error nam_mod "current_module_name"
      (Format.sprintf "module name >%s< were more than %i characters long" nam_mod (idx_sem+1))
      (Format.sprintf "line length is %i" len_nam)
      "Please correct module name"
    | _ -> failwith s
;;

let current_file_name str_l =
  (current_module_name str_l) ^ ".ml"
;;

let current_register_name str_l =
  let nam_fun = "current_register_name" in
  let str_tok =  "Register : " in
  let len_tok = String.length str_tok in

  let cur_str = try 
    List.find 
      (fun s -> 
	(String.length s > len_tok) 
	 && 
	(String.sub s 0 len_tok = "Register : ")
      ) 
      str_l 
  with Not_found ->
    Error_messages_v.print_fatal_error nam_mod nam_fun
      (Format.sprintf "\"Register : \" were a substring of at least one documentation line" )
      (Format.sprintf "documentation list :@.   %s"
	 (List_v.name_with_separator Utilities_v.identity ";\n " str_l) ) 
      "Check in documentation function for string \""^str_tok^"XXX:<register name>\" "
  in
  let len_cur = String.length cur_str in
  let nam_mod = try 
    String.sub cur_str len_tok (len_cur-len_tok) 
  with Invalid_argument s ->
    match s with
    | "String.sub" ->
    Error_messages_v.print_fatal_error nam_mod "current_register_name"
      (Format.sprintf "documentation line >%s< were more than %i characters long" cur_str len_tok)
      (Format.sprintf "line length is %i" (String.length cur_str))
	  "Please correct documentation line"
    | _ -> failwith s
  in
  let idx_sem = try 
    String.index nam_mod ':' 
  with Not_found ->
    Error_messages_v.print_fatal_error nam_mod "current_register_name"
      (Format.sprintf "register name >%s< were prefixed by some Directory Abbreviation followed by :" nam_mod)
      "it is NOT"
      "Please add this abbreviation to register name"
  in
  let len_nam = String.length nam_mod in

  try
    String.sub nam_mod (idx_sem+1) (len_nam-(idx_sem+1)) 
  with Invalid_argument s ->
    match s with
    | "String.sub" ->
    Error_messages_v.print_fatal_error nam_mod "current_register_name"
      (Format.sprintf "register name >%s< were more than %i characters long" nam_mod (idx_sem+1))
      (Format.sprintf "line length is %i" len_nam)
      "Please correct register name"
    | _ -> failwith s
;;

let previous_module_name_of_module_name nam_mod =
  let nam_mod_l = Stack_v.list_non_destructive_of_stack Module_name_stack_v.stack in
  List_v.predecessor_of_element_of_list nam_mod nam_mod_l
;;

let is_set_cpu_of_module_name nam_mod =
  if Trace_what_by_module_name_register_v.is_stored nam_mod
  then
    let str_wha = Trace_what_by_module_name_register_v.retrieve nam_mod in
    String_v.is_some_word_of_word_off_string "cpu" str_wha 
  else false
;;

let is_set_any_what_of_module_name nam_mod =
  if Trace_what_by_module_name_register_v.is_stored nam_mod
  then
    let str_wha = Trace_what_by_module_name_register_v.retrieve nam_mod in
    String_v.is_some_word_of_word_off_string "any" str_wha 
  else false
;;

let is_set_debug_of_module_name nam_mod =
  let result = 
    if ((Trace_what_by_module_name_register_v.is_stored nam_mod)
      || (is_set_any_what_of_module_name nam_mod))
    then
      begin
	let str_wha = Trace_what_by_module_name_register_v.retrieve nam_mod in
	String_v.is_some_word_of_word_off_string "debug" str_wha 
      end
    else false
  in
  (* Format.fprintf Format.std_formatter "in %s.%s result %b@." nam_mod nam_fun result; *)
  result
;;

let is_set_trace_of_module_name_of_function_name nam_mod nam_fun =
  let result =
    if ((Trace_what_by_module_name_register_v.is_stored nam_mod)
      || (is_set_any_what_of_module_name nam_mod))
    then
      begin
	let str_wha = Trace_what_by_module_name_register_v.retrieve nam_mod in
	((String_v.is_some_word_of_word_off_string nam_fun str_wha)
       || (String_v.is_some_word_of_word_off_string "any" str_wha))
      end
    else false
  in
  (* Format.fprintf Format.std_formatter "in %s.%s result %b@." nam_mod nam_fun result; *)
  result
;;

let is_set_verbose_of_module_name nam_mod =
  if ((Trace_what_by_module_name_register_v.is_stored nam_mod)
  || (is_set_any_what_of_module_name nam_mod))
  then
    begin
      let str_wha = Trace_what_by_module_name_register_v.retrieve nam_mod in
      ((String_v.is_some_word_of_word_off_string "verbose" str_wha) 
       || (String_v.is_some_word_of_word_off_string "any" str_wha))
    end
  else false
;;

let index_for_exiting_level_of_current_module_name nam_mod =
  let nam_fun = "index_for_exiting_level_of_current_module_name" in

  let (nam_top, ind_top) = 
    try Stack.pop Module_name_stack_v.stack
    with Stack.Empty ->
      Error_messages_v.print_fatal_error __LOC__ nam_fun
	(Format.sprintf "Module_name_stack still contains module %s" nam_mod)
	"Module_name_stack is Empty"
	"Check"
  in
  if nam_top <> nam_mod
  then    
    Error_messages_v.print_fatal_error __LOC__ nam_fun
      (Format.sprintf "Top module name in Module_name_stack were %s" nam_mod)
      (Format.sprintf "Top module name is %s" nam_top)
      "Check"
  else 
    ind_top 
;;

let string_for_exiting_level_of_current_module_name nam_mod =
  let ind_top = index_for_exiting_level_of_current_module_name nam_mod in
  Bytes.to_string (Bytes.sub points 0 ind_top) 
;;

let index_for_entering_level_of_current_module_name nam_mod =
  let (nam_top, ind_top) = 
    try Stack.top Module_name_stack_v.stack
    with Stack.Empty -> ("", 0)
  in

  Stack.push (nam_mod, (ind_top +1)) Module_name_stack_v.stack;
  (ind_top+1) 
;;

let string_for_entering_level_of_current_module_name nam_mod =
  let ind_top = index_for_entering_level_of_current_module_name nam_mod in
  Bytes.to_string (Bytes.sub points 0 ind_top)
;;

let entering_of_module_name_of_function_name nam_mod nam_fun =
  let is_tra = 
   ( (is_set_trace_of_module_name_of_function_name nam_mod nam_fun)
  ||
    (is_set_trace_of_module_name_of_function_name "any" nam_fun)
  ||
    (is_set_trace_of_module_name_of_function_name "any" "any"))
  in
  let pro_cpu =
    if ((is_set_cpu_of_module_name nam_mod)
      ||
	(is_set_cpu_of_module_name "any"))
    then
      begin
	let pro_cpu = Unix.times () in
	let flo = Cpu_v.current_user_cpu pro_cpu in
	let ind = index_for_entering_level_of_current_module_name nam_mod in
	Format.fprintf Format.err_formatter "Cpu  %f s when entering in [%2i] >%s< of %s@." flo ind nam_fun nam_mod;
	pro_cpu
      end
    else
      begin
	if is_tra 
	then Format.fprintf Format.err_formatter "%s entering in >%s< of %s@." 
	    (string_for_entering_level_of_current_module_name nam_mod)
	    nam_fun 
	    nam_mod
	else ();
	{
	 Unix.tms_utime = 0.0;
	 Unix.tms_stime = 0.0;
	 Unix.tms_cutime = 0.0;
	 Unix.tms_cstime = 0.0;
       }
      end
  in
  pro_cpu
;;

let exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun =
  let is_tra = 
    ((is_set_trace_of_module_name_of_function_name nam_mod nam_fun)
   ||
     (is_set_trace_of_module_name_of_function_name "any" nam_fun)
   ||
     (is_set_trace_of_module_name_of_function_name "any" "any"))
  in
  if ((is_set_cpu_of_module_name nam_mod)
    ||
      (is_set_cpu_of_module_name "any"))
  then
    begin
      let ela_cpu = Cpu_v.elapsed_execution_cpu pro_cpu in
      let flo = Cpu_v.current_user_cpu ela_cpu in
      let ind = index_for_exiting_level_of_current_module_name nam_mod in
      Format.fprintf Format.err_formatter "dCpu %f s when exiting off [%2i] <%s> of %s@." flo ind nam_fun nam_mod;
    end
  else
    begin
      if is_tra 
      then Format.fprintf Format.err_formatter "%s exiting off <%s> of %s@." 
	  (string_for_exiting_level_of_current_module_name nam_mod)
	  nam_fun 
	  nam_mod
      else ();
    end
;;

let debug_what_string what nam_mod nam_fun str =
  if ((is_set_debug_of_module_name nam_mod) 
    || (is_set_debug_of_module_name "any") ) 
  then Format.fprintf Format.std_formatter "%s.%s: %s >%s<@." nam_mod nam_fun what str
  else ()
;; 


