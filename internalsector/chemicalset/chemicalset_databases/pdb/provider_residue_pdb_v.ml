(* $Id: residue_pdb_provider.ml,v 1.8 2007-09-19 19:20:17 colonna Exp $ *)

open Pdb_register;;
open Register_pdb_v;;

let oc_trace = Writings.open_info "residue_pdb_provider";;

Format.fprintf (Format.formatter_of_out_channel oc_trace) 
   (Tools_v.string_time ()) 
;;

let store_residue_pdb_insequence_number_by_residue_pdb_label_of_record_atom rcd_a  id_pdb = 
Utils_v.not_yet_implemented "store_residue_pdb_insequence_number_by_residue_pdb_label_of_record_atom"
(* 
  let atom_desc = Atom_pdb_v.description_of_atom_pdb_record rcd_a in
  let residue_label_pdb = 
    Atom_keypdb_v.residue_pdb_label_of_residue_pdb_insequence_number_and_id_pdb  atom_desc  id_pdb in 
    
  Register_pdb_v.store 
    Register_pdb_v.residue_pdb_insequence_number_by_residue_pdb_label
    (Pdb_register.Atom_keypdb_t residue_label_pdb, Pdb_register.Pdb_description atom_desc) ;

    Format.fprintf (Format.formatter_of_out_channel oc_trace) 
    "@.@[<h>At %s Residue_pdb_t_provider.store_residue_pdb_insequence_number_by_residue_pdb_label_of_record_atom:@.\
    Information: Value for key >%a< number_pdb %i has been stored.@]@."
    (Tools_v.string_time ()) 
    Keypdb_v.print residue_label_pdb
    atom_desc.Atom_pdb.number_pdb 
    ;
*)
;;

let residue_pdb_label_list_of_atom_pdb_records  atm_rcd_l =
  List.map  Residue_pdb_v.residue_pdb_label_of_atom_pdb_record atm_rcd_l 
;;

let store_residue_pdb_insequence_number_by_residue_pdb_label_of_id_pdb  id_pdb =
  let pdb_fnm = File_format_t.make_of_id_pdb  id_pdb in
  let atm_rcd_l = pdb_fnm.File_format_t.atom_pdb_records  in

  let res_lab_l = 
    Residue_pdb_v.residue_pdb_label_list_of_atom_pdb_records atm_rcd_l
  in

  List.iteri  (fun i r -> 
    store_residue_pdb_insequence_number_by_residue_pdb_label (i+1) res_lab) 
    res_lab_l
  ;

    Format.fprintf (Format.formatter_of_out_channel oc_trace) 
    "@.@[<h>At %s Residue_pdb_t_provider.store_residue_pdb_insequence_number_by_residue_pdb_label_of_id_pdb:@.\
    Information: Protein of Pdb_id >%a< has been stored in %i register entries.@]@."
    (Tools_v.string_time ()) 
    Header_pdb_t.print_id_pdb  id_pdb
    (Pdb_register.entry_number Register_pdb_v.residue_pdb_insequence_number_by_residue_pdb_label)
    ;
;;

let provide_residue_pdb_insequence_number_by_residue_pdb_label  pdb_rsl =
(* check storage *)
  let key_exists = Register_pdb_v.has_key 
      Register_pdb_v.residue_pdb_insequence_number_by_residue_pdb_label
      (Pdb_register.Atom_keypdb_t pdb_rsl) in
    
  if not key_exists then begin (* store insequence_number in register *)
      store_residue_pdb_insequence_number_by_residue_pdb_label 
    end;
                                         
  let key_exists = Register_pdb_v.has_key          (* check storage has completed*)
      Register_pdb_v.residue_pdb_insequence_number_by_residue_pdb_label
      (Pdb_register.Atom_keypdb_t pdb_rsl) in
    if not key_exists then begin
      Format.fprintf Format.err_formatter 
      "@[@.Residue_pdb_t_provider.provide_residue_pdb_insequence_number_by_residue_pdb_label:@.\
      Fatal Error.@.\
      Attempt to extract the insequence_number of an inexisting residue_label_pdb@.\
      Expected residue_label_pdb: >%a<@.\
      Actual keys of Register `residue_pdb_insequence_number_by_residue_pdb_label' are:@.%a@.\
      Check pdb file or residue_label_pdb code@.@]@."
      Keypdb_v.print pdb_rsl   
      Pdb_register.print_key_list 
	(Pdb_register.keys 
	 Register_pdb_v.residue_pdb_insequence_number_by_residue_pdb_label) ;
      assert false;
      end
    else
      let (key, Pdb_description desc) =
	try Register_pdb_v.retrieve                               (* retrieve entry *)
	    Register_pdb_v.residue_pdb_insequence_number_by_residue_pdb_label  
	    (Pdb_register.Atom_keypdb_t pdb_rsl)
	with Failure "Register_pdb_v.retrieve: Not found" ->
          Format.fprintf Format.err_formatter 
          "@[Residue_pdb_t_provider.provide_residue_pdb_insequence_number_by_residue_pdb_label:@.\
          Fatal Error.@.\
          Attempt to get inexisting `residue_pdb_insequence_number' for an existing residue_label_pdb@.\
                  in Register `residue_pdb_insequence_number_by_residue_pdb_label'\
          Actual residue_label_pdb: >%a<@.@]@"
          Keypdb_v.print pdb_rsl;
          assert false
    in
       desc
;;

