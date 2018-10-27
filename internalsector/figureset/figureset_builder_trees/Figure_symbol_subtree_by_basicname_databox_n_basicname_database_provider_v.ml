(** {3 Figure_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : BFIG:Figure_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v";
   "Needs : BFIG:Figure_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v";
   "Needs : BDB1:Db1points_context_databox_tag_by_basicname_databox_n_basicname_database_provider_v";
   "Needed-by :"; 
   "What-is-it : the Subtree of Figure_symbol Rooted by Figure_context_databox_symbol";
   "What-is-it : a Figure_context_databox son is a Figure_set_body";
   "What-is-it : Figure_set_body sons are Figure_set_body_fence_point";
   "How-is-it-done : by defining the Figure Symbol Tree node with information from Databaseset (Db1points)";
   "How-is-it-done : by mapping Db1points_symbol_string_off and Figure_symbol_string_off";
   "How-is-it-done : by getting Db1points_tag from its String_off and Symbol";
   "How-is-it-done : by getting Db1points_tag_son list from Db1points_tag";
   "How-is-it-done : by translating Figure_symbols from equivalent Db1points_symbols";
   "How-is-it-done : using String_off to get Db1points Tag and build Figure_symbol";
   "Remark : No storage. Only Tags are stored";
   "Abbreviation : sbo  = figure_context_databox";
   "Abbreviation : nwc  = db1points";
   "Abbreviation : ele  = elementary";
   "Abbreviation : ske  = figure";
   "Abbreviation : ept  = elementary_body_parameter_tuple";
   "Abbreviation : ebp  = elementary_border_parameter";
   "Abbreviation : l    = list";
   "Abbreviation : t    = tree";
   "Abbreviation : yt   = ytree";
   "Abbreviation : st   = subtree";
   "Abbreviation : stl  = subtree list";
   "Abbreviation : stll = subtree list list";
   "Author : François Colonna 22nd March 2016 Point and other Figure Trees are separarted"; 
   "Author : François Colonna 12h April 2016 corrected onecenter (twice) -> anycenter";
   "Author : François Colonna 11 octobre 2016 at 11:14:53+02:00 from DSKE";
   "Author : François Colonna 13 octobre 2016 at 11:56:47+02:00 only symbols";
   "Author : François Colonna 09 avril 2017 at 12:57:46+02:00";
 ]
 ;;

(*         |-           Figure_context_sector   -|          *)
(*         |                    / | \              | fixed    *)
(*         |-           Figure_context_domain   -| duo      *)
(* Context |                    / | \              |          *)
(* Quatuor |-           Figure_context_database -|          *)
(*         |                    / | \              | variable *)
(*         |-           Figure_context_databox  -| duo      *)
(*         |                      |                           *)
(*                                |                           *)
(*                          Figure_set_body                     *)
(*      Figure_set_body_aopefset_anycenter ( | ..._ecppefset_anycenter) *)
(*             "NWC"                                          *)
(*         /                     |                \           *)
(*    Figure_set_body_aopefset_onecenter Figure_set_body_aopefset_onecenter *)
(*                     "H"                             "He"  .          *)

(*    Figure_set_fence_aopef Figure_set_fence_aopefset ... *)
(*       "H S 1 1 "      ...   "He S 1 1" ...          *)


let nam_mod = Management_v.current_module_name (documentation ()) ;;
 
(** {6 Building} *)

let build (bna_dbo, bna_dba) =
  let nam_dba = Basicname_v.string_off bna_dba in
    match nam_dba with
    | "db1points" ->
	let tag_dcb = 
	  Db1pointsdata_context_databox_tag_by_basicname_databox_provider_v.provide
	    bna_dbo
	in
	Figure_symbol_subtree_by_db1pointsdata_context_databox_tag_provider_v.provide
	  tag_dcb
	  
    | "db2points" 
    | _ ->
	Error_messages_v.print_fatal_error __LOC__ "build"
	  "Database name \"db1points\" only is yet implemented"
          nam_dba
          "Check why in Inputbox file"
;;

(** {6 Providing} *)

let provide key =
  let nam_fun = "provide" in
  let pro_cpu = Management_v.entering_of_module_name_of_function_name nam_mod nam_fun in
  let result = build key in
  Management_v.exiting_of_process_times_of_module_name_of_function_name pro_cpu nam_mod nam_fun;
  result
;;

(* using template_provider_without_register_v.ml *)
(* done with do_provider_without_register.sh Figure_symbol_subtree_by_basicname_databox_n_basicname_database_provider_v.ml force on mercredi 12 octobre 2016, 16:11:21 (UTC+0200) *)
