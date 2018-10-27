(* {3 A Shape functionalities for a Radial Function.} *)

module Rfs_t = Radial_fonction_shape_t

let print ppf = function
   | Rfs_t.Gaussian -> Format.fprintf ppf "Gaussian" 
   | Rfs_t.Slater -> Format.fprintf ppf "Slater" 
   | Rfs_t.Planewave -> Format.fprintf ppf "Planewave" 
   | Rfs_t.Wavelet -> Format.fprintf ppf "Wavelet" 
   | Rfs_t.Monomial -> Format.fprintf ppf "Monomial" 
   | Rfs_t.Polynomial -> Format.fprintf ppf "Polynomial" 
   | Rfs_t.Product -> Format.fprintf ppf "Product" 
   | Rfs_t.Scaled -> Format.fprintf ppf "Scaled" 
 ;;

let name = function
   | Rfs_t.Gaussian -> Format.sprintf "Gu" 
   | Rfs_t.Slater -> Format.sprintf "Sl" 
   | Rfs_t.Planewave -> Format.sprintf "Pw" 
   | Rfs_t.Wavelet -> Format.sprintf "Wl" 
   | Rfs_t.Monomial -> Format.sprintf "Mn" 
   | Rfs_t.Polynomial -> Format.sprintf "Pn" 
   | Rfs_t.Product -> Format.sprintf "Pr" 
   | Rfs_t.Scaled -> Format.sprintf "Sc" 
 ;;



