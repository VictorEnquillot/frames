(* {3 A Fonction .} *)

 type fonction = 
   | Constant of float
   | Monomial of int            (* x^n *)
   | Exponential 
   | Logarithm 
   | Cos 
   | Sin
   | Tan
   | Minus of fonction 
   | Addition of fonction * fonction 
   | Difference of fonction * fonction 
   | Fraction of fonction * fonction 	
   | Polynomial of (float * int) array
   | Product of fonction * fonction
   | Scaled of (fonction fonction_scaled)
   | Square of fonction 
   | Sum of fonction array    (* Sigma *)
   | Linear_combination of fonction linear_combination_of_fonction
   | Rond of fonction * fonction
 (*| Inverse of fonction *) 
	 
 and 'f linear_combination_of_fonction = ('f fonction_scaled) array 
 and 'f fonction_scaled = float * 'f  
 ;;

