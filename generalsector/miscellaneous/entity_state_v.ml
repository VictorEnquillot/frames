(** {3 The State functionalities for any Entity.} *)

let nam_mod = "Entity_state_v";;

(** {6 Modules.} *)

module Ent_t = Entity_state_t
module Cst_v = Chemical_state_v
module Qst_v = Quantum_state_v
module Fst_v = Functional_state_v
module Mbs_v = Molbasis_state_v
module Mty_v = Multiplicity_v

(** {6 Making.} *)

(** {6 Extracting.} *)

let chemical_state_off_entity_state = function
  | Ent_t.Chemical_state pst -> pst
  | _ -> 
      failwith ("Not_Chemical_state:chemical_state_of_entity_state") 
;;

let environment_state_off_entity_state est =
  let cst = chemical_state_off_entity_state est in
  Cst_v.environment_state_off_chemical_state cst
;;

let protonation_state_off_entity_state est =
  let cst = chemical_state_off_entity_state est in
  Cst_v.protonation_state_off_chemical_state cst
;;

let functional_state_off_entity_state = function
  | Ent_t.Functional_state est -> est
  | _ -> 
      failwith ("Not_Functional_state:functional_state_of_entity_state") 
;;

let multiplicity_off_entity_state = function
  | Ent_t.Bond_state mty -> mty
  | _ -> 
      failwith ("Not_Bond_state:bond_state_of_fragment_state") 
;;

let quantum_state_off_entity_state = function
  | Ent_t.Quantum_state qst -> qst
  | _ -> 
      failwith ("Not_Bond_state:bond_state_of_fragment_state") 
;;

(** {6 Converting.} *)

let rec print ppf = function
  | Ent_t.Bond_state mty ->
      Format.fprintf ppf "B_%a" Mty_v.print mty
  | Ent_t.Chemical_state pst -> 
      Format.fprintf ppf "P_%a" Cst_v.print pst
  | Ent_t.Functional_state est ->
      Format.fprintf ppf "E_%a" Fst_v.print est
  | Ent_t.Mixed (st1, st2) -> 
      Format.fprintf ppf "(%a, %a)" print st1 print st2
  | Ent_t.Molbasis_state mbs -> 
      Mbs_v.print ppf mbs
  | Ent_t.Quantum_state est ->
      Format.fprintf ppf "Q_%a" Qst_v.print est
;;

let rec name = function
  | Ent_t.Bond_state mty ->
      Format.sprintf "%s" (Mty_v.name mty)
  | Ent_t.Chemical_state pst -> 
      Format.sprintf "%s" (Cst_v.name pst)
  | Ent_t.Functional_state est ->
      Format.sprintf "%s" (Fst_v.name est)
  | Ent_t.Mixed (st1, st2) -> 
      Format.sprintf "%s:%s" (name st1) (name st2)
  | Ent_t.Molbasis_state mbs -> 
      Mbs_v.name mbs
  | Ent_t.Quantum_state est ->
      Format.sprintf "%s" (Qst_v.name est)
;;



