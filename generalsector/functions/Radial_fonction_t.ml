(* {3 A Function of r only.} *)

 type radial_fonction =
   | Gaussian of float 
   | Slater of float
   | Planewave of float
   | Wavelet of float array
   | Monomial of int
   | Polynomial of (float * int) array 
   | Product of radial_fonction * radial_fonction 
   | Scaled of float * radial_fonction 
 ;;

