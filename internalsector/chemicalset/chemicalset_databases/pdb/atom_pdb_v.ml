(** {3 The Functionalities for an Atom of the Pdb.} *)

let nam_cod = "Atom_pdb_v";;



let xyz_of_atom_pdb pat =
  (pat.Atom_pdb_t.atom_x_pdb,
   pat.Atom_pdb_t.atom_y_pdb, 
   pat.Atom_pdb_t.atom_z_pdb)  
;;

(** {6 Printings.} *)

let print ppf pat = 
  let key = Keypdb_v.atom_partial_keypdb_of_atom_pdb pat in
  let (x, y, z) = xyz_of_atom_pdb pat in
    Format.fprintf ppf 
    "@[<hov>atom_partial_keypdb >%a<@ \
    x = %f@ y = %f@ z = %f@]@."

   Keypdb_v.print key x y z
;;

let make_atom_pdb key_atm x y z b = {
  Atom_pdb_t.atom_partial_keypdb = key_atm;
  Atom_pdb_t.atom_x_pdb = x;
  Atom_pdb_t.atom_y_pdb = y;
  Atom_pdb_t.atom_z_pdb = z;
  Atom_pdb_t.atom_b_pdb = b;
}
;;

let atom_pdb_of_recordpdb_atom atm_rcd = 
  let key_atm = Atom_keypdb_v.atom_partial_keypdb_of_recordpdb_atom atm_rcd in
  let x = atm_rcd.Recordpdb_atom_t.x in
  let y = atm_rcd.Recordpdb_atom_t.y in
  let z = atm_rcd.Recordpdb_atom_t.z in
  let b = atm_rcd.Recordpdb_atom_t.b_factor in

  make_atom_pdb key_atm x y z b
;;

