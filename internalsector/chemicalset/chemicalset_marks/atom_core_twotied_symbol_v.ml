(** {3 The functionalities for a Symbol for a Atom_core_twotied.} *)

let nam_cod = "atom_core_twotied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_twotied_symbol_t.Atom_core_twotied_singlesingle_symbol sym_a2s ->
      Atom_core_twotied_singlesingle_symbol_v.name sym_a2s
  | Atom_core_twotied_symbol_t.Atom_core_twotied_singleconjugated_symbol sym_a2s ->
      Atom_core_twotied_singleconjugated_symbol_v.name sym_a2s
  | Atom_core_twotied_symbol_t.Atom_core_twotied_singledouble_symbol sym_a2s ->
      Atom_core_twotied_singledouble_symbol_v.name sym_a2s
  | Atom_core_twotied_symbol_t.Atom_core_twotied_singletriple_symbol sym_a2s ->
      Atom_core_twotied_singletriple_symbol_v.name sym_a2s
  | Atom_core_twotied_symbol_t.Atom_core_twotied_conjugatedconjugated_symbol sym_a2c ->
      Atom_core_twotied_conjugatedconjugated_symbol_v.name sym_a2c
  | Atom_core_twotied_symbol_t.Atom_core_twotied_conjugated_double -> "atom_core_twotied_conjugated_double"
  | Atom_core_twotied_symbol_t.Atom_core_twotied_doubledouble_symbol sym_a2d ->
      Atom_core_twotied_doubledouble_symbol_v.name sym_a2d
;;


(** {6 Upgrading} *)


let atom_core_twotied_symbol_of_atom_core_twotied_singlesingle_symbol sym_a2s = 
  Atom_core_twotied_symbol_t.Atom_core_twotied_singlesingle_symbol sym_a2s
;;

let atom_core_twotied_symbol_of_atom_core_twotied_singleconjugated_symbol sym_a2s = 
  Atom_core_twotied_symbol_t.Atom_core_twotied_singleconjugated_symbol sym_a2s
;;

let atom_core_twotied_symbol_of_atom_core_twotied_singledouble_symbol sym_a2s = 
  Atom_core_twotied_symbol_t.Atom_core_twotied_singledouble_symbol sym_a2s
;;

let atom_core_twotied_symbol_of_atom_core_twotied_singletriple_symbol sym_a2s = 
  Atom_core_twotied_symbol_t.Atom_core_twotied_singletriple_symbol sym_a2s
;;

let atom_core_twotied_symbol_of_atom_core_twotied_conjugatedconjugated_symbol sym_a2c = 
  Atom_core_twotied_symbol_t.Atom_core_twotied_conjugatedconjugated_symbol sym_a2c
;;

let atom_core_twotied_symbol_of_atom_core_twotied_doubledouble_symbol sym_a2d = 
  Atom_core_twotied_symbol_t.Atom_core_twotied_doubledouble_symbol sym_a2d
;;


(** {6 Abbreviating} *)


let cl_ss = atom_core_twotied_symbol_of_atom_core_twotied_singlesingle_symbol Atom_core_twotied_singlesingle_symbol_v.cl_ss;;

let f_ss = atom_core_twotied_symbol_of_atom_core_twotied_singlesingle_symbol Atom_core_twotied_singlesingle_symbol_v.f_ss;;

let h_ss = atom_core_twotied_symbol_of_atom_core_twotied_singlesingle_symbol Atom_core_twotied_singlesingle_symbol_v.h_ss;;

let n_sc = atom_core_twotied_symbol_of_atom_core_twotied_singleconjugated_symbol Atom_core_twotied_singleconjugated_symbol_v.n_sc;;

let o_sc = atom_core_twotied_symbol_of_atom_core_twotied_singleconjugated_symbol Atom_core_twotied_singleconjugated_symbol_v.o_sc;;

let n_sd = atom_core_twotied_symbol_of_atom_core_twotied_singledouble_symbol Atom_core_twotied_singledouble_symbol_v.n_sd;;

let c_st = atom_core_twotied_symbol_of_atom_core_twotied_singletriple_symbol Atom_core_twotied_singletriple_symbol_v.c_st;;

let n_st = atom_core_twotied_symbol_of_atom_core_twotied_singletriple_symbol Atom_core_twotied_singletriple_symbol_v.n_st;;

let n_cc = atom_core_twotied_symbol_of_atom_core_twotied_conjugatedconjugated_symbol Atom_core_twotied_conjugatedconjugated_symbol_v.n_cc;;

let o_cc = atom_core_twotied_symbol_of_atom_core_twotied_conjugatedconjugated_symbol Atom_core_twotied_conjugatedconjugated_symbol_v.o_cc;;

let atom_core_twotied_conjugated_double = Atom_core_twotied_symbol_t.Atom_core_twotied_conjugated_double;;

let c_dd = atom_core_twotied_symbol_of_atom_core_twotied_doubledouble_symbol Atom_core_twotied_doubledouble_symbol_v.c_dd;;

let s_dd = atom_core_twotied_symbol_of_atom_core_twotied_doubledouble_symbol Atom_core_twotied_doubledouble_symbol_v.s_dd;;


(** {6 Making} *)


let make s = function
  | "cl_ss" -> cl_ss
  | "f_ss" -> f_ss
  | "h_ss" -> h_ss
  | "n_sc" -> n_sc
  | "o_sc" -> o_sc
  | "n_sd" -> n_sd
  | "c_st" -> c_st
  | "n_st" -> n_st
  | "n_cc" -> n_cc
  | "o_cc" -> o_cc
  | "atom_core_twotied_conjugated_double" -> atom_core_twotied_conjugated_double
  | "c_dd" -> c_dd
  | "s_dd" -> s_dd
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let atom_core_twotied_singlesingle_symbol_off_atom_core_twotied_symbol = function
  | Atom_core_twotied_symbol_t.Atom_core_twotied_singlesingle_symbol sym_a2s -> sym_a2s
  | sym_at2 -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_twotied_singlesingle_symbol_off_atom_core_twotied_symbol"
      "Atom_core_twotied_singlesingle_symbol"
      (name sym_at2) "check"
;;

let atom_core_twotied_singleconjugated_symbol_off_atom_core_twotied_symbol = function
  | Atom_core_twotied_symbol_t.Atom_core_twotied_singleconjugated_symbol sym_a2s -> sym_a2s
  | sym_at2 -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_twotied_singleconjugated_symbol_off_atom_core_twotied_symbol"
      "Atom_core_twotied_singleconjugated_symbol"
      (name sym_at2) "check"
;;

let atom_core_twotied_singledouble_symbol_off_atom_core_twotied_symbol = function
  | Atom_core_twotied_symbol_t.Atom_core_twotied_singledouble_symbol sym_a2s -> sym_a2s
  | sym_at2 -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_twotied_singledouble_symbol_off_atom_core_twotied_symbol"
      "Atom_core_twotied_singledouble_symbol"
      (name sym_at2) "check"
;;

let atom_core_twotied_singletriple_symbol_off_atom_core_twotied_symbol = function
  | Atom_core_twotied_symbol_t.Atom_core_twotied_singletriple_symbol sym_a2s -> sym_a2s
  | sym_at2 -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_twotied_singletriple_symbol_off_atom_core_twotied_symbol"
      "Atom_core_twotied_singletriple_symbol"
      (name sym_at2) "check"
;;

let atom_core_twotied_conjugatedconjugated_symbol_off_atom_core_twotied_symbol = function
  | Atom_core_twotied_symbol_t.Atom_core_twotied_conjugatedconjugated_symbol sym_a2c -> sym_a2c
  | sym_at2 -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_twotied_conjugatedconjugated_symbol_off_atom_core_twotied_symbol"
      "Atom_core_twotied_conjugatedconjugated_symbol"
      (name sym_at2) "check"
;;

let atom_core_twotied_doubledouble_symbol_off_atom_core_twotied_symbol = function
  | Atom_core_twotied_symbol_t.Atom_core_twotied_doubledouble_symbol sym_a2d -> sym_a2d
  | sym_at2 -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_twotied_doubledouble_symbol_off_atom_core_twotied_symbol"
      "Atom_core_twotied_doubledouble_symbol"
      (name sym_at2) "check"
;;


(** {6 Querying} *)


let is_atom_core_twotied_singlesingle_symbol_off_atom_core_twotied_symbol = function
  | Atom_core_twotied_symbol_t.Atom_core_twotied_singlesingle_symbol _ -> true
  | _ -> false
;;

let is_atom_core_twotied_singleconjugated_symbol_off_atom_core_twotied_symbol = function
  | Atom_core_twotied_symbol_t.Atom_core_twotied_singleconjugated_symbol _ -> true
  | _ -> false
;;

let is_atom_core_twotied_singledouble_symbol_off_atom_core_twotied_symbol = function
  | Atom_core_twotied_symbol_t.Atom_core_twotied_singledouble_symbol _ -> true
  | _ -> false
;;

let is_atom_core_twotied_singletriple_symbol_off_atom_core_twotied_symbol = function
  | Atom_core_twotied_symbol_t.Atom_core_twotied_singletriple_symbol _ -> true
  | _ -> false
;;

let is_atom_core_twotied_conjugatedconjugated_symbol_off_atom_core_twotied_symbol = function
  | Atom_core_twotied_symbol_t.Atom_core_twotied_conjugatedconjugated_symbol _ -> true
  | _ -> false
;;

let is_atom_core_twotied_doubledouble_symbol_off_atom_core_twotied_symbol = function
  | Atom_core_twotied_symbol_t.Atom_core_twotied_doubledouble_symbol _ -> true
  | _ -> false
;;


(** created by ./generator atom_core_twotied implementation symbol at 21:44 8 Mar 2012. *)



