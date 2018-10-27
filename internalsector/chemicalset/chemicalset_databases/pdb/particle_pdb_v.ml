(* $Id:  Exp $ *)

let print_particle_pdb ppf  pdb_ptc  =
  let (atom_keypdb, psn) = pdb_ptc in
    Format.fprintf  ppf  
      "@[key >%a<@ position %a ang"
      Keypdb_v.print atom_keypdb
      Particles.print_position psn 
;;

let print_particle_pdbs  ppf  ptc_a =
  Array.iter (fun ptc  ->
    Format.fprintf  ppf  "@[<hov>%a @]" print_particle_pdb  ptc) 
    ptc_a
;;

let atom_keypdb_of_particle_pdb  pdb_ptc =
  let (atom_keypdb, ptc_psn) = pdb_ptc in
  atom_keypdb
;;

let position_of_particle_pdb  pdb_ptc =
  let (atom_keypdb, ptc_psn) = pdb_ptc in
  ptc_psn
;;

let particle_pdb_of_atom_description_and_id_pdb  desc  id_pdb = 
  let atom_keypdb = 
    Atom_keypdb_v.atom_keypdb_of_atom_pdb_description_and_id_pdb  desc  id_pdb 
  in
  let ptc_psn =
    {Particle.x = desc.Atom_pdb.x_in_angstrom;
     y = desc.Atom_pdb.y_in_angstrom;
     z = desc.Atom_pdb.z_in_angstrom;
   } 
  in

    (atom_keypdb, ptc_psn)
;;	

let particle_pdb_of_atom_keypdb  atom_keypdb = 
  let id_pdb = Atom_keypdb_v.to_id_pdb atom_keypdb in
  let (key, value) = Register_pdb_v.retrieve 
      Register_pdb_v.atom_pdb_description_by_atom_keypdb  
      (Pdb_register.Atom_keypdb_t atom_keypdb)
  in
  let desc = Pdb_register.description_of_value value in
  particle_pdb_of_atom_description_and_id_pdb  desc  id_pdb 
;;	

let particle_pdb_of_record_atom  record_atom  id_pdb =
  let desc = 
    Atom_pdb_v.description_of_atom_pdb_record  record_atom
  in
    particle_pdb_of_atom_description_and_id_pdb  desc  id_pdb
;;

let particle_pdb_list_of_id_pdb  id_pdb =
  let key_l = Pdb_register.keys_selected
    Register_pdb_v.atom_pdb_description_by_atom_keypdb
    (fun k -> Atom_keypdb_v.has_id_pdb  (Pdb_register.atom_keypdb_of_key  k)  id_pdb) 
  in
  List.map  
    (fun k -> 
      particle_pdb_of_atom_keypdb (Pdb_register.atom_keypdb_of_key k))  
    key_l 
;;

let read_coordinate ib =
  Scanf.bscanf ib "%f" (fun f -> f)
;; 

let coordinate_of_string str =
  Scanf.sscanf str " %f" (fun f -> f)
;; 

(*
let particle_pdb_name_of_atom_description  desc =
  Format.fprintf  Format.str_formatter "%a%a_%a%a%a"  
    (Atom_pdb_v.print_h_index_and_symbol  desc.Atom_pdb.h_index_and_symbol)
    (Atom_pdb_v.to_string  desc.Atom_name_pdb_t.atom_symbol_pdb)
    (Residue_pdb_v.to_string  desc.Atom_pdb_t.residue)
    (desc.Atom_pdb_t.residue_number)
    (Index_pdb_t.to_string  desc.Atom_pdb.chain_index_pdb)
;;
*)

