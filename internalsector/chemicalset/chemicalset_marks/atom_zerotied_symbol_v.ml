(** {3 The functionalities for a Symbol for a Atom_zerotied.} *)

let nam_cod = "atom_zerotied_symbol_v.ml";;


(** {6 Aliasing} *)



(** {6 Naming} *)


let name = function
  | Atom_zerotied_symbol_t.Atom_zerotied_anion_symbol sym_a0a ->
      Atom_zerotied_anion_symbol_v.name sym_a0a
  | Atom_zerotied_symbol_t.Atom_zerotied_cation_symbol sym_a0c ->
      Atom_zerotied_cation_symbol_v.name sym_a0c
  | Atom_zerotied_symbol_t.Atom_zerotied_raregas_symbol sym_a0r ->
      Atom_zerotied_raregas_symbol_v.name sym_a0r
  | Atom_zerotied_symbol_t.Atom_zerotied_halfbridge_symbol sym_a0h ->
      Atom_zerotied_halfbridge_symbol_v.name sym_a0h
;;


(** {6 Upgrading} *)


let atom_zerotied_symbol_of_atom_zerotied_anion_symbol sym_a0a = 
  Atom_zerotied_symbol_t.Atom_zerotied_anion_symbol sym_a0a
;;

let atom_zerotied_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 = 
  let sym_a0a = Atom_zerotied_anion_symbol_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minusone_symbol sym_0a1 in
    atom_zerotied_symbol_of_atom_zerotied_anion_symbol sym_a0a
;;

let atom_zerotied_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 = 
  let sym_a0a = Atom_zerotied_anion_symbol_v.atom_zerotied_anion_symbol_of_atom_zerotied_anion_minustwo_symbol sym_0a2 in
    atom_zerotied_symbol_of_atom_zerotied_anion_symbol sym_a0a
;;

let atom_zerotied_symbol_of_atom_zerotied_cation_symbol sym_a0c = 
  Atom_zerotied_symbol_t.Atom_zerotied_cation_symbol sym_a0c
;;

let atom_zerotied_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 = 
  let sym_a0c = Atom_zerotied_cation_symbol_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusone_symbol sym_0c1 in
    atom_zerotied_symbol_of_atom_zerotied_cation_symbol sym_a0c
;;

let atom_zerotied_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 = 
  let sym_a0c = Atom_zerotied_cation_symbol_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plustwo_symbol sym_0c2 in
    atom_zerotied_symbol_of_atom_zerotied_cation_symbol sym_a0c
;;

let atom_zerotied_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 = 
  let sym_a0c = Atom_zerotied_cation_symbol_v.atom_zerotied_cation_symbol_of_atom_zerotied_cation_plusthree_symbol sym_0c3 in
    atom_zerotied_symbol_of_atom_zerotied_cation_symbol sym_a0c
;;

let atom_zerotied_symbol_of_atom_zerotied_raregas_symbol sym_a0r = 
  Atom_zerotied_symbol_t.Atom_zerotied_raregas_symbol sym_a0r
;;

let atom_zerotied_symbol_of_atom_zerotied_halfbridge_symbol sym_a0h = 
  Atom_zerotied_symbol_t.Atom_zerotied_halfbridge_symbol sym_a0h
;;


(** {6 Abbreviating} *)


let fm1 = atom_zerotied_symbol_of_atom_zerotied_anion_symbol Atom_zerotied_anion_symbol_v.fm1;;

let hm1 = atom_zerotied_symbol_of_atom_zerotied_anion_symbol Atom_zerotied_anion_symbol_v.hm1;;

let clm1 = atom_zerotied_symbol_of_atom_zerotied_anion_symbol Atom_zerotied_anion_symbol_v.clm1;;

let brm1 = atom_zerotied_symbol_of_atom_zerotied_anion_symbol Atom_zerotied_anion_symbol_v.brm1;;

let im1 = atom_zerotied_symbol_of_atom_zerotied_anion_symbol Atom_zerotied_anion_symbol_v.im1;;

let om2 = atom_zerotied_symbol_of_atom_zerotied_anion_symbol Atom_zerotied_anion_symbol_v.om2;;

let sm2 = atom_zerotied_symbol_of_atom_zerotied_anion_symbol Atom_zerotied_anion_symbol_v.sm2;;

let hp1 = atom_zerotied_symbol_of_atom_zerotied_cation_symbol Atom_zerotied_cation_symbol_v.hp1;;

let kp1 = atom_zerotied_symbol_of_atom_zerotied_cation_symbol Atom_zerotied_cation_symbol_v.kp1;;

let lip1 = atom_zerotied_symbol_of_atom_zerotied_cation_symbol Atom_zerotied_cation_symbol_v.lip1;;

let nap1 = atom_zerotied_symbol_of_atom_zerotied_cation_symbol Atom_zerotied_cation_symbol_v.nap1;;

let nip1 = atom_zerotied_symbol_of_atom_zerotied_cation_symbol Atom_zerotied_cation_symbol_v.nip1;;

let cup1 = atom_zerotied_symbol_of_atom_zerotied_cation_symbol Atom_zerotied_cation_symbol_v.cup1;;

let mgp2 = atom_zerotied_symbol_of_atom_zerotied_cation_symbol Atom_zerotied_cation_symbol_v.mgp2;;

let cap2 = atom_zerotied_symbol_of_atom_zerotied_cation_symbol Atom_zerotied_cation_symbol_v.cap2;;

let fep2 = atom_zerotied_symbol_of_atom_zerotied_cation_symbol Atom_zerotied_cation_symbol_v.fep2;;

let znp2 = atom_zerotied_symbol_of_atom_zerotied_cation_symbol Atom_zerotied_cation_symbol_v.znp2;;

let cup2 = atom_zerotied_symbol_of_atom_zerotied_cation_symbol Atom_zerotied_cation_symbol_v.cup2;;

let fep3 = atom_zerotied_symbol_of_atom_zerotied_cation_symbol Atom_zerotied_cation_symbol_v.fep3;;

let nip3 = atom_zerotied_symbol_of_atom_zerotied_cation_symbol Atom_zerotied_cation_symbol_v.nip3;;

let ar = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol Atom_zerotied_raregas_symbol_v.ar;;

let he = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol Atom_zerotied_raregas_symbol_v.he;;

let kr = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol Atom_zerotied_raregas_symbol_v.kr;;

let ne = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol Atom_zerotied_raregas_symbol_v.ne;;

let xe = atom_zerotied_symbol_of_atom_zerotied_raregas_symbol Atom_zerotied_raregas_symbol_v.xe;;

let hb_s = atom_zerotied_symbol_of_atom_zerotied_halfbridge_symbol Atom_zerotied_halfbridge_symbol_v.hb_s;;

let hb_c = atom_zerotied_symbol_of_atom_zerotied_halfbridge_symbol Atom_zerotied_halfbridge_symbol_v.hb_c;;

let hb_d = atom_zerotied_symbol_of_atom_zerotied_halfbridge_symbol Atom_zerotied_halfbridge_symbol_v.hb_d;;

let hb_t = atom_zerotied_symbol_of_atom_zerotied_halfbridge_symbol Atom_zerotied_halfbridge_symbol_v.hb_t;;


(** {6 Making} *)


let make s = function
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


let atom_zerotied_anion_symbol_off_atom_zerotied_symbol = function
  | Atom_zerotied_symbol_t.Atom_zerotied_anion_symbol sym_a0a -> sym_a0a
  | sym_at0 -> Error_messages_v.print_fatal_error
      nam_cod "atom_zerotied_anion_symbol_off_atom_zerotied_symbol"
      "Atom_zerotied_anion_symbol"
      (name sym_at0) "check"
;;

let atom_zerotied_anion_minusone_symbol_off_atom_zerotied_symbol sym_at0 = 
  let sym_a0a = atom_zerotied_anion_symbol_off_atom_zerotied_symbol sym_at0 in 
    Atom_zerotied_anion_symbol_v.atom_zerotied_anion_minusone_symbol_off_atom_zerotied_anion_symbol sym_a0a
;;

let atom_zerotied_anion_minustwo_symbol_off_atom_zerotied_symbol sym_at0 = 
  let sym_a0a = atom_zerotied_anion_symbol_off_atom_zerotied_symbol sym_at0 in 
    Atom_zerotied_anion_symbol_v.atom_zerotied_anion_minustwo_symbol_off_atom_zerotied_anion_symbol sym_a0a
;;

let atom_zerotied_cation_symbol_off_atom_zerotied_symbol = function
  | Atom_zerotied_symbol_t.Atom_zerotied_cation_symbol sym_a0c -> sym_a0c
  | sym_at0 -> Error_messages_v.print_fatal_error
      nam_cod "atom_zerotied_cation_symbol_off_atom_zerotied_symbol"
      "Atom_zerotied_cation_symbol"
      (name sym_at0) "check"
;;

let atom_zerotied_cation_plusone_symbol_off_atom_zerotied_symbol sym_at0 = 
  let sym_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0 in 
    Atom_zerotied_cation_symbol_v.atom_zerotied_cation_plusone_symbol_off_atom_zerotied_cation_symbol sym_a0c
;;

let atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_symbol sym_at0 = 
  let sym_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0 in 
    Atom_zerotied_cation_symbol_v.atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_cation_symbol sym_a0c
;;

let atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_symbol sym_at0 = 
  let sym_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0 in 
    Atom_zerotied_cation_symbol_v.atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_cation_symbol sym_a0c
;;

let atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function
  | Atom_zerotied_symbol_t.Atom_zerotied_raregas_symbol sym_a0r -> sym_a0r
  | sym_at0 -> Error_messages_v.print_fatal_error
      nam_cod "atom_zerotied_raregas_symbol_off_atom_zerotied_symbol"
      "Atom_zerotied_raregas_symbol"
      (name sym_at0) "check"
;;

let atom_zerotied_halfbridge_symbol_off_atom_zerotied_symbol = function
  | Atom_zerotied_symbol_t.Atom_zerotied_halfbridge_symbol sym_a0h -> sym_a0h
  | sym_at0 -> Error_messages_v.print_fatal_error
      nam_cod "atom_zerotied_halfbridge_symbol_off_atom_zerotied_symbol"
      "Atom_zerotied_halfbridge_symbol"
      (name sym_at0) "check"
;;


(** {6 Querying} *)


let is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol = function
  | Atom_zerotied_symbol_t.Atom_zerotied_anion_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_anion_minusone_symbol_off_atom_zerotied_symbol sym_at0 =
  if not (is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol sym_at0)
  then false
  else
    begin
     let sym_a0a = atom_zerotied_anion_symbol_off_atom_zerotied_symbol sym_at0 in 
     Atom_zerotied_anion_symbol_v.is_atom_zerotied_anion_minusone_symbol_off_atom_zerotied_anion_symbol sym_a0a
    end
;;

let is_atom_zerotied_anion_minustwo_symbol_off_atom_zerotied_symbol sym_at0 =
  if not (is_atom_zerotied_anion_symbol_off_atom_zerotied_symbol sym_at0)
  then false
  else
    begin
     let sym_a0a = atom_zerotied_anion_symbol_off_atom_zerotied_symbol sym_at0 in 
     Atom_zerotied_anion_symbol_v.is_atom_zerotied_anion_minustwo_symbol_off_atom_zerotied_anion_symbol sym_a0a
    end
;;

let is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol = function
  | Atom_zerotied_symbol_t.Atom_zerotied_cation_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_cation_plusone_symbol_off_atom_zerotied_symbol sym_at0 =
  if not (is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0)
  then false
  else
    begin
     let sym_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0 in 
     Atom_zerotied_cation_symbol_v.is_atom_zerotied_cation_plusone_symbol_off_atom_zerotied_cation_symbol sym_a0c
    end
;;

let is_atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_symbol sym_at0 =
  if not (is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0)
  then false
  else
    begin
     let sym_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0 in 
     Atom_zerotied_cation_symbol_v.is_atom_zerotied_cation_plustwo_symbol_off_atom_zerotied_cation_symbol sym_a0c
    end
;;

let is_atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_symbol sym_at0 =
  if not (is_atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0)
  then false
  else
    begin
     let sym_a0c = atom_zerotied_cation_symbol_off_atom_zerotied_symbol sym_at0 in 
     Atom_zerotied_cation_symbol_v.is_atom_zerotied_cation_plusthree_symbol_off_atom_zerotied_cation_symbol sym_a0c
    end
;;

let is_atom_zerotied_raregas_symbol_off_atom_zerotied_symbol = function
  | Atom_zerotied_symbol_t.Atom_zerotied_raregas_symbol _ -> true
  | _ -> false
;;

let is_atom_zerotied_halfbridge_symbol_off_atom_zerotied_symbol = function
  | Atom_zerotied_symbol_t.Atom_zerotied_halfbridge_symbol _ -> true
  | _ -> false
;;


(** created by ./generator atom_zerotied implementation symbol at 15:4 13 Mar 2012. *)



