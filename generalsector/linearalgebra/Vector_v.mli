(** {3 Specific functionalities for a Vector (not Array of float. } *)

val length : Vector_t.vector -> int
;;
(** [let l = length v;;]

    [v] is a [Vector_t.vector].
    [n] is an [int].
    [z] is the [Vector_t.vector] of length [n] have all elements equal to 0.0

    i.e. : z = [|0.; 0.; ... ; 0.|]. *)

val zero_of_int : int -> Vector_t.vector
;;
(** [let z = zero n;;]

    [n] is an [int].
    [z] is the [Vector_t.vector] of length [n] have all elements equal to 0.0

    i.e. : z = [|0.; 0.; ... ; 0.|]. *)
 
val unity_of_int : int  -> Vector_t.vector
;;
(** [let u = unity n;;]
    
    [u] is Vector_t.vector [|1.0; ...; 1.0|] of length [n]. *)
 
val unity_at_int_of_int : int -> int -> Vector_t.vector
;;
(** [let c = unity_at_int_of_int i d;;]
    c is a Vector_t.vector with all components zero 
    except the i-th which is 1.0.
    N.B: the first component is the 0-th. *)

val sigma : Vector_t.vector -> float
;;
(** [let s = sigma a;;]
    [s] = Sum all elements e_i of [a]. *)

val pair_product : Vector_t.vector -> Vector_t.vector -> Vector_t.vector
;;
(** [let p = pair_product v w;;]

    [v] is a [Vector_t.vector].
    [w] is a [Vector_t.vector] of same dimension as [v].
    [p] is a [Vector_t.vector] the ith element of which is the product 
        of the ith element of [v] by the ith element of [w].

    i.e : p.(i) = v.(i) *. w(i). *)

val dot_product : Vector_t.vector -> Vector_t.vector -> float
;;
(** [let d = dot_product v w;;]

    [v] is a [Vector_t.vector].
    [w] is a [Vector_t.vector].
    [d] is the sum on all i of all the products of the ith element of [v]
        by the ith element of [w]. *)

val norm2 : Vector_t.vector -> float
;;
(** [let n = norm2 v;;]

    [v] is a [Vector_t.vector].
    [n] is the dot product of [v] with itself. *)

val modulus : Vector_t.vector -> float
;;
(** [let m = modulus v;;]

    [v] is a [Vector_t.vector].
    [m] is a [float] square root of [norm2] of [v].

    i.e. : [m = sqrt sigma v.(i)*.v.(i)]. *)

val norm : Vector_t.vector -> float
;;
(** alias of modulus. *)

val minus : Vector_t.vector -> Vector_t.vector
;;
(** [let m = minus v;;]

    [v] is a [Vector_t.vector].
    [m] is a [Vector_t.vector] the ith element of which is negative of 
        the ith element of [v] 

    i.e : m.(i) = -. v.(i). *)

val difference : Vector_t.vector -> Vector_t.vector -> Vector_t.vector
;;
(** [let d = difference v w;;]

    [v] is a [Vector_t.vector].
    [w] is a [Vector_t.vector].
    [d] is a [Vector_t.vector] the ith element of which is the difference
        of the ith element of [v] by the ith element of [w].

    i.e : d.(i) = v.(i) -. w(i). *)

val addition : Vector_t.vector -> Vector_t.vector -> Vector_t.vector
;;
(** [let a = addition v w;;]

    [v] is a [Vector_t.vector].
    [w] is a [Vector_t.vector].
    [a] is a [Vector_t.vector] the ith element of which is the sum
        of the ith element of [v] by the ith element of [w].

    i.e : a.(i) = v.(i) +. w(i). *)

val is_equal_at_epsilon : float -> Vector_t.vector -> Vector_t.vector -> bool
;;
(** [let b = is_equal_at_epsilon e v w;;]

    [v] is a [Vector_t.vector].
    [w] is a [Vector_t.vector].
    [e] is a [float].    
    [b] is [true] when the modules of [v] and [w] differ by less than [e]. *)

val is_equal_at_epsilon_float : Vector_t.vector -> Vector_t.vector -> bool
;;
(** [let b = is_equal_at_epsilon_float v w;;]

    [v] is a [Vector_t.vector].
    [w] is a [Vector_t.vector].
    [b] is [true] when the modules of [v] and [w] differ by less than 
        [epsilon_float]. *)

val scaling : Vector_t.vector -> float -> Vector_t.vector
;;
(** [let w = scaling f v;;]
    
     i.e : w.(i) = v.(i) *. f. *)

val dividing : Vector_t.vector -> float -> Vector_t.vector
;;
(** [let w = dividing f v;;]
    
    i.e. : w.(i) = v.(i) /. f. *)

val tensor_product : 
    Vector_t.vector -> 
      Vector_t.vector -> 
	float list list
;;
(** t = tensor_product v w;;
    tij =  v.(i) *. w(j). *)

val center_of_mass : (float * Vector_t.vector) list -> Vector_t.vector
;;
(** The center of mass of a system of particles is defined as the 
    average of their positions, weighted by their masses mi. *)

val bifloat_vector_of_bivector : 
    Vector_t.vector * Vector_t.vector -> 
      (float * float) list
;;
(** [let l = bifloat_vector_of_bivector (v, w);;]

    [v] is a [Vector_t.vector].
    [w] is a [Vector_t.vector].
    [l] is the [list] the ith element of which is the
        couple made of the ith element of [v] and the ith element of [w].
     bifloat_vector_of_bivector ([1.; 2.], [3.; 4.]) -> [(1.;3); (2.; 4.)]
*)

val name : 
    Vector_t.vector -> 
      string
;;

val nonzero_at_int_of_float_of_int :
    int ->
      float ->
	int ->
	  float list
;;(** nonzero_at_int_of_float_of_int 2 1. 5 -> [0.; 0; 1.; 0.; 0.] *)

