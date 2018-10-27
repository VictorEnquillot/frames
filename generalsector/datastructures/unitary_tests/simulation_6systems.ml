open Gentest_v;;
open Tframes.Frames;;
open Aggregate;;

(*open Site_tools_v;;*)

(** {3 A Simulation of 6 systems.} *)

testing "Simulation_6_sytems";;

(** {9 Atomic_sites of Molecule H2.} *)

(* site components are the atoms its grain is covalently linked with *)

let h2_path = Path.Eps "H2";;

let h1_atomic_grain = Atomic_grain_v.make Atom_v.h h2_path;;
let sit_h_1 = Site_v.make_web_site h2_path h1_atomic_grain 1;;

(* first_atom_site : create sit_h_1 empty "new_head_atom_site" *)

testi 0 (
sit_h_1.path = Path.Level (0, Path.Eps "H2") &&
sit_h_1.grain = h1_atomic_grain &&
sit_h_1.components = [|None|] 
);;

(* free_atom_site : create sit_h_2 and link it to sit_h_1 
                     "link_new_atom_site" *)

let h2_atomic_grain = Atomic_grain_v.make Atom_v.h sit_h_1.path;;
let sit_h_2 = Site_v.web_cadet_site sit_h_1 h2_atomic_grain 1;;

testi 1 (
sit_h_2.grain = h2_atomic_grain &&
sit_h_2.path = Site_v.make_elder_son_path (Site_v.make_elder_son_path h2_path) &&
sit_h_1.components = 
   [|Some h2_atomic_grain|] &&
sit_h_2.components = 
   [|Some h1_atomic_grain|] &&
sit_h_2.location = 1 + sit_h_1.location
);;

(** {9 First H2 Molecule : h2_mol0.} *)

(* Site_v.make_set_site : 
   create h2_mol1_site from path and array of atom_sites *)

let box_3h2_path = Path.Eps "Box_3h2";;

let h2_mol_elder_site up_path =
  let pth_mol = Site_v.make_elder_son_path up_path in

  let h1_atm = Atomic_grain_v.make Atom_v.h (Site_v.make_elder_son_path pth_mol) in
  let h1_sit = Site_v.make_web_site pth_mol h1_atm 1 in

  let h2_atm = Atomic_grain_v.make Atom_v.h h1_sit.path in
  let h2_sit = Site_v.web_cadet_site h1_sit h2_atm 1 in

  Site_v.make_set_site up_path [|h1_sit; h2_sit|]
;;

let h2_mol0_site = h2_mol_elder_site box_3h2_path ;;
let loc_0 = h2_mol0_site.location;;

testi 2 (
h2_mol0_site.path = Path.Level (0, Path.Eps "Box_3h2") &&
h2_mol0_site.grain.path = Site_v.make_elder_son_path h2_mol0_site.path &&
components_location_of_site h2_mol0_site = [|loc_0-2; loc_0-1|] &&
component_path_string_array_of_site h2_mol0_site = 
[|"[0; 0; Box_3h2]"; "[0; 0; 0; Box_3h2]"|]
);;

(** {9 Second H2 Molecule : h2_mol1.} *)
(* Site_v.set_cadet_site : 
   create h2_mol2_site from h2_mol1_site and array of atom_sites *)

let h2_mol_cadet_site older_mol =
  let pth_mol = Path.next_cadet older_mol.path in
  let h1_atm = Atomic_grain_v.make Atom_v.h (Site_v.make_elder_son_path pth_mol) in
  let h1_sit = Site_v.make_web_site pth_mol h1_atm 1 in
  let h2_atm = Atomic_grain_v.make Atom_v.h h1_sit.path in
  let h2_sit = Site_v.web_cadet_site h1_sit h2_atm 1 in

  Site_v.set_cadet_site older_mol [|h1_sit; h2_sit|]
;;

let h2_mol1_site = h2_mol_cadet_site h2_mol0_site;;
let loc_0 = h2_mol1_site.location;;

testi 3 (
h2_mol1_site.path = Path.Level (1, Path.Eps "Box_3h2") &&
h2_mol1_site.grain.path = Site_v.make_elder_son_path h2_mol1_site.path &&
components_location_of_site h2_mol1_site = [|loc_0-2; loc_0-1|] &&
component_path_string_array_of_site h2_mol1_site = 
[|"[0; 1; Box_3h2]"; "[0; 0; 1; Box_3h2]"|]
);;

(** {9 Third H2 Molecule : h2_mol2.} *)

let h2_mol2_site = h2_mol_cadet_site h2_mol1_site;;
let loc_0 = h2_mol2_site.location;;

testi 4 (
h2_mol2_site.path = Path.Level (2, Path.Eps "Box_3h2") &&
h2_mol2_site.grain.path = Site_v.make_elder_son_path h2_mol2_site.path  &&
components_location_of_site h2_mol2_site = [|loc_0-2; loc_0-1|] &&
component_path_string_array_of_site h2_mol2_site =
[|"[0; 2; Box_3h2]"; "[0; 0; 2; Box_3h2]"|]
);;

(** {9 First Box : 3 H2 Molecules.} *)

(* Site_v.make_set_site : 
   create box_3sit_h_2 from path and array of atom_sites *)

let system_path = Path.Eps "Sys";;

let box_3h2_elder_site sys_path =             (* a new box of 3 H2 molecules *)
  let pth_box = Site_v.make_elder_son_path sys_path in

  let hm0_sit = h2_mol_elder_site pth_box in
  let hm1_sit = h2_mol_cadet_site hm0_sit in
  let hm2_sit = h2_mol_cadet_site hm1_sit in

  Site_v.make_set_site sys_path [|hm0_sit; hm1_sit; hm2_sit|]
;;

let box_3sit_h_2 = box_3h2_elder_site system_path;;
let loc_0 = box_3sit_h_2.location;;

testi 5 (
box_3sit_h_2.path = Path.Level (0, Path.Eps "Sys") &&
box_3sit_h_2.grain.path = Site_v.make_elder_son_path box_3sit_h_2.path &&
components_location_of_site box_3sit_h_2 = [|loc_0-7; loc_0-4; loc_0-1|] &&
component_path_string_array_of_site box_3sit_h_2 = 
[|"[0; 0; Sys]"; "[1; 0; Sys]"; "[2; 0; Sys]"|]
);;

(** {9 First H2O Molecule : oh2_mol0.} *)

let box_2oh2_path = Path.Eps "Box_2oh2";;

let oh2_mol_elder_site up_path =
  let pth_mol = Site_v.make_elder_son_path up_path in

  let o_atm = Atomic_grain_v.make Atom_v.o (Site_v.make_elder_son_path pth_mol) in
  let o_sit = Site_v.make_web_site pth_mol o_atm 2 in
  let h1_atm = Atomic_grain_v.make Atom_v.h o_sit.path in
  let h1_sit = Site_v.web_cadet_site o_sit h1_atm 1 in
  let h2_atm = Atomic_grain_v.make Atom_v.h h1_sit.path in
  let h2_sit = Site_v.web_cadet_site o_sit h2_atm 1 in

  Site_v.make_set_site up_path [|o_sit; h1_sit; h2_sit|]
;;

let oh2_mol0_site = oh2_mol_elder_site box_2oh2_path ;;
let loc_0 = oh2_mol0_site.location;;

testi 6 (
oh2_mol0_site.path = Path.Level (0, Path.Eps "Box_2oh2") &&
oh2_mol0_site.grain.path = Site_v.make_elder_son_path oh2_mol0_site.path &&
components_location_of_site oh2_mol0_site = [|loc_0-3; loc_0-2; loc_0-1|] &&
component_path_string_array_of_site oh2_mol0_site = 
[|"[0; 0; Box_2oh2]"; "[0; 0; 0; Box_2oh2]"; "[1; 0; 0; Box_2oh2]"|]
);;

(** {9 Second H2O Molecule : oh2_mol1.} *)

let oh2_mol_cadet_site older_mol =
  let pth_mol = Path.next_cadet older_mol.path in

  let o_atm = Atomic_grain_v.make Atom_v.o (Site_v.make_elder_son_path pth_mol) in
  let o_sit = Site_v.make_web_site pth_mol o_atm 2 in

  let h1_atm = Atomic_grain_v.make Atom_v.h o_sit.path in
  let h1_sit = Site_v.web_cadet_site o_sit h1_atm 1 in

  let h2_atm = Atomic_grain_v.make Atom_v.h h1_sit.path in
  let h2_sit = Site_v.web_cadet_site o_sit h2_atm 1 in

  Site_v.set_cadet_site older_mol [|o_sit; h1_sit; h2_sit|]
;;

let oh2_mol1_site = oh2_mol_cadet_site oh2_mol0_site;;
let loc_0 = oh2_mol1_site.location;;

testi 7 (
oh2_mol1_site.path = Path.Level (1, Path.Eps "Box_2oh2") &&
oh2_mol1_site.grain.path = Site_v.make_elder_son_path oh2_mol1_site.path &&
components_location_of_site oh2_mol1_site = [|loc_0-3; loc_0-2; loc_0-1|] &&
component_path_string_array_of_site oh2_mol1_site = 
[|"[0; 1; Box_2oh2]"; "[0; 0; 1; Box_2oh2]"; "[1; 0; 1; Box_2oh2]"|]
);;

(** {9 Second Box : Box of 2 H2O Molecules.} *)

(* Site_v.make_set_site : 
   create box_2osit_h_2 from path and array of atom_sites *)

let system_path = Path.Eps "Sys";;

let box_2oh2_cadet_site older_box =         (* a new cadet box of 2 H2O molecules *)
(* number of molecules (=2) is read *)
  let pth_box = Path.next_cadet older_box.path in

  let oh2m0_sit = oh2_mol_elder_site pth_box in
  let oh2m1_sit = oh2_mol_cadet_site oh2m0_sit in

  Site_v.set_cadet_site older_box [|oh2m0_sit; oh2m1_sit|]
;;

let box_2osit_h_2 = box_2oh2_cadet_site box_3sit_h_2;;
let loc_0 = box_2osit_h_2.location;;

testi 8 (
box_2osit_h_2.path = Path.Level (1, Path.Eps "Sys") &&
box_2osit_h_2.grain.path = Site_v.make_elder_son_path box_2osit_h_2.path &&
components_location_of_site box_2osit_h_2 = [|loc_0-5; loc_0-1|] &&
component_path_string_array_of_site box_2osit_h_2 = 
[|"[0; 1; Sys]"; "[1; 1; Sys]"|]
);;

(** {9 The 0th System of the Simulation.} *)
(** composed of :
       - a Box of 3 H2 Molecules 
       - a Box of 2 Water Molecules . *)

let simulation_path = Path.Eps "Sim_C";;

let sys_elder_site sim_path =
  let pth_sys = Site_v.make_elder_son_path sim_path in

  let box0_sit = box_3h2_elder_site pth_sys in
  let box1_sit = box_2oh2_cadet_site box0_sit in

  Site_v.make_set_site sim_path [|box0_sit; box1_sit|]
;;

let sys0_site = sys_elder_site simulation_path;;
let loc_0 = sys0_site.location;;

testi 9 (
sys0_site.path = Path.Level (0, Path.Eps "Sim_C") &&
sys0_site.grain.path = Site_v.make_elder_son_path sys0_site.path && 
components_location_of_site sys0_site = [|loc_0-10; loc_0-1|] &&
component_path_string_array_of_site sys0_site =
[|"[0; 0; Sim_C]"; "[1; 0; Sim_C]"|]
);;

(** {9 The 1th System of the Simulation.} *)

let sys_cadet_site oldier_sys =
  let pth_sys = Path.next_cadet oldier_sys.path in
  let box0_sit = box_3h2_elder_site pth_sys in
  let box1_sit = box_2oh2_cadet_site box0_sit in
  Site_v.set_cadet_site oldier_sys [|box0_sit; box1_sit|]
;;

let sys1_site = sys_cadet_site sys0_site;;
let loc_0 = sys1_site.location;;

testi 10 (
sys1_site.path = Path.Level (1, Path.Eps "Sim_C") &&
sys1_site.grain.path = Site_v.make_elder_son_path sys1_site.path && 
components_location_of_site sys1_site = [|loc_0-10;loc_0-1|] &&
component_path_string_array_of_site sys1_site =
[|"[0; 1; Sim_C]"; "[1; 1; Sim_C]"|]
);;

(** {9 A Simulation named "C".} *)

let simulation_site =
  (** read number of systems *)
  let pth_sim = Path.Eps "Sim_C" in

  let sys0_sit = sys_elder_site pth_sim in
  let sys1_sit = sys_cadet_site sys0_sit in
  let sys2_sit = sys_cadet_site sys1_sit in
  let sys3_sit = sys_cadet_site sys2_sit in
  let sys4_sit = sys_cadet_site sys3_sit in
  let sys5_sit = sys_cadet_site sys4_sit in

  Site_v.make_set_site (Path.Eps "Top")
    [|sys0_sit; sys1_sit; sys2_sit; sys3_sit; sys4_sit; sys5_sit|]
;;

let sim_c_site = simulation_site;;
let loc_0 = sim_c_site.location;;

testi 11 (
sim_c_site.path = Path.Level (0, Path.Eps "Top") &&
sim_c_site.grain.path = Path.Level (0, Path.Eps "Sim_C") &&
components_location_of_site sim_c_site = 
[|loc_0-101; loc_0-81; loc_0-61; loc_0-41; loc_0-21; loc_0-1|] &&
component_path_string_array_of_site sim_c_site = 
[|"[0; Sim_C]"; 
  "[1; Sim_C]"; "[2; Sim_C]"; "[3; Sim_C]"; "[4; Sim_C]"; "[5; Sim_C]"|]
);;

(** {9 Path of leaves.} *)

let sys0 = bead_of_int_of_web_site sim_c_site 0;;
let box3h2 = bead_of_int_of_web_site sys0 0;;
let molh20 = bead_of_int_of_web_site box3h2 0;;
let atmh0_molh20_box3h2_sys0 = bead_of_int_of_web_site molh20 0;; 

testi 12 (
atmh0_molh20_box3h2_sys0.path =
Path.Level (0, Path.Level (0, Path.Level (0, Path.Level (0, Path.Eps "Sim_C"))))
);;
