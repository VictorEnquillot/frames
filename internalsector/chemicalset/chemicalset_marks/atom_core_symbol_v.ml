(** {3 The functionalities for a Symbol for a Atom_core.} *)

let nam_cod = "atom_core_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_symbol_t.Atom_twotied -> "atom_twotied"
  | Atom_core_symbol_t.Atom_threetied -> "atom_threetied"
  | Atom_core_symbol_t.Atom_core_fourtied_symbol sym_ac4 ->
      Atom_core_fourtied_symbol_v.name sym_ac4
  | Atom_core_symbol_t.Atom_core_fivetied_symbol sym_ac5 ->
      Atom_core_fivetied_symbol_v.name sym_ac5
  | Atom_core_symbol_t.Atom_core_sixtied_symbol sym_ac6 ->
      Atom_core_sixtied_symbol_v.name sym_ac6
;;


(** {6 Upgrading} *)


let atom_core_symbol_of_atom_core_fourtied_symbol sym_ac4 = 
  Atom_core_symbol_t.Atom_core_fourtied_symbol sym_ac4
;;

let atom_core_symbol_of_atom_core_fivetied_symbol sym_ac5 = 
  Atom_core_symbol_t.Atom_core_fivetied_symbol sym_ac5
;;

let atom_core_symbol_of_atom_core_sixtied_symbol sym_ac6 = 
  Atom_core_symbol_t.Atom_core_sixtied_symbol sym_ac6
;;


(** {6 Abbreviating} *)


let atom_twotied = Atom_core_symbol_t.Atom_twotied;;

let atom_threetied = Atom_core_symbol_t.Atom_threetied;;

let c_ssss = atom_core_symbol_of_atom_core_fourtied_symbol Atom_core_fourtied_symbol_v.c_ssss;;

let n_ssss = atom_core_symbol_of_atom_core_fourtied_symbol Atom_core_fourtied_symbol_v.n_ssss;;

let s_ssss = atom_core_symbol_of_atom_core_fourtied_symbol Atom_core_fourtied_symbol_v.s_ssss;;

let xe_ssss = atom_core_symbol_of_atom_core_fourtied_symbol Atom_core_fourtied_symbol_v.xe_ssss;;

let cl_sssss = atom_core_symbol_of_atom_core_fivetied_symbol Atom_core_fivetied_symbol_v.cl_sssss;;

let s_6s = atom_core_symbol_of_atom_core_sixtied_symbol Atom_core_sixtied_symbol_v.s_6s;;


(** {6 Making} *)


let make s = function
  | "atom_twotied" -> atom_twotied
  | "atom_threetied" -> atom_threetied
  | "c_ssss" -> c_ssss
  | "n_ssss" -> n_ssss
  | "s_ssss" -> s_ssss
  | "xe_ssss" -> xe_ssss
  | "cl_sssss" -> cl_sssss
  | "s_6s" -> s_6s
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let atom_core_fourtied_symbol_off_atom_core_symbol = function
  | Atom_core_symbol_t.Atom_core_fourtied_symbol sym_ac4 -> sym_ac4
  | sym_atc -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_fourtied_symbol_off_atom_core_symbol"
      "Atom_core_fourtied_symbol"
      (name sym_atc) "check"
;;

let atom_core_fivetied_symbol_off_atom_core_symbol = function
  | Atom_core_symbol_t.Atom_core_fivetied_symbol sym_ac5 -> sym_ac5
  | sym_atc -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_fivetied_symbol_off_atom_core_symbol"
      "Atom_core_fivetied_symbol"
      (name sym_atc) "check"
;;

let atom_core_sixtied_symbol_off_atom_core_symbol = function
  | Atom_core_symbol_t.Atom_core_sixtied_symbol sym_ac6 -> sym_ac6
  | sym_atc -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_sixtied_symbol_off_atom_core_symbol"
      "Atom_core_sixtied_symbol"
      (name sym_atc) "check"
;;


(** {6 Querying} *)


let is_atom_core_fourtied_symbol_off_atom_core_symbol = function
  | Atom_core_symbol_t.Atom_core_fourtied_symbol _ -> true
  | _ -> false
;;

let is_atom_core_fivetied_symbol_off_atom_core_symbol = function
  | Atom_core_symbol_t.Atom_core_fivetied_symbol _ -> true
  | _ -> false
;;

let is_atom_core_sixtied_symbol_off_atom_core_symbol = function
  | Atom_core_symbol_t.Atom_core_sixtied_symbol _ -> true
  | _ -> false
;;


(** created by ./generator atom_core implementation symbol at 15:1 13 Mar 2012. *)



