
module Sgs_t = Symmetry_point_group_symbol_t

(** {6 Making.} *)

(** {6 Conversion.} *)

let print_nonaxial_group_symbol ppf = function
  | Sgs_t.C1 -> Format.fprintf ppf "C1"
  | Sgs_t.Cs -> Format.fprintf ppf "Cs"
  | Sgs_t.Ci -> Format.fprintf ppf "Ci"
;;

let print_cyclic_group_symbol ppf = function
  | Sgs_t.C2 -> Format.fprintf ppf "C2"
  | Sgs_t.C3 -> Format.fprintf ppf "C3"
  | Sgs_t.C4 -> Format.fprintf ppf "C4"
  | Sgs_t.C5 -> Format.fprintf ppf "C5"
  | Sgs_t.C6 -> Format.fprintf ppf "C6"
;;

let print_pyramidal_group_symbol ppf = function 
  | Sgs_t.C2v -> Format.fprintf ppf "C2v"
  | Sgs_t.C3v -> Format.fprintf ppf "C3v"
  | Sgs_t.C4v -> Format.fprintf ppf "C4v"
  | Sgs_t.C5v -> Format.fprintf ppf "C5v"
  | Sgs_t.C6v -> Format.fprintf ppf "C6v"
 ;;

let print_reflection_group_symbol ppf = function 
  | Sgs_t.C2h -> Format.fprintf ppf "C2h"
  | Sgs_t.C3h -> Format.fprintf ppf "C3h"
  | Sgs_t.C4h -> Format.fprintf ppf "C4h"
  | Sgs_t.C5h -> Format.fprintf ppf "C5h"
  | Sgs_t.C6h -> Format.fprintf ppf "C6h"
;;

let print_dihedral_group_symbol ppf = function 
  | Sgs_t.D2 -> Format.fprintf ppf "D2"
  | Sgs_t.D3 -> Format.fprintf ppf "D3"
  | Sgs_t.D4 -> Format.fprintf ppf "D4"
  | Sgs_t.D5 -> Format.fprintf ppf "D5"
  | Sgs_t.D6 -> Format.fprintf ppf "D6"
 ;;

let print_prismatic_group_symbol ppf = function
  | Sgs_t.D2h -> Format.fprintf ppf "D2h"
  | Sgs_t.D3h -> Format.fprintf ppf "D3h"
  | Sgs_t.D4h -> Format.fprintf ppf "D4h"
  | Sgs_t.D5h -> Format.fprintf ppf "D5h"
  | Sgs_t.D6h -> Format.fprintf ppf "D6h"
 ;;

let print_antiprismatic_group_symbol ppf = function
  | Sgs_t.D2d -> Format.fprintf ppf "D2d"
  | Sgs_t.D3d -> Format.fprintf ppf "D3d"
  | Sgs_t.D4d -> Format.fprintf ppf "D4d"
  | Sgs_t.D5d -> Format.fprintf ppf "D5d"
  | Sgs_t.D6d -> Format.fprintf ppf "D6d"
;;

let print_improperrotation_group_symbol ppf = function
  | Sgs_t.S4 -> Format.fprintf ppf "S4"
  | Sgs_t.S6 -> Format.fprintf ppf "S6"
  | Sgs_t.S8 -> Format.fprintf ppf "S8"
  | Sgs_t.S10 -> Format.fprintf ppf "S10"
;;

let print_cubic_group_symbol ppf = function 
  | Sgs_t.Td -> Format.fprintf ppf "Td"
  | Sgs_t.Oh -> Format.fprintf ppf "Oh"
  | Sgs_t.Ih -> Format.fprintf ppf "Ih"
 
let print_linear_group_symbol ppf = function
  | Sgs_t.Cinfv -> Format.fprintf ppf "Cinfv"
  | Sgs_t.Dinfh -> Format.fprintf ppf "Dinfh"
;;

let print ppf = function
  | Sgs_t.Nonaxial grp -> 
      Format.fprintf ppf "%a" print_nonaxial_group_symbol grp 
  | Sgs_t.Cn grp -> 
      Format.fprintf ppf "%a" print_cyclic_group_symbol grp
  | Sgs_t.Cnh grp -> 
      Format.fprintf ppf "%a" print_reflection_group_symbol grp
  | Sgs_t.Cnv grp -> 
      Format.fprintf ppf "%a" print_pyramidal_group_symbol grp
  | Sgs_t.Sn grp -> 
      Format.fprintf ppf "%a" print_improperrotation_group_symbol grp
  | Sgs_t.Dn grp -> 
      Format.fprintf ppf "%a" print_dihedral_group_symbol grp
  | Sgs_t.Dnh grp -> 
      Format.fprintf ppf "%a" print_prismatic_group_symbol grp 
  | Sgs_t.Dnd grp -> 
      Format.fprintf ppf "%a" print_antiprismatic_group_symbol grp
  | Sgs_t.Cubic grp -> 
      Format.fprintf ppf "%a" print_cubic_group_symbol grp
  | Sgs_t.Linear grp -> 
      Format.fprintf ppf "%a" print_linear_group_symbol grp
 ;;

let name_nonaxial_group_symbol = function
  | Sgs_t.C1 -> Format.sprintf "C1"
  | Sgs_t.Cs -> Format.sprintf "Cs"
  | Sgs_t.Ci -> Format.sprintf "Ci"
;;

let name_cyclic_group_symbol = function
  | Sgs_t.C2 -> Format.sprintf "C2"
  | Sgs_t.C3 -> Format.sprintf "C3"
  | Sgs_t.C4 -> Format.sprintf "C4"
  | Sgs_t.C5 -> Format.sprintf "C5"
  | Sgs_t.C6 -> Format.sprintf "C6"
;;

let name_pyramidal_group_symbol = function 
  | Sgs_t.C2v -> Format.sprintf "C2v"
  | Sgs_t.C3v -> Format.sprintf "C3v"
  | Sgs_t.C4v -> Format.sprintf "C4v"
  | Sgs_t.C5v -> Format.sprintf "C5v"
  | Sgs_t.C6v -> Format.sprintf "C6v"
 ;;

let name_reflection_group_symbol = function 
  | Sgs_t.C2h -> Format.sprintf "C2h"
  | Sgs_t.C3h -> Format.sprintf "C3h"
  | Sgs_t.C4h -> Format.sprintf "C4h"
  | Sgs_t.C5h -> Format.sprintf "C5h"
  | Sgs_t.C6h -> Format.sprintf "C6h"
;;

let name_dihedral_group_symbol = function 
  | Sgs_t.D2 -> Format.sprintf "D2"
  | Sgs_t.D3 -> Format.sprintf "D3"
  | Sgs_t.D4 -> Format.sprintf "D4"
  | Sgs_t.D5 -> Format.sprintf "D5"
  | Sgs_t.D6 -> Format.sprintf "D6"
 ;;

let name_prismatic_group_symbol = function
  | Sgs_t.D2h -> Format.sprintf "D2h"
  | Sgs_t.D3h -> Format.sprintf "D3h"
  | Sgs_t.D4h -> Format.sprintf "D4h"
  | Sgs_t.D5h -> Format.sprintf "D5h"
  | Sgs_t.D6h -> Format.sprintf "D6h"
 ;;

let name_antiprismatic_group_symbol = function
  | Sgs_t.D2d -> Format.sprintf "D2d"
  | Sgs_t.D3d -> Format.sprintf "D3d"
  | Sgs_t.D4d -> Format.sprintf "D4d"
  | Sgs_t.D5d -> Format.sprintf "D5d"
  | Sgs_t.D6d -> Format.sprintf "D6d"
;;

let name_improperrotation_group_symbol = function
  | Sgs_t.S4 -> Format.sprintf "S4"
  | Sgs_t.S6 -> Format.sprintf "S6"
  | Sgs_t.S8 -> Format.sprintf "S8"
  | Sgs_t.S10 -> Format.sprintf "S10"
;;

let name_cubic_group_symbol = function 
  | Sgs_t.Td -> Format.sprintf "Td"
  | Sgs_t.Oh -> Format.sprintf "Oh"
  | Sgs_t.Ih -> Format.sprintf "Ih"
 
let name_linear_group_symbol = function
  | Sgs_t.Cinfv -> Format.sprintf "Cinfv"
  | Sgs_t.Dinfh -> Format.sprintf "Dinfh"
;;

let name = function
  | Sgs_t.Nonaxial grp -> 
      Format.sprintf "%s" (name_nonaxial_group_symbol grp) 
  | Sgs_t.Cn grp -> 
      Format.sprintf "%s" (name_cyclic_group_symbol grp)
  | Sgs_t.Cnh grp -> 
      Format.sprintf "%s" (name_reflection_group_symbol grp)
  | Sgs_t.Cnv grp -> 
      Format.sprintf "%s" (name_pyramidal_group_symbol grp)
  | Sgs_t.Sn grp -> 
      Format.sprintf "%s" (name_improperrotation_group_symbol grp)
  | Sgs_t.Dn grp -> 
      Format.sprintf "%s" (name_dihedral_group_symbol grp)
  | Sgs_t.Dnh grp -> 
      Format.sprintf "%s" (name_prismatic_group_symbol grp) 
  | Sgs_t.Dnd grp -> 
      Format.sprintf "%s" (name_antiprismatic_group_symbol grp)
  | Sgs_t.Cubic grp -> 
      Format.sprintf "%s" (name_cubic_group_symbol grp)
  | Sgs_t.Linear grp -> 
      Format.sprintf "%s" (name_linear_group_symbol grp)
 ;;
