type factorial_value = 
  | Factorial_recursive of factorial_value Singlet_t.singlet
  | Factorial_basic of int
;;
