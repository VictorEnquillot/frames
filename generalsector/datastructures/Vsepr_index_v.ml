(** {3 A VSEPR Index functionalities for an Entity.} *)

let nam_mod = "Vsepr_index_v.ml";;

(** {6 Abbreviating.} *)

(* monoatomic_index *)

let mmon_c = Vsepr_index_t.Mon_c;;
let mon_c = Vsepr_index_t.Monoatomic_index mmon_c;;

(* diatomic_index *)

let ddia_l = Vsepr_index_t.Dia_l;;
let ddia_r = Vsepr_index_t.Dia_r;;

let dia_l = Vsepr_index_t.Diatomic_index ddia_l;;
let dia_r = Vsepr_index_t.Diatomic_index ddia_r;;

(* linear_index *)

let llin_c = Vsepr_index_t.Lin_c;;
let llin_i = Vsepr_index_t.Lin_i;;
let llin_o = Vsepr_index_t.Lin_o;;

let lin_c = Vsepr_index_t.Linear_index llin_c;;
let lin_i = Vsepr_index_t.Linear_index llin_i;;
let lin_o = Vsepr_index_t.Linear_index llin_o;;

(* bent_onelonepair_index *)

let bbon_c = Vsepr_index_t.Bon_c;;
let bbon_i = Vsepr_index_t.Bon_i;;
let bbon_o = Vsepr_index_t.Bon_o;;

let bon_c = Vsepr_index_t.Bent_onelonepair_index bbon_c;;
let bon_i = Vsepr_index_t.Bent_onelonepair_index bbon_i;;
let bon_o = Vsepr_index_t.Bent_onelonepair_index bbon_o;;
  
(* bent_twolonepair_index *)

let bbtw_c = Vsepr_index_t.Btw_c;;
let bbtw_i = Vsepr_index_t.Btw_i;;
let bbtw_o = Vsepr_index_t.Btw_o;;

let btw_c = Vsepr_index_t.Bent_twolonepair_index bbtw_c;;
let btw_i = Vsepr_index_t.Bent_twolonepair_index bbtw_i;;
let btw_o = Vsepr_index_t.Bent_twolonepair_index bbtw_o;;
  
(* tetrahedral_index *)

let ttet_c = Vsepr_index_t.Tet_c;;
let ttet_i = Vsepr_index_t.Tet_i;;
let ttet_o = Vsepr_index_t.Tet_o;;
let ttet_l = Vsepr_index_t.Tet_l;;
let ttet_r = Vsepr_index_t.Tet_r;;

let tet_c = Vsepr_index_t.Tetrahedral_index ttet_c;;
let tet_i = Vsepr_index_t.Tetrahedral_index ttet_i;;
let tet_o = Vsepr_index_t.Tetrahedral_index ttet_o;;
let tet_l = Vsepr_index_t.Tetrahedral_index ttet_l;;
let tet_r = Vsepr_index_t.Tetrahedral_index ttet_r;;
  
(* trigonalpyramidal_index *)

let ttpy_c = Vsepr_index_t.Tpy_c;;
let ttpy_i = Vsepr_index_t.Tpy_i;;
let ttpy_l = Vsepr_index_t.Tpy_l;;
let ttpy_r = Vsepr_index_t.Tpy_r;;

let tpy_c = Vsepr_index_t.Trigonalpyramidal_index ttpy_c;;
let tpy_i = Vsepr_index_t.Trigonalpyramidal_index ttpy_i;;
let tpy_l = Vsepr_index_t.Trigonalpyramidal_index ttpy_l;;
let tpy_r = Vsepr_index_t.Trigonalpyramidal_index ttpy_r;;
  
(* trigonalplanar_index *)

let ttpl_c = Vsepr_index_t.Tpl_c;;
let ttpl_i = Vsepr_index_t.Tpl_i;;
let ttpl_l = Vsepr_index_t.Tpl_l;;
let ttpl_r = Vsepr_index_t.Tpl_r;;

let tpl_c = Vsepr_index_t.Trigonalplanar_index ttpl_c;;
let tpl_i = Vsepr_index_t.Trigonalplanar_index ttpl_i;;
let tpl_l = Vsepr_index_t.Trigonalplanar_index ttpl_l;;
let tpl_r = Vsepr_index_t.Trigonalplanar_index ttpl_r;;

(** {6 Making.} *)

let make = function
  | "mon_c" -> mon_c
  | "dia_l" -> dia_l
  | "dia_r" -> dia_r
  | "lin_c" -> lin_c
  | "lin_i" -> lin_i
  | "lin_o" -> lin_o
  | "bon_c" -> bon_c
  | "bon_i" -> bon_i
  | "bon_o" -> bon_o
  | "btw_c" -> btw_c
  | "btw_i" -> btw_i
  | "btw_o" -> btw_o
  | "tet_c" -> tet_c
  | "tet_i" -> tet_i
  | "tet_o" -> tet_o
  | "tet_l" -> tet_l
  | "tet_r" -> tet_r
  | "tpy_c" -> tpy_c
  | "tpy_i" -> tpy_i
  | "tpy_l" -> tpy_l
  | "tpy_r" -> tpy_r
  | "tpl_c" -> tpl_c
  | "tpl_i" -> tpl_i
  | "tpl_l" -> tpl_l
  | "tpl_r" -> tpl_r
  | str -> Error_messages_v.print_fatal_error
	nam_mod "make"
	"a valid vsepr_index name"
	str "check"

;;
(** {6 Naming.} *)

let name_of_diatomic_index = function 
  | Vsepr_index_t.Dia_l -> Format.sprintf "dia_l" (* left *)
  | Vsepr_index_t.Dia_r -> Format.sprintf "dia_r" (* right *)
;;

let name_of_linear_index = function 
  | Vsepr_index_t.Lin_c -> Format.sprintf "lin_c" (* center *)
  | Vsepr_index_t.Lin_i -> Format.sprintf "lin_i" (* input *)
  | Vsepr_index_t.Lin_o -> Format.sprintf "lin_o" (* output *)
;;

let name_of_monoatomic_index = function 
  | Vsepr_index_t.Mon_c -> Format.sprintf "mon_c" (* center *)
;;

let name_of_tetrahedral_index = function
  | Vsepr_index_t.Tet_c -> Format.sprintf "tet_c" (* center *)
  | Vsepr_index_t.Tet_i -> Format.sprintf "tet_i" (* input *)
  | Vsepr_index_t.Tet_l -> Format.sprintf "tet_l" (* left side of plane teti-tetc, tetc-teto *)
  | Vsepr_index_t.Tet_r -> Format.sprintf "tet_r" (* right side of plane teti-tetc, tetc-teto *)
  | Vsepr_index_t.Tet_o -> Format.sprintf "tet_o" (* output *)
;;
 
let name_of_trigonalpyramidal_index = function
  | Vsepr_index_t.Tpy_c -> Format.sprintf "tpy_c" (* center *)
  | Vsepr_index_t.Tpy_i -> Format.sprintf "tpy_i" (* input *)
  | Vsepr_index_t.Tpy_l -> Format.sprintf "tpy_l" (* left side of bissector plane containing tpy_i-tpy_c *)
  | Vsepr_index_t.Tpy_r -> Format.sprintf "tpy_r" (* right side of bissector plane containing tpy_i-tpy_c *)
;;
 
let name_of_trigonalbipyramidal_index = function
  | Vsepr_index_t.Tbp_c -> Format.sprintf "tbp_c" 
  | Vsepr_index_t.Tbp_u -> Format.sprintf "tbp_u" 
  | Vsepr_index_t.Tbp_d -> Format.sprintf "tbp_d" 
  | Vsepr_index_t.Tbp_f -> Format.sprintf "tbp_f" 
  | Vsepr_index_t.Tbp_s -> Format.sprintf "tbp_s"
  | Vsepr_index_t.Tbp_t -> Format.sprintf "tbp_t" 
;;
 
let name_of_trigonalplanar_index = function
  | Vsepr_index_t.Tpl_c -> Format.sprintf "tpl_c" (* center *)
  | Vsepr_index_t.Tpl_i -> Format.sprintf "tpl_i" (* input *)
  | Vsepr_index_t.Tpl_l -> Format.sprintf "tpl_l" (* bissector of angle (tpl_i-tpl_c, tpl_c-tpl_r *)
  | Vsepr_index_t.Tpl_r -> Format.sprintf "tpl_r" (* output *)
;;

let name_of_bent_onelonepair_index = function
  | Vsepr_index_t.Bon_c -> Format.sprintf "bon_c" (* center *)
  | Vsepr_index_t.Bon_i -> Format.sprintf "bon_i" (* input *)
  | Vsepr_index_t.Bon_o -> Format.sprintf "bon_o" (* output *)
;;

let name_of_bent_twolonepair_index = function
  | Vsepr_index_t.Btw_c -> Format.sprintf "btw_c" (* center *)
  | Vsepr_index_t.Btw_i -> Format.sprintf "btw_i" (* input *)
  | Vsepr_index_t.Btw_o -> Format.sprintf "btw_o" (* output *)
;;

let name_of_octahedral_index = function
  | Vsepr_index_t.Oct_c -> "oct_c"
  | Vsepr_index_t.Oct_u -> "oct_u"
  | Vsepr_index_t.Oct_n -> "oct_n"
  | Vsepr_index_t.Oct_w -> "oct_n"
  | Vsepr_index_t.Oct_s -> "oct_s"
  | Vsepr_index_t.Oct_e -> "oct_e"
  | Vsepr_index_t.Oct_d -> "oct_d"
;;

let name_of_pentagonalbipyramidal_index ind = 
    Utilities_v.not_yet_implemented nam_mod "name_of_pentagonalbipyramidal_index"
;;

let name_of_pentagonalpyramidal_index ind =
  Utilities_v.not_yet_implemented nam_mod "name_of_pentagonalpyramidal_index"
;;

let name_of_seesaw_index ind =
  Utilities_v.not_yet_implemented nam_mod "name_of_seesaw_index"
;;

let name_of_squareantiprismatic_index ind =
  Utilities_v.not_yet_implemented nam_mod "name_of_squareantiprismatic_index"
;;

let name_of_squareplanar_index ind =
  Utilities_v.not_yet_implemented nam_mod "name_of_squareplanar_index"
;;

let name_of_squarepyramidal_index ind =
  Utilities_v.not_yet_implemented nam_mod "name_of_squarepyramidal_index"
;;

let name_of_tshaped_index ind =
  Utilities_v.not_yet_implemented nam_mod "name_of_tshaped_index"
;;

let name = function 
  | Vsepr_index_t.Bent_onelonepair_index ind ->
      name_of_bent_onelonepair_index ind
  | Vsepr_index_t.Bent_twolonepair_index ind ->
      name_of_bent_twolonepair_index ind
  | Vsepr_index_t.Diatomic_index ind ->
      name_of_diatomic_index ind
  | Vsepr_index_t.Linear_index ind ->
      name_of_linear_index ind
  | Vsepr_index_t.Monoatomic_index ind ->
      name_of_monoatomic_index ind
  | Vsepr_index_t.Octahedral_index ind ->
      name_of_octahedral_index ind
  | Vsepr_index_t.Pentagonalbipyramidal_index ind ->
      name_of_pentagonalbipyramidal_index ind
  | Vsepr_index_t.Pentagonalpyramidal_index ind ->
      name_of_pentagonalpyramidal_index ind
  | Vsepr_index_t.Seesaw_index ind ->
      name_of_seesaw_index ind
  | Vsepr_index_t.Squareantiprismatic_index ind ->
      name_of_squareantiprismatic_index ind
  | Vsepr_index_t.Squareplanar_index ind ->
      name_of_squareplanar_index ind
  | Vsepr_index_t.Squarepyramidal_index ind ->
      name_of_squarepyramidal_index ind
  | Vsepr_index_t.Tetrahedral_index ind ->
      name_of_tetrahedral_index ind
  | Vsepr_index_t.Trigonalbipyramidal_index ind ->
      name_of_trigonalbipyramidal_index ind
  | Vsepr_index_t.Trigonalplanar_index ind ->
      name_of_trigonalplanar_index ind
  | Vsepr_index_t.Trigonalpyramidal_index ind ->
      name_of_trigonalpyramidal_index ind
  | Vsepr_index_t.Tshaped_index ind ->
      name_of_tshaped_index ind
;;

(** {6 Naming} *)

let axe_notation_of_vsepr_index = function
  | Vsepr_index_t.Bent_onelonepair_index _ -> 
      failwith "Bent_onelonepair_index Vsepr_index_v.axe_notation_of_vsepr_index"
  | Vsepr_index_t.Bent_twolonepair_index _ ->
      Axe_notation_v.make 2 2 
  | Vsepr_index_t.Diatomic_index _ -> 
      Axe_notation_v.make 1 2 
  | Vsepr_index_t.Linear_index _ ->
      Axe_notation_v.make 2 3 
  | Vsepr_index_t.Monoatomic_index _ ->
      Axe_notation_v.make 0 0 
  | Vsepr_index_t.Octahedral_index _ ->
      Axe_notation_v.make 6 0 
  | Vsepr_index_t.Pentagonalbipyramidal_index _ ->
      Axe_notation_v.make 6 1 
  | Vsepr_index_t.Pentagonalpyramidal_index _ ->
      Axe_notation_v.make 6 1 
  | Vsepr_index_t.Seesaw_index _ ->
      Axe_notation_v.make 4 1 
  | Vsepr_index_t.Squareantiprismatic_index _ ->
      Axe_notation_v.make 8 0 
  | Vsepr_index_t.Squareplanar_index _ ->
      Axe_notation_v.make 4 2
  | Vsepr_index_t.Squarepyramidal_index _ ->
      Axe_notation_v.make 5 1 
  | Vsepr_index_t.Tetrahedral_index _ ->
      Axe_notation_v.make 4 0 
  | Vsepr_index_t.Trigonalbipyramidal_index _ ->
      Axe_notation_v.make 5 0 
  | Vsepr_index_t.Trigonalplanar_index _ ->
      Axe_notation_v.make 3 0 
  | Vsepr_index_t.Trigonalpyramidal_index _ ->
      Axe_notation_v.make 3 1 
  | Vsepr_index_t.Tshaped_index _ -> 
      Axe_notation_v.make 3 2 
;;

let int_off_bent_onelonepair_index = function
  | Vsepr_index_t.Bon_c -> 1
  | Vsepr_index_t.Bon_i -> 2
  | Vsepr_index_t.Bon_o -> 3
;;

let int_off_bent_twolonepair_index = function
  | Vsepr_index_t.Btw_c -> 1
  | Vsepr_index_t.Btw_i -> 2
  | Vsepr_index_t.Btw_o -> 3
;;

let int_off_diatomic_index = function
  | Vsepr_index_t.Dia_l -> 1
  | Vsepr_index_t.Dia_r -> 2
;;

let int_off_monoatomic_index = function
  | Vsepr_index_t.Mon_c -> 1
;;

let int_off_linear_index = function
  | Vsepr_index_t.Lin_c -> 1
  | Vsepr_index_t.Lin_i -> 2
  | Vsepr_index_t.Lin_o -> 3
;;

let int_off_octahedral_index = function
  | Vsepr_index_t.Oct_c -> 1
  | Vsepr_index_t.Oct_u -> 2
  | Vsepr_index_t.Oct_n -> 3
  | Vsepr_index_t.Oct_w -> 4
  | Vsepr_index_t.Oct_s -> 5
  | Vsepr_index_t.Oct_e -> 6
  | Vsepr_index_t.Oct_d -> 7
;;

let int_off_tetrahedral_index = function
  | Vsepr_index_t.Tet_c -> 1
  | Vsepr_index_t.Tet_i -> 2
  | Vsepr_index_t.Tet_o -> 3
  | Vsepr_index_t.Tet_l -> 4
  | Vsepr_index_t.Tet_r -> 5
;;

let int_off_trigonalplanar_index = function
  | Vsepr_index_t.Tpl_c -> 1
  | Vsepr_index_t.Tpl_i -> 2
  | Vsepr_index_t.Tpl_l -> 3
  | Vsepr_index_t.Tpl_r -> 4
;;

let int_off_trigonalpyramidal_index = function
  | Vsepr_index_t.Tpy_c -> 1
  | Vsepr_index_t.Tpy_i -> 2
  | Vsepr_index_t.Tpy_l -> 3
  | Vsepr_index_t.Tpy_r -> 4
;;

let int_off_trigonalbipyramidal_index = function
  | Vsepr_index_t.Tbp_c -> 1
  | Vsepr_index_t.Tbp_u -> 2
  | Vsepr_index_t.Tbp_d -> 3
  | Vsepr_index_t.Tbp_f -> 4
  | Vsepr_index_t.Tbp_s -> 5
  | Vsepr_index_t.Tbp_t -> 6
;;
 
let int_off_pentagonalbipyramidal_index ind = 
    Utilities_v.not_yet_implemented nam_mod "int_off_pentagonalbipyramidal_index"
;;

let int_off_pentagonalpyramidal_index ind =
  Utilities_v.not_yet_implemented nam_mod "int_off_pentagonalpyramidal_index"
;;

let int_off_seesaw_index ind =
  Utilities_v.not_yet_implemented nam_mod "int_off_seesaw_index"
;;

let int_off_squareantiprismatic_index ind =
  Utilities_v.not_yet_implemented nam_mod "int_off_squareantiprismatic_index"
;;

let int_off_squareplanar_index ind =
  Utilities_v.not_yet_implemented nam_mod "int_off_squareplanar_index"
;;

let int_off_squarepyramidal_index ind =
  Utilities_v.not_yet_implemented nam_mod "int_off_squarepyramidal_index"
;;

let int_off_tshaped_index ind =
  Utilities_v.not_yet_implemented nam_mod "int_off_tshaped_index"
;;

let int_off_vsepr_index = function 
  | Vsepr_index_t.Bent_onelonepair_index ind ->
      int_off_bent_onelonepair_index ind
  | Vsepr_index_t.Bent_twolonepair_index ind ->
      int_off_bent_twolonepair_index ind
  | Vsepr_index_t.Diatomic_index ind ->
      int_off_diatomic_index ind
  | Vsepr_index_t.Linear_index ind ->
      int_off_linear_index ind
  | Vsepr_index_t.Octahedral_index ind ->
      int_off_octahedral_index ind
  | Vsepr_index_t.Monoatomic_index ind ->
      int_off_monoatomic_index ind
  | Vsepr_index_t.Pentagonalbipyramidal_index ind ->
      int_off_pentagonalbipyramidal_index ind
  | Vsepr_index_t.Pentagonalpyramidal_index ind ->
      int_off_pentagonalpyramidal_index ind
  | Vsepr_index_t.Seesaw_index ind ->
      int_off_seesaw_index ind
  | Vsepr_index_t.Squareantiprismatic_index ind ->
      int_off_squareantiprismatic_index ind
  | Vsepr_index_t.Squareplanar_index ind ->
      int_off_squareplanar_index ind
  | Vsepr_index_t.Squarepyramidal_index ind ->
      int_off_squarepyramidal_index ind
  | Vsepr_index_t.Tetrahedral_index ind ->
      int_off_tetrahedral_index ind
  | Vsepr_index_t.Trigonalbipyramidal_index ind ->
      int_off_trigonalbipyramidal_index ind
  | Vsepr_index_t.Trigonalplanar_index ind ->
      int_off_trigonalplanar_index ind
  | Vsepr_index_t.Trigonalpyramidal_index ind ->
      int_off_trigonalpyramidal_index ind
  | Vsepr_index_t.Tshaped_index ind ->
      int_off_tshaped_index ind
;;

let char_off_vsepr_index vin =
  let i = int_off_vsepr_index vin in
  Integer_value_v.char_lowercase_of_int i
;;

let tetrahedral_index_list = [tet_c; tet_i; tet_o; tet_l; tet_r];;
let trigonalplanar_index_list = [tpl_c; tpl_i; tpl_l; tpl_r];;
let trigonalpyramidal_index_list = [tpy_c; tpy_i; tpy_l; tpy_r];;
