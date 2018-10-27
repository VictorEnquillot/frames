(** {3 The functionalities for a Symbol for a Atom.} *)

let nam_cod = "atom_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_symbol_t.Atom_core_symbol sym_atc ->
      Atom_core_symbol_v.name sym_atc
  | Atom_symbol_t.Atom_onetied_symbol sym_at1 ->
      Atom_onetied_symbol_v.name sym_at1
  | Atom_symbol_t.Atom_zerotied_symbol sym_at0 ->
      Atom_zerotied_symbol_v.name sym_at0
;;


(** {6 Upgrading} *)


let atom_symbol_of_atom_core_symbol sym_atc = 
  Atom_symbol_t.Atom_core_symbol sym_atc
;;

let atom_symbol_of_atom_core_fourtied_symbol sym_ac4 = 
  let sym_atc = Atom_core_symbol_v.atom_core_symbol_of_atom_core_fourtied_symbol sym_ac4 in
    atom_symbol_of_atom_core_symbol sym_atc
;;

let atom_symbol_of_atom_core_fivetied_symbol sym_ac5 = 
  let sym_atc = Atom_core_symbol_v.atom_core_symbol_of_atom_core_fivetied_symbol sym_ac5 in
    atom_symbol_of_atom_core_symbol sym_atc
;;

let atom_symbol_of_atom_core_sixtied_symbol sym_ac6 = 
  let sym_atc = Atom_core_symbol_v.atom_core_symbol_of_atom_core_sixtied_symbol sym_ac6 in
    atom_symbol_of_atom_core_symbol sym_atc
;;

let atom_symbol_of_atom_onetied_symbol sym_at1 = 
  Atom_symbol_t.Atom_onetied_symbol sym_at1
;;

let atom_symbol_of_atom_onetied_conjugated_symbol sym_a1c = 
  let sym_at1 = Atom_onetied_symbol_v.atom_onetied_symbol_of_atom_onetied_conjugated_symbol sym_a1c in
    atom_symbol_of_atom_onetied_symbol sym_at1
;;

let atom_symbol_of_atom_onetied_double_symbol sym_a1d = 
  let sym_at1 = Atom_onetied_symbol_v.atom_onetied_symbol_of_atom_onetied_double_symbol sym_a1d in
    atom_symbol_of_atom_onetied_symbol sym_at1
;;

let atom_symbol_of_atom_onetied_single_symbol sym_a1s = 
  let sym_at1 = Atom_onetied_symbol_v.atom_onetied_symbol_of_atom_onetied_single_symbol sym_a1s in
    atom_symbol_of_atom_onetied_symbol sym_at1
;;

let atom_symbol_of_atom_onetied_triple_symbol sym_a1t = 
  let sym_at1 = Atom_onetied_symbol_v.atom_onetied_symbol_of_atom_onetied_triple_symbol sym_a1t in
    atom_symbol_of_atom_onetied_symbol sym_at1
;;

let atom_symbol_of_atom_zerotied_symbol sym_at0 = 
  Atom_symbol_t.Atom_zerotied_symbol sym_at0
;;

let atom_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  let sym_at0 = Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_anion_symbol sym_a0a in
    atom_symbol_of_atom_zerotied_symbol sym_at0
;;

let atom_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_at0 = Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    atom_symbol_of_atom_zerotied_symbol sym_at0
;;

let atom_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_at0 = Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    atom_symbol_of_atom_zerotied_symbol sym_at0
;;

let atom_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  let sym_at0 = Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_cation_symbol sym_a0c in
    atom_symbol_of_atom_zerotied_symbol sym_at0
;;

let atom_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_at0 = Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    atom_symbol_of_atom_zerotied_symbol sym_at0
;;

let atom_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_at0 = Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    atom_symbol_of_atom_zerotied_symbol sym_at0
;;

let atom_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_at0 = Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    atom_symbol_of_atom_zerotied_symbol sym_at0
;;

let atom_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  let sym_at0 = Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_raregas_symbol sym_a0r in
    atom_symbol_of_atom_zerotied_symbol sym_at0
;;

let atom_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h = 
  let sym_at0 = Atom_zerotied_symbol_v.atom_zerotied_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h in
    atom_symbol_of_atom_zerotied_symbol sym_at0
;;


(** {6 Abbreviating} *)


let atom_twotied = atom_symbol_of_atom_core_symbol Atom_core_symbol_v.atom_twotied;;

let atom_threetied = atom_symbol_of_atom_core_symbol Atom_core_symbol_v.atom_threetied;;

let c_ssss = atom_symbol_of_atom_core_symbol Atom_core_symbol_v.c_ssss;;

let n_ssss = atom_symbol_of_atom_core_symbol Atom_core_symbol_v.n_ssss;;

let s_ssss = atom_symbol_of_atom_core_symbol Atom_core_symbol_v.s_ssss;;

let xe_ssss = atom_symbol_of_atom_core_symbol Atom_core_symbol_v.xe_ssss;;

let cl_sssss = atom_symbol_of_atom_core_symbol Atom_core_symbol_v.cl_sssss;;

let s_6s = atom_symbol_of_atom_core_symbol Atom_core_symbol_v.s_6s;;

let o_c = atom_symbol_of_atom_onetied_symbol Atom_onetied_symbol_v.o_c;;

let o_d = atom_symbol_of_atom_onetied_symbol Atom_onetied_symbol_v.o_d;;

let h_s = atom_symbol_of_atom_onetied_symbol Atom_onetied_symbol_v.h_s;;

let f_s = atom_symbol_of_atom_onetied_symbol Atom_onetied_symbol_v.f_s;;

let s_s = atom_symbol_of_atom_onetied_symbol Atom_onetied_symbol_v.s_s;;

let c_t = atom_symbol_of_atom_onetied_symbol Atom_onetied_symbol_v.c_t;;

let n_t = atom_symbol_of_atom_onetied_symbol Atom_onetied_symbol_v.n_t;;

let o_t = atom_symbol_of_atom_onetied_symbol Atom_onetied_symbol_v.o_t;;

let s_t = atom_symbol_of_atom_onetied_symbol Atom_onetied_symbol_v.s_t;;

let fm1 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.fm1;;

let hm1 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.hm1;;

let clm1 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.clm1;;

let brm1 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.brm1;;

let im1 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.im1;;

let om2 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.om2;;

let sm2 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.sm2;;

let hp1 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.hp1;;

let kp1 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.kp1;;

let lip1 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.lip1;;

let nap1 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.nap1;;

let nip1 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.nip1;;

let cup1 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.cup1;;

let mgp2 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.mgp2;;

let cap2 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.cap2;;

let fep2 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.fep2;;

let znp2 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.znp2;;

let cup2 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.cup2;;

let fep3 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.fep3;;

let nip3 = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.nip3;;

let ar = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.ar;;

let he = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.he;;

let kr = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.kr;;

let ne = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.ne;;

let xe = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.xe;;

let hb_s = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.hb_s;;

let hb_c = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.hb_c;;

let hb_d = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.hb_d;;

let hb_t = atom_symbol_of_atom_zerotied_symbol Atom_zerotied_symbol_v.hb_t;;


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
  | "o_c" -> o_c
  | "o_d" -> o_d
  | "h_s" -> h_s
  | "f_s" -> f_s
  | "s_s" -> s_s
  | "c_t" -> c_t
  | "n_t" -> n_t
  | "o_t" -> o_t
  | "s_t" -> s_t
  | "fm1" -> fm1
  | "hm1" -> hm1
  | "clm1" -> clm1
  | "brm1" -> brm1
  | "im1" -> im1
  | "om2" -> om2
  | "sm2" -> sm2
  | "hp1" -> hp1
  | "kp1" -> kp1
  | "lip1" -> lip1
  | "nap1" -> nap1
  | "nip1" -> nip1
  | "cup1" -> cup1
  | "mgp2" -> mgp2
  | "cap2" -> cap2
  | "fep2" -> fep2
  | "znp2" -> znp2
  | "cup2" -> cup2
  | "fep3" -> fep3
  | "nip3" -> nip3
  | "ar" -> ar
  | "he" -> he
  | "kr" -> kr
  | "ne" -> ne
  | "xe" -> xe
  | "hb_s" -> hb_s
  | "hb_c" -> hb_c
  | "hb_d" -> hb_d
  | "hb_t" -> hb_t
  | str -> Error_messages_v.print_fatal_error
      nam_cod "make"
      "a valid leaf name"
      str "check"
;;


(** {6 Extracting} *)


let atom_core_symbol_off_atom_symbol = function
  | Atom_symbol_t.Atom_core_symbol sym_atc -> sym_atc
  | sym_atm -> Error_messages_v.print_fatal_error
      nam_cod "atom_core_symbol_off_atom_symbol"
      "Atom_core_symbol"
      (name sym_atm) "check"
;;

let atom_core_fourtied_symbol_off_atom_symbol sym_atm = 
  let sym_atc = atom_core_symbol_off_atom_symbol sym_atm in 
    Atom_core_symbol_v.atom_core_fourtied_symbol_off_atom_core_symbol sym_atc
;;

let atom_core_fivetied_symbol_off_atom_symbol sym_atm = 
  let sym_atc = atom_core_symbol_off_atom_symbol sym_atm in 
    Atom_core_symbol_v.atom_core_fivetied_symbol_off_atom_core_symbol sym_atc
;;

let atom_core_sixtied_symbol_off_atom_symbol sym_atm = 
  let sym_atc = atom_core_symbol_off_atom_symbol sym_atm in 
    Atom_core_symbol_v.atom_core_sixtied_symbol_off_atom_core_symbol sym_atc
;;

let atom_onetied_symbol_off_atom_symbol = function
  | Atom_symbol_t.Atom_onetied_symbol sym_at1 -> sym_at1
  | sym_atm -> Error_messages_v.print_fatal_error
      nam_cod "atom_onetied_symbol_off_atom_symbol"
      "Atom_onetied_symbol"
      (name sym_atm) "check"
;;

let atom_onetied_conjugated_symbol_off_atom_symbol sym_atm = 
  let sym_at1 = atom_onetied_symbol_off_atom_symbol sym_atm in 
    Atom_onetied_symbol_v.atom_onetied_conjugated_symbol_off_atom_onetied_symbol sym_at1
;;

let atom_onetied_double_symbol_off_atom_symbol sym_atm = 
  let sym_at1 = atom_onetied_symbol_off_atom_symbol sym_atm in 
    Atom_onetied_symbol_v.atom_onetied_double_symbol_off_atom_onetied_symbol sym_at1
;;

let atom_onetied_single_symbol_off_atom_symbol sym_atm = 
  let sym_at1 = atom_onetied_symbol_off_atom_symbol sym_atm in 
    Atom_onetied_symbol_v.atom_onetied_single_symbol_off_atom_onetied_symbol sym_at1
;;

let atom_onetied_triple_symbol_off_atom_symbol sym_atm = 
  let sym_at1 = atom_onetied_symbol_off_atom_symbol sym_atm in 
    Atom_onetied_symbol_v.atom_onetied_triple_symbol_off_atom_onetied_symbol sym_at1
;;

let atom_zerotied_symbol_off_atom_symbol = function
  | Atom_symbol_t.Atom_zerotied_symbol sym_at0 -> sym_at0
  | sym_atm -> Error_messages_v.print_fatal_error
      nam_cod "atom_zerotied_symbol_off_atom_symbol"
      "Atom_zerotied_symbol"
      (name sym_atm) "check"
;;

let atom_zerotied_anion_symbol_off_atom_symbol sym_atm = 
  let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
    Atom_zerotied_symbol_v.atom_zerotied_anion_symbol_off_atom_zerotied_symbol sym_at0
;;

let atom_zerotied_anion_minusone_symbol_off_atom_symbol sym_atm = 
  let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
    Atom_zerotied_symbol_v.atom_zerotied_anion_minusone_symbol_off_atom_zerotied_symbol sym_at0
;;

let atom_zerotied_anion_minustwo_symbol_off_atom_symbol sym_atm = 
  let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
    Atom_zerotied_symbol_v.atom_zerotied_anion_minustwo_symbol_off_atom_zerotied_symbol sym_at0
;;

let atom_zerotied_cation_symbol_off_atom_symbol sym_atm = 
  let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
    Atom_zerotied_symbol_v.atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0
;;

let atom_zerotied_cation_plusone_symbol_off_atom_symbol sym_atm = 
  let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
    Atom_zerotied_symbol_v.atom_zerotied_cation_plusone_symbol_off_atom_zerotied_symbol sym_at0
;;

let atom_zerotied_cation_plustwo_symbol_off_atom_symbol sym_atm = 
  let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
    Atom_zerotied_symbol_v.atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_symbol sym_at0
;;

let atom_zerotied_cation_plusthree_symbol_off_atom_symbol sym_atm = 
  let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
    Atom_zerotied_symbol_v.atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_symbol sym_at0
;;

let atom_zerotied_raregas_symbol_off_atom_symbol sym_atm = 
  let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
    Atom_zerotied_symbol_v.atom_zerotied_raregas_symbol_off_atom_zerotied_symbol sym_at0
;;

let atom_zerotied_halfbridge_symbol_off_atom_symbol sym_atm = 
  let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
    Atom_zerotied_symbol_v.atom_zerotied_halfbridge_symbol_off_atom_zerotied_symbol sym_at0
;;


(** {6 Querying} *)


let is_atom_core_symbol_off_atom_symbol = function
  | Atom_symbol_t.Atom_core_symbol _ -> true
  | _ -> false
;;

let is_atom_core_fourtied_symbol_off_atom_symbol sym_atm =
  if not (is_atom_core_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_atc = atom_core_symbol_off_atom_symbol sym_atm in 
     Atom_core_symbol_v.is_atom_core_fourtied_symbol_off_atom_core_symbol sym_atc
    end
;;

let is_atom_core_fivetied_symbol_off_atom_symbol sym_atm =
  if not (is_atom_core_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_atc = atom_core_symbol_off_atom_symbol sym_atm in 
     Atom_core_symbol_v.is_atom_core_fivetied_symbol_off_atom_core_symbol sym_atc
    end
;;

let is_atom_core_sixtied_symbol_off_atom_symbol sym_atm =
  if not (is_atom_core_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_atc = atom_core_symbol_off_atom_symbol sym_atm in 
     Atom_core_symbol_v.is_atom_core_sixtied_symbol_off_atom_core_symbol sym_atc
    end
;;

let is_atom_onetied_symbol_off_atom_symbol = function
  | Atom_symbol_t.Atom_onetied_symbol _ -> true
  | _ -> false
;;

let is_atom_onetied_conjugated_symbol_off_atom_symbol sym_atm =
  if not (is_atom_onetied_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_at1 = atom_onetied_symbol_off_atom_symbol sym_atm in 
     Atom_onetied_symbol_v.is_atom_onetied_conjugated_symbol_off_atom_onetied_symbol sym_at1
    end
;;

let is_atom_onetied_double_symbol_off_atom_symbol sym_atm =
  if not (is_atom_onetied_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_at1 = atom_onetied_symbol_off_atom_symbol sym_atm in 
     Atom_onetied_symbol_v.is_atom_onetied_double_symbol_off_atom_onetied_symbol sym_at1
    end
;;

let is_atom_onetied_single_symbol_off_atom_symbol sym_atm =
  if not (is_atom_onetied_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_at1 = atom_onetied_symbol_off_atom_symbol sym_atm in 
     Atom_onetied_symbol_v.is_atom_onetied_single_symbol_off_atom_onetied_symbol sym_at1
    end
;;

let is_atom_onetied_triple_symbol_off_atom_symbol sym_atm =
  if not (is_atom_onetied_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_at1 = atom_onetied_symbol_off_atom_symbol sym_atm in 
     Atom_onetied_symbol_v.is_atom_onetied_triple_symbol_off_atom_onetied_symbol sym_at1
    end
;;

let is_atom_zerotied_symbol_off_atom_symbol = function
  | Atom_symbol_t.Atom_zerotied_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_anion_symbol_off_atom_symbol sym_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
     Atom_zerotied_symbol_v.is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol sym_at0
    end
;;

let is_atom_zerotied_anion_minusone_symbol_off_atom_symbol sym_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
     Atom_zerotied_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_atom_zerotied_symbol sym_at0
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_atom_symbol sym_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
     Atom_zerotied_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_atom_zerotied_symbol sym_at0
    end
;;

let is_atom_zerotied_cation_symbol_off_atom_symbol sym_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
     Atom_zerotied_symbol_v.is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0
    end
;;

let is_atom_zerotied_cation_plusone_symbol_off_atom_symbol sym_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
     Atom_zerotied_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_atom_zerotied_symbol sym_at0
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_atom_symbol sym_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
     Atom_zerotied_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_symbol sym_at0
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_atom_symbol sym_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
     Atom_zerotied_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_symbol sym_at0
    end
;;

let is_atom_zerotied_raregas_symbol_off_atom_symbol sym_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
     Atom_zerotied_symbol_v.is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol sym_at0
    end
;;

let is_atom_zerotied_halfbridge_symbol_off_atom_symbol sym_atm =
  if not (is_atom_zerotied_symbol_off_atom_symbol sym_atm)
  then false
  else
    begin
     let sym_at0 = atom_zerotied_symbol_off_atom_symbol sym_atm in 
     Atom_zerotied_symbol_v.is_atom_zerotied_halfbridge_symbol_off_atom_zerotied_symbol sym_at0
    end
;;


(** created by ./generator atom implementation symbol at 15:1 13 Mar 2012. *)



