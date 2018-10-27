(* $Id: taggregate.ml,v 1.19 2007-12-22 19:17:07 colonna Exp $ *)
let mod_nam = "Simulation_h2";;;;
Tools_v.trace_module_name octr_ppf mod_nam;;
let mod_nam = mod_nam;; ;;
Tools_v.trace_module_name octr_ppf mod_nam;;

open Gentest_v;;
open Aggregate;;

(** {3 A 10 Steps Simulation of one H2 Molecule in one Box of one System.} *)

testing "Simulation_H2";;

(** {9 First H2 Molecule : h2_mol0.} *)

let h_atom_site_elder pth_mol =

      Format.fprintf (Format.formatter_of_out_channel oc_info) 
      "@.@[<hov>Simulation_h2.h_atom_site_elder:@ \
      Information:@. molecule path >%a<@]@." 
          Path_v.print pth_mol;

  let h_atm = Provider_general.provide 
      Atom_v.h (Site_v.make_elder_son_path pth_mol) in
  Site_v.make_web_site pth_mol h_atm 1
;;
 
let h_atom_site_cadet older_sit =
  let pth= Site_v.web_cadet_path older_sit in


      Format.fprintf (Format.formatter_of_out_channel oc_info) 
      "@.@[<hov>Simulation_h2.h_atom_site_cadet:@ \
      Information:@. older site path >%a< cadet path >%a<@]@." 
          Path_v.print older_sit.path 
          Path_v.print pth;


  let h_atm = Provider_general.provide Atom_v.h pth in 
  Site_v.web_cadet_site older_sit h_atm 1
;;

let h2_mol_elder_site box_path =
  let pth_mol = Site_v.make_elder_son_path box_path in

  let h1_sit = h_atom_site_elder pth_mol in
  let h2_sit = h_atom_site_cadet h1_sit in

  Site_v.make_set_site box_path [|h1_sit; h2_sit|]
;;

(** {9 First Box : 1 H2 Molecules.} *)

let box_1h2_elder_site sys_path =             (* an elder box of 1 H2 molecule *)
  let pth_box = Site_v.make_elder_son_path sys_path in
  let hm0_sit = h2_mol_elder_site pth_box in
  Site_v.make_set_site sys_path [|hm0_sit|]
;;

(** {9 The 0th System of the Simulation.} *)
(** composed of :
       - a Box of 1 H2 Molecule. *)

let sys_elder_site sim_path =
  let pth_sys = Site_v.make_elder_son_path sim_path in
  let box0_sit = box_1h2_elder_site pth_sys in
  Site_v.make_set_site sim_path [|box0_sit|]
;;

(** {9 Any cadet System of the Simulation.} *)

let sys_moved_site sys_cur =
(* build moved system from current one supposed to be built. *)
  let pth_mvd = Site_v.next_cadet_of_path sys_cur.path in
  let 
      box0_sit = box_1h2_elder_site pth_mvd (* build site from path recursively *)
  in
  Site_v.set_cadet_site sys_cur [|box0_sit|]  (* moved site from current and its boxes *)
;;

(** {9 A Simulation named "H2".} *)

let simulation_site =
  let pth_sim = Path.Eps "Sim_H2" in

  let sys0_sit = sys_elder_site pth_sim in   (*  0 : the first system *)
  let sys_nb = Provider_data_v.provide_last_step_number pth_sim in
  let sys_arr = Array.make (sys_nb+1) sys0_sit in
   
  for i = 1 to sys_nb do

    let sys_cur = sys_arr.(i-1) in          (* get current system from array *)

      Format.fprintf (Format.formatter_of_out_channel oc_info) 
      "@.@[<hov>Simulation_h2.simulation_site:@ \
      Information:@. System Current # i = %i path >%a<@]@." 
          (i-1) Path_v.print sys_cur.path;

    let 
	sys_mvd = sys_moved_site sys_cur     (* move current system *) 
    in

     sys_arr.(i) <- sys_mvd                  (* store moved system in array *) 
 
 done;

  Site_v.make_set_site (Path.Eps "Top") sys_arr
;;

let sim_sit_h_2 = simulation_site;;

let sim_sit_h_2 = simulation_site;;

(** System 0 *)
let sysn = bead_of_int_of_web_site sim_sit_h_2 0;;
let box0h2 = bead_of_int_of_web_site sysn 0;;
let molh20 = bead_of_int_of_web_site box0h2 0;;
let atmh1_molh20_box0h2_sys0 = bead_of_int_of_web_site molh20 0;; 
let atmh2_molh20_box0h2_sys0 = bead_of_int_of_web_site molh20 1;; 

testi 0 (
(h_atom_site_elder molh20.path).grain
=
{Atomic_grain_t.path =
  Path.Level (0, Path.Level (0, Path.Level (0, Path.Level (0, Path.Eps "Sim_H2"))));
 Atomic_grain.element = Atom_v.h;
 Atomic_grain_t.massic_particle =
  {Particle_t.coordinates = {Particle_t.x = 0.; Particle_t.y = 0.; Particle_t.z = 0.};
   Particle_t.velocity = {Particle_t.vx = 1.; Particle_t.vy = 0.; Particle_t.vz = 0.};
   Particle_t.acceleration =
    {Particle_t.ax = 0.; Particle_t.ay = 0.; Particle_t.az = 0.};
   Particle_t.mass = 1837.3622143704888}}
);;

testi 1 (
(h_atom_site_cadet (h_atom_site_elder molh20.path)).grain
=
{Atomic_grain_t.path =
   Path.Level (0,
   Path.Level (0, Path.Level (0, Path.Level (0, Path.Level (0, Path.Eps "Sim_H2")))));
 Atomic_grain.element = Atom_v.h;
 Atomic_grain_t.massic_particle =
  {Particle_t.coordinates = {Particle_t.x = 1.; Particle_t.y = 0.; Particle_t.z = 0.};
   Particle_t.velocity = {Particle_t.vx = 1.; Particle_t.vy = 0.; Particle_t.vz = 0.};
   Particle_t.acceleration =
    {Particle_t.ax = 0.; Particle_t.ay = 0.; Particle_t.az = 0.};
   Particle_t.mass = 1837.3622143704888}}
);;

testi 2 (
atmh1_molh20_box0h2_sys0.grain
= 
{Atomic_grain_t.path =
 Path.Level (0, Path.Level (0, Path.Level (0, Path.Level (0, Path.Eps "Sim_H2"))));
 Atomic_grain.element = Atom_v.h;
 Atomic_grain_t.massic_particle =
 {Particle_t.coordinates = {Particle_t.x = 0.; Particle_t.y = 0.; Particle_t.z = 0.};
  Particle_t.velocity = {Particle_t.vx = 1.; Particle_t.vy = 0.; Particle_t.vz = 0.};
  Particle_t.acceleration =
  {Particle_t.ax = 0.; Particle_t.ay = 0.; Particle_t.az = 0.};
  Particle_t.mass = 1837.3622143704888}}
);;

testi 3 (
atmh2_molh20_box0h2_sys0.grain
= 
{Atomic_grain_t.path =
 Path.Level (0,
 Path.Level (0, Path.Level (0, Path.Level (0, Path.Level (0, Path.Eps "Sim_H2")))));
 Atomic_grain.element = Atom_v.h;
 Atomic_grain_t.massic_particle =
 {Particle_t.coordinates = {Particle_t.x = 1.; Particle_t.y = 0.; Particle_t.z = 0.};
  Particle_t.velocity = {Particle_t.vx = 1.; Particle_t.vy = 0.; Particle_t.vz = 0.};
  Particle_t.acceleration =
  {Particle_t.ax = 0.; Particle_t.ay = 0.; Particle_t.az = 0.};
  Particle_t.mass = 1837.3622143704888}}
);;

(** System 10 *)
let sysn = bead_of_int_of_web_site sim_sit_h_2 10;;
let box0h2 = bead_of_int_of_web_site sysn 0;;
let molh20 = bead_of_int_of_web_site box0h2 0;;
let atmh1_molh20_box0h2_sys10 = bead_of_int_of_web_site molh20 0;; 
let atmh2_molh20_box0h2_sys10 = bead_of_int_of_web_site molh20 1;; 

testi 4 (
atmh1_molh20_box0h2_sys10.grain
=
{Atomic_grain_t.path =
  Path.Level (0, Path.Level (0, Path.Level (0, Path.Level (10, Path.Eps "Sim_H2"))));
 Atomic_grain.element = Atom_v.h;
 Atomic_grain_t.massic_particle =
  {Particle_t.coordinates =
    {Particle_t.x = 0.0100000000000000019; Particle_t.y = 0.; Particle_t.z = 0.};
   Particle_t.velocity =
    {Particle_t.vx = 1.00000000000000089; Particle_t.vy = 0.; Particle_t.vz = 0.};
   Particle_t.acceleration =
    {Particle_t.ax = 0.; Particle_t.ay = 0.; Particle_t.az = 0.};
   Particle_t.mass = 1837.3622143704888}}
);;

testi 5 (
atmh2_molh20_box0h2_sys10.grain
=
{Atomic_grain_t.path =
  Path.Level (0,
   Path.Level (0, Path.Level (0, Path.Level (0, Path.Level (10, Path.Eps "Sim_H2")))));
 Atomic_grain.element = Atom_v.h;

 Atomic_grain_t.massic_particle =
  {Particle_t.coordinates =
    {Particle_t.x = 1.0099999999999989; Particle_t.y = 0.; Particle_t.z = 0.};
   Particle_t.velocity =
    {Particle_t.vx = 0.999999999999889866; Particle_t.vy = 0.; Particle_t.vz = 0.};
   Particle_t.acceleration =
    {Particle_t.ax = 0.; Particle_t.ay = 0.; Particle_t.az = 0.};
   Particle_t.mass = 1837.3622143704888}}
);;

