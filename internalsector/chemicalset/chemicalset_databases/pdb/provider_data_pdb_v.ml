(* $Id:  Exp $ *)

(** {3 Data Pdb repository.} *)

    file in the future. *)

let nam_cod = "Provider_data_pdb_v";;
let oc_trace = Tools_v.oc_trace;;
let octr_ppf = Format.formatter_of_out_channel oc_trace;;

let print_error_identifier fpi her =
    Format.fprintf (Format.err_formatter) 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
    unkown protein identifier >%s<@.\
    Please add it to the menu above.@]@." 
    nam_cod her fpi;       
;;

let rec provide_file_name_extension pri = 
  let here_ = "provide_file_name_extension" 
  in Tools_v.entering nam_cod here_ octr_ppf ;
  let result =
 
  let fpi = 
    Protein_identifier_v.frames_protein_identifier_of_protein_identifier 
      pri in
    match fpi with 
      | "4pti" | "ga" | "gap" -> "pdb"
      | s -> begin 
	  print_error_identifier fpi "provide_file_name_extensio"; 
	  assert false 
      end

  in 
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.%s:@ Pdb file file_name_extension is >%s<@]@." 
          nam_cod here_ result;
      Tools_v.exiting nam_cod here_ octr_ppf ;
 
  result
;;

let provide_unix_path pri = 
  let here_ = "provide_unix_path" 
  in Tools_v.entering nam_cod here_ octr_ppf ;
  let result =
 
  let fpi = 
    Protein_identifier_v.frames_protein_identifier_of_protein_identifier 
      pri in
    match fpi with 
      | "4pti" | "ga" | "gap" ->   "../../databases/PDB/"
      | s -> begin 
	  print_error_identifier fpi "provide_unix_path"; 
	  assert false 
      end

  in 
      Format.fprintf octr_ppf 
      "@.@[<hov>%s.%s:@ Pdb file unix_path is >%s<@]@." 
          nam_cod here_ result;
      Tools_v.exiting nam_cod here_ octr_ppf ;
 
  result
;;

let provide_model_label () = 
  let here_ = "provide_model_label" 
  in Tools_v.entering nam_cod here_ octr_ppf ;
  let result =

  Model_recordpdb_symbol_t.Usual 

  in 
     Format.fprintf octr_ppf 
      "@.@[<hov>%s.%s:@ model is >%a<@]@." 
          nam_cod here_ Model_recordpdb_symbol_v.print result;
      Tools_v.exiting nam_cod here_ octr_ppf ;
 
  result
;;

let provide_alternate_location_index pth_atm = 
  let here_ = "provide_alternate_location_index"
  in Tools_v.entering nam_cod here_ octr_ppf ;
  let result =

  match pth_atm with 
    | Path_t.Level (lvl_atm,
       Path_t.Level (lvl_blk,
        Path_t.Spine (lvl_frg,
         Path_t.Spine ((Path_t.Capeptide, 
              Path_t.Capeptide_symbol sym_cpt,
	      Path_t.Alone), 
          Path_t.Spine ((Path_t.Residue, 
              Path_t.Residue_symbol sym_res,
              Path_t.Vertebra n), 
           pth_chn))))) -> Index_pdb_t.Alternate_blank

   | Path_t.Level (lvl_atm,  (* *** TODO *)
      Path_t.Level (lvl_blk,
       Path_t.Spine (lvl_frg,
        Path_t.Spine ((Path_t.Sidechain, 
	    Path_t.Sidechain_symbol (Aminoacid_symbol_t.Ala, Protonation_state_t.Abs),
	    Path_t.Alone),
         Path_t.Spine ((Path_t.Residue, 
             Path_t.Residue_symbol sym_ama,
             Path_t.Vertebra 1), 
          pth_chn))))) -> Index_pdb_t.Alternate_B

   | _ -> Index_pdb_t.Alternate_blank

  in 
      Tools_v.exiting nam_cod here_ octr_ppf ;
 
  result
;;

