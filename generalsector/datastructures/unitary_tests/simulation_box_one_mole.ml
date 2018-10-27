(* $Id: taggregate.ml,v 1.19 2007-12-22 19:17:07 colonna Exp $ *)

let nam_mod = "Tsimulation_box_one_mole";;
let octr_ppf = Format.formatter_of_out_channel Tools_v.oc_trace;;
Tools_v.trace_module_name octr_ppf nam_mod;;

open Make_test_v;;

(** {3 A 10 Steps Simulation of one H2 Molecule in one Box of one System.} *)

(* toplevel #use "simulation_box_one_mole.ml";; *)

testing "Simulation_box_one_mole";;

let smb_mol = Molecule_symbol_t.H2;;
let smb_box = Box_symbol_t.Box_one_mole;;
let smb_sys = System_symbol_t.Sys_box_one_mole;;
let smb_sim = Simulation_symbol_t.Sim_nsys_box_one_mole;;

let pth_smb_mol = Path_t.Molecule_symbol smb_mol;;
let pth_smb_box = Path_t.Box_symbol smb_box;;
let pth_smb_sys = Path_t.System_symbol smb_sys;;
let pth_smb_sim = Path_t.Simulation_symbol smb_sim;;

let pth_sim = Path_v.make_path pth_smb_sim (Path_t.Can 0) 
    (Path_t.Top "Box_one_mole_10_steps");;
let pth_sys = Path_v.make_path pth_smb_sys (Path_t.Can 0) pth_sim;;
let pth_box = Path_v.make_path pth_smb_box (Path_t.Can 0) pth_sys;;
let pth_mol = Path_v.make_path pth_smb_mol (Path_t.Can 0) pth_box;;

let sim_box_1h2 = Provider_simulation_site_v.provide pth_sim;;

(** System 5 and 10 *)
let sys_5 = Site_v.component_of_int_of_set_site sim_box_1h2 5;;
let pth_sys_5 = Site_v.path_of_set_site sys_5;;

let box_0_sys_5 = Site_v.component_of_int_of_set_site sys_5 0;;

let mol_h2_2_sys_5 = Molecule_site_v.on_atom_site_of_molecule_site 
             (Site_v.component_of_int_of_set_site box_0_sys_5 0);;
let pth_mol_h2_2_sys_5 = Site_v.path_of_set_site mol_h2_2_sys_5;;

let sys_10 = Site_v.component_of_int_of_set_site sim_box_1h2 10;;
let pth_sys_10 = Site_v.path_of_set_site sys_10;;

let box_0_sys_10 = Site_v.component_of_int_of_set_site sys_10 0;;

let mol_h2_2_sys_10 = Molecule_site_v.on_atom_site_of_molecule_site 
             (Site_v.component_of_int_of_set_site box_0_sys_10 0);;
let pth_mol_h2_2_sys_10 = Site_v.path_of_set_site mol_h2_2_sys_10;;

let atm_h_1_mol_h2_2_sys_10 = 
  Site_v.component_of_int_of_set_site mol_h2_2_sys_10 0;; 
let atm_h_2_mol_h2_2_sys_10 = 
  Site_v.component_of_int_of_set_site mol_h2_2_sys_10 1;; 

test_number 1 (
Site_v.path_of_web_site atm_h_1_mol_h2_2_sys_10
=
Path_t.Level
  ((Path_t.Atom, Path_t.Atom_symbol Atom_v.h, Path_t.Web Path_t.W_elder),
  pth_mol_h2_2_sys_10)
);;

test_number 2 (
Atom_site_v.atom_path_of_atom_site atm_h_2_mol_h2_2_sys_10
=
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_symbol Atom_v.h, Path_t.Web Path_t.W_forth),
  pth_mol_h2_2_sys_10)
);;

(** {3 Trajectory.} *)

(* run the simulation. 
   Temporarily, the parameters : time_step, number of steps, initial velocity 
   are defined in provider_data_u_any.ml
   initial coordinates in initialize_atom_particle_u_any.ml. *)

Trajectory_formatted_v.write_configuration_of_simulation sim_box_1h2;;

(* pick the H2 atom of molecule # 2 (the 3rd) of the 5th step system. *) 

let pth_atm_h_2_mol_h2_2_sys_5 = 
Path_t.Level
 ((Path_t.Atom, Path_t.Atom_symbol Atom_v.h, Path_t.Web Path_t.W_forth),
  pth_mol_h2_2_sys_5)
;;

(* get the associated particle *)

let ptc_atm_h_2_mol_h2_2_sys_5 = 
   Provider_atom_particle_v.provide pth_atm_h_2_mol_h2_2_sys_5;;

test_number 3 (
(Particle_v.print_triplet Format.str_formatter
(ptc_atm_h_2_mol_h2_2_sys_5.Atom_particle_t.position);
Format.flush_str_formatter ()) 
= "1.000000 0.000000 0.050000\n"
&&
(Particle_v.print_triplet Format.str_formatter
(ptc_atm_h_2_mol_h2_2_sys_5.Atom_particle_t.velocity);
Format.flush_str_formatter ()) 
= "0.000000 0.000000 10.000000\n"
);;

