(** {3 Tools for a File} *)

let nam_mod = "Filetools_v";;


let file_name_extension str = 
  let rvs = String_v.reverse_of_string str in
  let dot_idx = String.index  rvs '.' in
    if dot_idx > 0 
    then String_v.reverse_of_string (String.sub rvs 0 dot_idx)
    else ""
;;

let imperative_lines_read_of_channel  channel_a  =
    let lines = ref []  in
     try
       while true do
         lines := input_line channel_a :: !lines
       done;
       assert false
     with End_of_file -> List.rev !lines
;; 

let print_file_name  ppf  nam_fil =
  Format.fprintf ppf "%s" nam_fil
;;

let text_read_of_file_name  nam_fil  =
  let oc = open_in nam_fil in
    imperative_lines_read_of_channel  oc
;;

let string_write_of_file_name str nam_fil =
  let oc = 
    try open_out nam_fil
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

let string_list_write_of_file_name str_l nam_fil =
  let oc = 
    try open_out nam_fil
    with Sys_error s  -> 
      begin
	print_string s; print_newline ();
	assert (false)
      end
  in
  List.iter (fun s -> output_string oc s) str_l ;
  flush oc
;; 

let open_out_channel fln mdn her =

	Format.fprintf Format.err_formatter 
	  "@.@[<hov>%s.%s: --- tracing --- opening file >%s< @]@."
	mdn her fln;

  let nam_fil = fln in
  try open_out nam_fil 
  with 
  | Sys_error s ->
      match s with
      | "Bad file descriptor" -> 
	  begin
	    Format.fprintf Format.err_formatter 
	  "@.@[<hov>%s.%s: --- Fatal Error ---@.\
        file >%s< has a bad file descriptor@]@."
	mdn her fln;
        assert false;
	  end
      | msg -> 
	  begin
	Format.fprintf Format.err_formatter
	  "@.%s.%s: --- Fatal Error ---@.\
	When opening file >%s<@.\
	with message >%s<@." nam_mod "open_out_channel" nam_fil msg;
	assert false;
(*
        ignore (open_out nam_fil); 
        open_out_gen [Open_creat] 0 nam_fil
*)
	  end
;;


let close_oc_n_warn oc mdn her =
  try close_out oc
  with Sys_error s -> 
    Format.fprintf  Format.err_formatter
      "@[@.%s.%s: %s@.@]" mdn her s
;;

(*
let file_descr_of_file_name  nam_fil =
   try Unix.openfile nam_fil
              [Unix.O_RDONLY ; Unix.O_NONBLOCK] 0
   with
     | Unix.Unix_error (Unix.EEXIST, "open", nam_fil) ->
	 Format.fprintf  Format.err_formatter
           "@[%s.file_exits_of_file_name:@ \
         Fatal Error@ \
         No file with name@ >%a<@. @]"
	   print_file_name  nam_fil;
         assert (false)
     | Unix.Unix_error (Unix.ENOENT, "open", nam_fil) ->
	 Format.fprintf  Format.err_formatter
           "@[%s.file_exits_of_file_name:@ \
         Fatal Error@ \
         No such file or directory@ >%a<@. @]"
	   print_file_name  nam_fil;
         assert (false)
;;
*)

