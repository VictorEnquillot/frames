(** Run Figureset execuatble *)

let nam_cod = "Figureset_run.ml";;

(* Toplevel 
  #use "Figureset_run.ml";;

*)

(* Help *)

let is_interactive_ref = Sys.interactive;;
let is_interactive = !is_interactive_ref;;
let is_batch = not (is_interactive);;

(* Read parameters *)

let parse_batch_arguments () =
  let deb_ref = ref "" in
  let inp_ref = ref "" in
  let out_ref = ref "" in
  let ver_ref = ref "not-verbose" in
  
  let opt_l = 
    [ 
      ("--debug", Arg.Set_string deb_ref, "module-name");
      ("--verbose", Arg.Set_string ver_ref, "verbose");
      ("--input-file", Arg.Set_string inp_ref, "input-file");
      ("--output-file", Arg.Set_string out_ref, "output-file");
      ("--help", Arg.String (fun s -> ()), "options are : --help --debug --domain --target ");
    ]
  in

  Arg.parse 
    opt_l 
    (fun s->()) 
    "Usage : Figureset_run.byt --domain figure --target figure.inp"
    ;

  let nam_deb = !deb_ref in
  let nof_inp = !inp_ref in
  let nof_out = !out_ref in
  let verbose = !ver_ref in
  
  Parameters_figureset_general_register_v.store "debug" nam_deb;
  Parameters_figureset_general_register_v.store "input-file" nof_inp;
  Parameters_figureset_general_register_v.store "output-file" nof_out;
  Parameters_figureset_general_register_v.store "verbose" verbose;
;;

let set_interactive_arguments () =
  let nam_deb = "debug" in
  let nof_inp = "figure.inp" in
  let nof_out = "figure.out" in
  let verbose = "verbose" in
  
  Parameters_figureset_general_register_v.store "debug" nam_deb;
  Parameters_figureset_general_register_v.store "input-file" nof_inp;
  Parameters_figureset_general_register_v.store "output-file" nof_out;
  Parameters_figureset_general_register_v.store "verbose" verbose;
;;

let store_parameters () =
  if is_interactive
  then set_interactive_arguments ()
  else parse_batch_arguments ()
;;
      
store_parameters ();;

let nof_inp = Parameters_figureset_general_provider_v.provide "input-file";;
let nof_out = Parameters_figureset_general_provider_v.provide "output-file";;
let ich = Scanf.Scanning.from_file nof_inp;;
let str_dol = Input_parser_v.string_n_string_doublet_list_list_of_in_channel ich;;

(* build Property Tags *)

let domain_name_of_parsed_input_file str_dol =
  let lef_l = Doublet_list_v.left_list_off_doublet_list str_dol in
  let dom_par = List.find (fun s -> String_v.first_word_off_string s = "domain") lef_l in
  String_v.second_word_off_string dom_par
;;

let nam_dom = domain_name_of_parsed_input_file str_dol;;
let tag_dom = Domain_tag_v.make_of_domain_name_of_sole_index_up nam_dom [];;

(* Properties Measures and Operators *)

let fna_inp = Filename_p.filename nof_inp;;
Input_filename_by_domain_tag_register_v.store tag_dom fna_inp;;

let tag_pfi_l = Property_figureset_tag_list_by_domain_tag_provider_v.provide tag_dom;; 

(* write Results *)

let oc_of_nameoffile nof = 
  Fileio_v.open_out_channel_of_string_of_string_of_nameoffile nam_cod "oc" nof_out
;; 

List.iter Property_figureset_value_v.write_of_its_tag tag_pfi_l

