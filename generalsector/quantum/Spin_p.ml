(** {3 Spin.} *)

let mod_nam = "Spin_p";;

type fermionic_spin = Half of int
;;

type electronic_spin = 
  | Alpha 
  | Beta
;;

type bosonic_spin = int
;;

type atomic_spin = int * electronic_spin
;;

type molecular_spin = int * electronic_spin
;;

type total_spin = int * electronic_spin
;;

type spin =
  | Bosonic of bosonic_spin
  | Fermionic of fermionic_spin
  | Electronic of electronic_spin
  | Atomic of atomic_spin
  | Molecular of molecular_spin
  | Total of total_spin
;;

let fail_not_one i mdn her =
  Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
  expecting 1 or -1 and found %i@]@."  
  mdn her i;
  assert false;
;;

let fail_is_zero mdn her =
  Format.fprintf Format.err_formatter 
    "@.@[<hov>%s.%s: --- Fatal Error ---@.\
  expecting non zero integer@]@."  
  mdn her;
  assert false;
;;

let make_bosonic_spin i =
  i
;;

let make_fermionic_spin = function
  | 0 -> fail_is_zero mod_nam "make_fermionic_spin"
  | i -> Half i
;;

let make_electronic_spin = function
  | 1 -> Alpha
  | (-1) -> Beta
  | i -> fail_not_one i mod_nam "make_electronic_spin"
;;

let make_atomic_spin n i =
  let spe = make_electronic_spin i in
  (n, spe)
;;

let make_molecular_spin n i =
  let spe = make_electronic_spin i in
  (n, spe)
;;

let make_total_spin n i =
  let spe = make_electronic_spin i in
  (n, spe)
;;

let int_of_bosonic_spin i = i 
;;

let int_of_fermionic_spin = function Half i -> i 
let int_of_electronic_spin = function
  | Alpha -> 1
  | Beta -> -1
;;

let int_of_atomic_spin spn_atm = 
  let (n, esp) = spn_atm in
  n * (int_of_electronic_spin esp)
;;

let int_of_molecular_spin spn_mol = 
  let (n, esp) = spn_mol in
  n * (int_of_electronic_spin esp)
;;

let int_of_total_spin spn_tot = 
  let (n, esp) = spn_tot in
  n * (int_of_electronic_spin esp)
;;

let int_of_spin = function
  | Bosonic bsp -> 
     int_of_bosonic_spin bsp
  | Fermionic fsp -> 
     int_of_fermionic_spin fsp
  | Electronic esp ->
      int_of_electronic_spin esp
  | Atomic spn_atm ->		
      int_of_atomic_spin spn_atm 
  | Molecular spn_mol ->
      int_of_molecular_spin spn_mol
  | Total spn_tot -> 
      int_of_total_spin spn_tot
;;

let print_bosonic_spin ppf bsp = 
  let i = int_of_bosonic_spin bsp in
  Format.fprintf ppf "%i/2" i
;;

let print_fermionic_spin ppf fsp = 
  let i = int_of_fermionic_spin fsp in
  Format.fprintf ppf "%i/2" i
;;

let print_electronic_spin ppf esp = 
  let i = int_of_electronic_spin esp in
  Format.fprintf ppf "%i/2" i
;;

let print_atomic_spin ppf spn_atm =
  let i = int_of_atomic_spin spn_atm in
  Format.fprintf ppf "%i/2" i 
;;

let print_molecular_spin ppf spn_mol =
  let i = int_of_molecular_spin spn_mol in
  Format.fprintf ppf "%i/2" i 
;;

let print_total_spin ppf spn_tot =
  let i = int_of_total_spin spn_tot in
  Format.fprintf ppf "%i/2" i 
;;

let print ppf = function 
  | Bosonic bsp -> print_bosonic_spin ppf bsp
  | Fermionic fsp -> print_fermionic_spin ppf fsp	       
  | Electronic esp -> print_electronic_spin ppf esp
  | Atomic asp -> print_atomic_spin ppf asp
  | Molecular msp -> print_molecular_spin ppf msp
  | Total tsp -> print_total_spin ppf tsp
;;

let name_bosonic_spin bsp = 
  let i = int_of_bosonic_spin bsp in
  Format.sprintf "%i/2" i
;;

let name_fermionic_spin fsp = 
  let i = int_of_fermionic_spin fsp in
  Format.sprintf "%i/2" i
;;

let name_electronic_spin esp = 
  let i = int_of_electronic_spin esp in
  Format.sprintf "%i/2" i
;;

let name_atomic_spin asp =
  let i = int_of_atomic_spin asp in
  Format.sprintf "%i/2" i 
;;

let name_molecular_spin msp =
  let i = int_of_molecular_spin msp in
  Format.sprintf "%i/2" i 
;;

let name_total_spin tsp =
  let i = int_of_total_spin tsp in
  Format.sprintf "%i/2" i 
;;

let name = function 
  | Bosonic bsp -> name_bosonic_spin bsp
  | Fermionic fsp -> name_fermionic_spin fsp	       
  | Electronic esp -> name_electronic_spin esp
  | Atomic asp -> name_atomic_spin asp
  | Molecular msp -> name_molecular_spin msp
  | Total tsp -> name_total_spin tsp
;;






