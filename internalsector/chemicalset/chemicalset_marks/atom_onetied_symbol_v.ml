(** {3 The functionalities for a Symbol for a Atom_onetied.} *)

let nam_cod = "atom_onetied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_onetied_symbol_t.Atom_onetied_conjugated_symbol sym_a1c ->
      Atom_onetied_conjugated_symbol_v.name sym_a1c
  | Atom_onetied_symbol_t.Atom_onetied_double_symbol sym_a1d ->
      Atom_onetied_double_symbol_v.name sym_a1d
  | Atom_onetied_symbol_t.Atom_onetied_single_symbol sym_a1s ->
      Atom_onetied_single_symbol_v.name sym_a1s
  | Atom_onetied_symbol_t.Atom_onetied_triple_symbol sym_a1t ->
      Atom_onetied_triple_symbol_v.name sym_a1t
;;


(** {6 Upgrading} *)


let atom_onetied_symbol_of_atom_onetied_conjugated_symbol sym_a1c = 
  Atom_onetied_symbol_t.Atom_onetied_conjugated_symbol sym_a1c
;;

let atom_onetied_symbol_of_atom_onetied_double_symbol sym_a1d = 
  Atom_onetied_symbol_t.Atom_onetied_double_symbol sym_a1d
;;

let atom_onetied_symbol_of_atom_onetied_single_symbol sym_a1s = 
  Atom_onetied_symbol_t.Atom_onetied_single_symbol sym_a1s
;;

let atom_onetied_symbol_of_atom_onetied_triple_symbol sym_a1t = 
  Atom_onetied_symbol_t.Atom_onetied_triple_symbol sym_a1t
;;


(** {6 Abbreviating} *)


let o_c = atom_onetied_symbol_of_atom_onetied_conjugated_symbol Atom_onetied_conjugated_symbol_v.o_c;;

let o_d = atom_onetied_symbol_of_atom_onetied_double_symbol Atom_onetied_double_symbol_v.o_d;;

let h_s = atom_onetied_symbol_of_atom_onetied_single_symbol Atom_onetied_single_symbol_v.h_s;;

let f_s = atom_onetied_symbol_of_atom_onetied_single_symbol Atom_onetied_single_symbol_v.f_s;;

let s_s = atom_onetied_symbol_of_atom_onetied_single_symbol Atom_onetied_single_symbol_v.s_s;;

let c_t = atom_onetied_symbol_of_atom_onetied_triple_symbol Atom_onetied_triple_symbol_v.c_t;;

let n_t = atom_onetied_symbol_of_atom_onetied_triple_symbol Atom_onetied_triple_symbol_v.n_t;;

let o_t = atom_onetied_symbol_of_atom_onetied_triple_symbol Atom_onetied_triple_symbol_v.o_t;;

let s_t = atom_onetied_symbol_of_atom_onetied_triple_symbol Atom_onetied_triple_symbol_v.s_t;;


(** {6 Making} *)


let make s = function
  | "o_c" -> o_c
  | "o_d" -> o_d
  | "h_s" -> h_s
  | "f_s" -> f_s
  | "s_s" -> s_s
  | "c_t" -> c_t
  | "n_t" -> n_t
  | "o_t" -> o_t
  | "s_t" -> s_t
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let atom_onetied_conjugated_symbol_off_atom_onetied_symbol = function
  | Atom_onetied_symbol_t.Atom_onetied_conjugated_symbol sym_a1c -> sym_a1c
  | sym_at1 -> Error_messages_v.print_fatal_error
      nam_cod "atom_onetied_conjugated_symbol_off_atom_onetied_symbol"
      "Atom_onetied_conjugated_symbol"
      (name sym_at1) "check"
;;

let atom_onetied_double_symbol_off_atom_onetied_symbol = function
  | Atom_onetied_symbol_t.Atom_onetied_double_symbol sym_a1d -> sym_a1d
  | sym_at1 -> Error_messages_v.print_fatal_error
      nam_cod "atom_onetied_double_symbol_off_atom_onetied_symbol"
      "Atom_onetied_double_symbol"
      (name sym_at1) "check"
;;

let atom_onetied_single_symbol_off_atom_onetied_symbol = function
  | Atom_onetied_symbol_t.Atom_onetied_single_symbol sym_a1s -> sym_a1s
  | sym_at1 -> Error_messages_v.print_fatal_error
      nam_cod "atom_onetied_single_symbol_off_atom_onetied_symbol"
      "Atom_onetied_single_symbol"
      (name sym_at1) "check"
;;

let atom_onetied_triple_symbol_off_atom_onetied_symbol = function
  | Atom_onetied_symbol_t.Atom_onetied_triple_symbol sym_a1t -> sym_a1t
  | sym_at1 -> Error_messages_v.print_fatal_error
      nam_cod "atom_onetied_triple_symbol_off_atom_onetied_symbol"
      "Atom_onetied_triple_symbol"
      (name sym_at1) "check"
;;


(** {6 Querying} *)


let is_atom_onetied_conjugated_symbol_off_atom_onetied_symbol = function
  | Atom_onetied_symbol_t.Atom_onetied_conjugated_symbol _ -> true
  | _ -> false
;;

let is_atom_onetied_double_symbol_off_atom_onetied_symbol = function
  | Atom_onetied_symbol_t.Atom_onetied_double_symbol _ -> true
  | _ -> false
;;

let is_atom_onetied_single_symbol_off_atom_onetied_symbol = function
  | Atom_onetied_symbol_t.Atom_onetied_single_symbol _ -> true
  | _ -> false
;;

let is_atom_onetied_triple_symbol_off_atom_onetied_symbol = function
  | Atom_onetied_symbol_t.Atom_onetied_triple_symbol _ -> true
  | _ -> false
;;


(** created by ./generator atom_onetied implementation symbol at 15:1 13 Mar 2012. *)



