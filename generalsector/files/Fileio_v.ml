(** {3 The i/o functionalities for a File .} *)

let nam_cod = "Fileio_v";;

(** {6 Aliasing.} *)


(** {6 Querying.} *)

let is_existing_of_filename fna =
  let fullname = Filename_p.fullname fna in
  Sys.file_exists fullname
;;

(** {6 Reading.} *)

let in_channel_of_filename fna = 
  let fullname = Filename_p.fullname fna in
  try open_in fullname 
  with Sys_error s -> 
    failwith (Format.sprintf "Sys_error %s:%s.%s" s nam_cod "in_channel_of_filename")
;;

let string_list_of_in_channel ic =
  let lines = ref [] in
   try
    while true do
     lines := input_line ic :: !lines
    done;
    assert false
   with End_of_file -> List.rev !lines
;; 

let string_list_of_filename fna =
  let nof = Filename_p.string_off_filename fna in
  let ic = 
    try open_in nof 
    with Sys_error s -> 
      print_string s; print_newline (); assert (false) 
  in 
  let str_l =
    string_list_of_in_channel ic 
  in
  if str_l = [""] 
  then
    Error_messages_v.print_fatal_error nam_cod "string_list_of_filename"
      "to read a list of string" 
      (Format.sprintf "empty list from file >%s<" (Filename_p.name fna))
      "check"
  else
    close_in ic; 
  str_l
;;

(** {6 Writing.} *)

let write_of_string_of_filename str fna =
  let oc = 
    try open_out (Filename_p.string_off_filename fna)
    with Sys_error s ->
      begin 
	print_string s; print_newline (); 
	Format.fprintf Format.err_formatter
	  "@.@[<hov>%s.%s: --- Fatal Error ---@.\
        when opening out file >%s<.@]@."
        nam_cod "string_write_of_filename" 
        (Filename_p.name fna);
        assert (false)
      end
  in
  output_string oc str;  
  output_string oc "\n";
  flush oc;
  close_out oc
;; 

let write_of_string_list_of_filename str_l fna =
  let nof = Filename_p.string_off_filename fna in
  let oc = 
    try open_out nof
    with Sys_error s -> 
      begin
	print_string s; print_newline ();
	assert (false)
      end
  in
  List.iter (fun s -> output_string oc s) str_l ;
  flush oc;
  close_out oc
;; 

let open_out_channel_of_string_of_string_of_fullname nam_cod nam_fun nof =
  try open_out nof
  with 
  | Sys_error s ->
      match s with
      | "Bad file descriptor" -> 
	begin
	  Format.fprintf Format.err_formatter 
	    "@.@[<hov>%s.%s: --- Fatal Error ---\
	    @. file >%s< has a bad file descriptor@]@."
	    nam_cod nam_fun nof; assert false;
	end
	  
      | msg -> 
	  begin
	Format.fprintf Format.err_formatter
	  "@.%s.%s: --- Fatal Error ---@.\
	When opening file >%s<@.\
	with message >%s<@." nam_cod ("open_out_channel in "^nam_fun) nof msg;
	assert false;
	  end
;;

let open_out_channel_n_warn_of_filename fna nam_cod nam_fun =
  let nof = Filename_p.string_off_filename fna in
  Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- tracing --- opening file >%s< @]@."
	nam_cod nam_fun nof;
  
  try open_out nof
  with 
  | Sys_error s ->
      match s with
      | "Bad file descriptor" -> 
      begin
	Format.fprintf Format.err_formatter 
	  "@.@[<hov>%s.%s: --- Fatal Error ---@.\
	  file >%s< has a bad file descriptor@]@."
	  nam_cod nam_fun nof;
          assert false;
      end
	
  | msg -> 
      begin
	Format.fprintf Format.err_formatter
	  "@.%s.%s: --- Fatal Error ---@.\
	When opening file >%s<@.\
	with message >%s<@." nam_cod "open_out_channel" nof msg;
	assert false;
(*
  ignore (open_out fna); 
  open_out_gen [Open_creat] 0 fna
 *)
      end
;;

let close_n_warn_of_out_channel oc nam_cod nam_fun =
  try close_out oc
  with Sys_error s -> 
    Format.fprintf Format.err_formatter
      "@[@.%s.%s: %s@.@]" nam_cod nam_fun s
;;

(*
let file_descr_of_fullname fna =
  try Unix.openfile fna
       [Unix.O_RDONLY ; Unix.O_NONBLOCK] 0
  with
   | Unix.Unix_error (Unix.EEXIST, "open", fna) ->
	 Format.fprintf Format.err_formatter
      "@[%s.file_exits_of_fullname:@ \
     Fatal Error@ \
     No file with name@ >%a<@. @]"
	  print_fullname fna;
     assert (false)
   | Unix.Unix_error (Unix.ENOENT, "open", fna) ->
	 Format.fprintf Format.err_formatter
      "@[%s.file_exits_of_fullname:@ \
     Fatal Error@ \
     No such file or directory@ >%a<@. @]"
	  print_fullname fna;
     assert (false)
;;
*)

