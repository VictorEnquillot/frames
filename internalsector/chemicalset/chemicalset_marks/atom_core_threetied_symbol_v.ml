(** {3 The functionalities for a Symbol for a Atom_core_threetied.} *)

let nam_cod = "atom_core_threetied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_core_threetied_symbol_t.Atom_core_threetied_singlesinglesingle_symbol sym_a3s ->
      Atom_core_threetied_singlesinglesingle_symbol_v.name sym_a3s
  | Atom_core_threetied_symbol_t.Atom_core_threetied_singlesingledouble_symbol sym_a3s ->
      Atom_core_threetied_singlesingledouble_symbol_v.name sym_a3s
  | Atom_core_threetied_symbol_t.Atom_core_threetied_singleconjugatedconjugated_symbol sym_a3s ->
      Atom_core_threetied_singleconjugatedconjugated_symbol_v.name sym_a3s
  | Atom_core_threetied_symbol_t.Atom_core_threetied_conjugatedconjugatedconjugated_symbol sym_a3c ->
      Atom_core_threetied_conjugatedconjugatedconjugated_symbol_v.name sym_a3c
  | Atom_core_threetied_symbol_t.Atom_core_threetied_doubledoubledouble_symbol sym_a3d ->
      Atom_core_threetied_doubledoubledouble_symbol_v.name sym_a3d
;;


(** {6 Upgrading} *)


let atom_core_threetied_symbol_of_atom_core_threetied_singlesinglesingle_symbol sym_a3s = 
  Atom_core_threetied_symbol_t.Atom_core_threetied_singlesinglesingle_symbol sym_a3s
;;

let atom_core_threetied_symbol_of_atom_core_threetied_singlesingledouble_symbol sym_a3s = 
  Atom_core_threetied_symbol_t.Atom_core_threetied_singlesingledouble_symbol sym_a3s
;;

let atom_core_threetied_symbol_of_atom_core_threetied_singleconjugatedconjugated_symbol sym_a3s = 
  Atom_core_threetied_symbol_t.Atom_core_threetied_singleconjugatedconjugated_symbol sym_a3s
;;

let atom_core_threetied_symbol_of_atom_core_threetied_conjugatedconjugatedconjugated_symbol sym_a3c = 
  Atom_core_threetied_symbol_t.Atom_core_threetied_conjugatedconjugatedconjugated_symbol sym_a3c
;;

let atom_core_threetied_symbol_of_atom_core_threetied_doubledoubledouble_symbol sym_a3d = 
  Atom_core_threetied_symbol_t.Atom_core_threetied_doubledoubledouble_symbol sym_a3d
;;


(** {6 Abbreviating} *)


let n_sss = atom_core_threetied_symbol_of_atom_core_threetied_singlesinglesingle_symbol Atom_core_threetied_singlesinglesingle_symbol_v.n_sss;;

let cl_sss = atom_core_threetied_symbol_of_atom_core_threetied_singlesinglesingle_symbol Atom_core_threetied_singlesinglesingle_symbol_v.cl_sss;;

let c_dss = atom_core_threetied_symbol_of_atom_core_threetied_singlesingledouble_symbol Atom_core_threetied_singlesingledouble_symbol_v.c_dss;;

let n_sdd = atom_core_threetied_symbol_of_atom_core_threetied_singlesingledouble_symbol Atom_core_threetied_singlesingledouble_symbol_v.n_sdd;;

let s_sdd = atom_core_threetied_symbol_of_atom_core_threetied_singlesingledouble_symbol Atom_core_threetied_singlesingledouble_symbol_v.s_sdd;;

let c_ccs = atom_core_threetied_symbol_of_atom_core_threetied_singleconjugatedconjugated_symbol Atom_core_threetied_singleconjugatedconjugated_symbol_v.c_ccs;;

let n_ccs = atom_core_threetied_symbol_of_atom_core_threetied_singleconjugatedconjugated_symbol Atom_core_threetied_singleconjugatedconjugated_symbol_v.n_ccs;;

let c_ccc = atom_core_threetied_symbol_of_atom_core_threetied_conjugatedconjugatedconjugated_symbol Atom_core_threetied_conjugatedconjugatedconjugated_symbol_v.c_ccc;;

let n_ccc = atom_core_threetied_symbol_of_atom_core_threetied_conjugatedconjugatedconjugated_symbol Atom_core_threetied_conjugatedconjugatedconjugated_symbol_v.n_ccc;;

let s_ddd = atom_core_threetied_symbol_of_atom_core_threetied_doubledoubledouble_symbol Atom_core_threetied_doubledoubledouble_symbol_v.s_ddd;;


(** {6 Making} *)


let make s = function
  | "n_sss" -> n_sss
  | "cl_sss" -> cl_sss
  | "c_dss" -> c_dss
  | "n_sdd" -> n_sdd
  | "s_sdd" -> s_sdd
  | "c_ccs" -> c_ccs
  | "n_ccs" -> n_ccs
  | "c_ccc" -> c_ccc
  | "n_ccc" -> n_ccc
  | "s_ddd" -> s_ddd
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let atom_core_threetied_singlesinglesingle_symbol_off_atom_core_threetied_symbol = function
  | Atom_core_threetied_symbol_t.Atom_core_threetied_singlesinglesingle_symbol sym_a3s -> sym_a3s
  | sym_at3 -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_threetied_singlesinglesingle_symbol_off_atom_core_threetied_symbol"
      "Atom_core_threetied_singlesinglesingle_symbol"
      (name sym_at3) "check"
;;

let atom_core_threetied_singlesingledouble_symbol_off_atom_core_threetied_symbol = function
  | Atom_core_threetied_symbol_t.Atom_core_threetied_singlesingledouble_symbol sym_a3s -> sym_a3s
  | sym_at3 -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_threetied_singlesingledouble_symbol_off_atom_core_threetied_symbol"
      "Atom_core_threetied_singlesingledouble_symbol"
      (name sym_at3) "check"
;;

let atom_core_threetied_singleconjugatedconjugated_symbol_off_atom_core_threetied_symbol = function
  | Atom_core_threetied_symbol_t.Atom_core_threetied_singleconjugatedconjugated_symbol sym_a3s -> sym_a3s
  | sym_at3 -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_threetied_singleconjugatedconjugated_symbol_off_atom_core_threetied_symbol"
      "Atom_core_threetied_singleconjugatedconjugated_symbol"
      (name sym_at3) "check"
;;

let atom_core_threetied_conjugatedconjugatedconjugated_symbol_off_atom_core_threetied_symbol = function
  | Atom_core_threetied_symbol_t.Atom_core_threetied_conjugatedconjugatedconjugated_symbol sym_a3c -> sym_a3c
  | sym_at3 -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_threetied_conjugatedconjugatedconjugated_symbol_off_atom_core_threetied_symbol"
      "Atom_core_threetied_conjugatedconjugatedconjugated_symbol"
      (name sym_at3) "check"
;;

let atom_core_threetied_doubledoubledouble_symbol_off_atom_core_threetied_symbol = function
  | Atom_core_threetied_symbol_t.Atom_core_threetied_doubledoubledouble_symbol sym_a3d -> sym_a3d
  | sym_at3 -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_threetied_doubledoubledouble_symbol_off_atom_core_threetied_symbol"
      "Atom_core_threetied_doubledoubledouble_symbol"
      (name sym_at3) "check"
;;


(** {6 Querying} *)


let is_atom_core_threetied_singlesinglesingle_symbol_off_atom_core_threetied_symbol = function
  | Atom_core_threetied_symbol_t.Atom_core_threetied_singlesinglesingle_symbol _ -> true
  | _ -> false
;;

let is_atom_core_threetied_singlesingledouble_symbol_off_atom_core_threetied_symbol = function
  | Atom_core_threetied_symbol_t.Atom_core_threetied_singlesingledouble_symbol _ -> true
  | _ -> false
;;

let is_atom_core_threetied_singleconjugatedconjugated_symbol_off_atom_core_threetied_symbol = function
  | Atom_core_threetied_symbol_t.Atom_core_threetied_singleconjugatedconjugated_symbol _ -> true
  | _ -> false
;;

let is_atom_core_threetied_conjugatedconjugatedconjugated_symbol_off_atom_core_threetied_symbol = function
  | Atom_core_threetied_symbol_t.Atom_core_threetied_conjugatedconjugatedconjugated_symbol _ -> true
  | _ -> false
;;

let is_atom_core_threetied_doubledoubledouble_symbol_off_atom_core_threetied_symbol = function
  | Atom_core_threetied_symbol_t.Atom_core_threetied_doubledoubledouble_symbol _ -> true
  | _ -> false
;;


(** created by ./generator atom_core_threetied implementation symbol at 21:44 8 Mar 2012. *)



