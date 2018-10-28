(** {3 The functionalities for a File} *)

let nam_cod = "File_v.ml";;

(*
  name is a string
  file_name is a Filename_p
*)

(** {6 Functions} *)

let has_extension_of_fullname nof = 
  try String.index nof '.' <> 0
  with Not_found -> false
;; 

let is_fullnameoffile_of_string str = 
  String.get str 0 = '/'
;; 

let name_extension str = 
  let rvs = String_v.reverse_of_string str in
  let dot_idx = String.index  rvs '.' in
    if dot_idx > 0 
    then String_v.reverse_of_string (String.sub rvs 0 dot_idx)
    else ""
;;

let string_of_in_channel ich =  (* get a file as one string *)
  let len = in_channel_length ich in
  let buf = Bytes.create len in
  let i = input ich buf 0 len in
  Format.fprintf Format.err_formatter "%i bytes read" i;
  buf
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

let in_channel_of_fullname nof =
  open_in nof 
;;

let in_channel_of_function_name_of_fullname nam_fun nof =
  try open_in nof 
  with Sys_error _ ->
    Error_messages_v.print_fatal_error nam_cod nam_fun 
      (Format.sprintf "file >%s< exists" nof) 
      "No such file or directory" 
      "Check file name"
;;

let scanf_scanning_in_channel_of_in_channel ich =
  Scanf.Scanning.from_channel ich
;;

let scanbuf_of_in_channel ich =
  Scanf.Scanning.from_channel ich
;;

let scanf_scanning_in_channel_of_fullname nof =
  let ich = in_channel_of_fullname nof in
  scanf_scanning_in_channel_of_in_channel ich
;;

let scanbuf_of_fullname nof =
  scanf_scanning_in_channel_of_fullname nof 
;;

let name_of_scanf_scanning_in_channel ssi =
  Scanf.Scanning.name_of_input ssi
;;

let name_of_scanbuf sbu =
  Scanf.Scanning.name_of_input sbu
;;

let read_string_list_of_fullname nof =
  let ich = 
    in_channel_of_function_name_of_fullname
      "read_string_list_of_fullname" nof
  in
  string_list_of_in_channel ich 
;;

let imperative_lines_read_of_channel channel_a =
    let lines = ref []  in
     try
       while true do
         lines := input_line channel_a :: !lines
       done;
       assert false
     with End_of_file -> List.rev !lines
;; 

let print_fullname  ppf  nof =
  Format.fprintf ppf "%s" nof
;;

let string_write_of_fullname str nof =
  let oc = 
    try open_out nof
    with Sys_error s  ->
      begin 
	print_string s; 
	print_newline ();
	assert (false)
      end
  in
  output_string oc str;
  flush oc
;; 

let string_list_write_of_fullname str_l nof =
  let oc = 
    try open_out nof
    with Sys_error s  -> 
      begin
	print_string s; print_newline ();
	assert (false)
      end
  in
  List.iter (fun s -> output_string oc s) str_l ;
  flush oc
;; 

let open_out_channel fin mdn her =

	Format.fprintf Format.err_formatter 
	  "@.@[<hov>%s.%s: --- tracing --- opening file >%s< @]@."
	mdn her fin;

  let nof = fin in
  try open_out nof 
  with 
  | Sys_error s ->
      match s with
      | "Bad file descriptor" -> 
	  begin
	Format.fprintf Format.err_formatter 
	  "@.@[<hov>%s.%s: --- Fatal Error ---@.\
        file >%s< has a bad file descriptor@]@."
	mdn her fin;
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
        ignore (open_out nof); 
        open_out_gen [Open_creat] 0 nof
*)
      end
;;

let close_oc_n_warn oc mdn her =
  try close_out oc
  with Sys_error s -> 
    Format.fprintf  Format.err_formatter
      "@[@.%s.%s: %s@.@]" mdn her s
;;

let is_a_directory_of_fullname nof =
  Sys.is_directory nof
;;

let is_not_empty_of_record rcd = 
  not (String_v.is_empty_of_string rcd)
;;

let is_not_empty_nor_comment_of_record rcd = 
  (is_not_empty_of_record rcd)
    &&
  (String_v.first_character_string_off_string 
     (String_v.trim_head_of_string rcd) 
     <> "#")
;;

let read_not_empty_record_list_of_fullname nof =
  let str_l = read_string_list_of_fullname nof in
  List.filter is_not_empty_of_record str_l
;;

let read_not_empty_nor_comment_record_list_of_fullname nof =
  let str_l = read_string_list_of_fullname nof in
  List.filter is_not_empty_nor_comment_of_record str_l
;;


(*

  let sta = Unix.stat nof in
  sta.Unix.st_kind = Unix.S_DIR

let file_descr_of_fullname  nof =
   try Unix.openfile nof
              [Unix.O_RDONLY ; Unix.O_NONBLOCK] 0
   with
     | Unix.Unix_error (Unix.EEXIST, "open", nof) ->
	 Format.fprintf  Format.err_formatter
           "@[%s.file_exits_of_fullname:@ \
         Fatal Error@ \
         No file with name@ >%a<@. @]"
	   print_fullname  nof;
         assert (false)
     | Unix.Unix_error (Unix.ENOENT, "open", nof) ->
	 Format.fprintf  Format.err_formatter
           "@[%s.file_exits_of_fullname:@ \
         Fatal Error@ \
         No such file or directory@ >%a<@. @]"
	   print_fullname  nof;
         assert (false)
;;
*)

