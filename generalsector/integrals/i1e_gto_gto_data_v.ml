let mod_nam = "I1e_gto_gto_data_v";;

let pi = 4.0 *. atan (1.0);;

let s00_of_nu_of_mu_of_abx nu mu ab_x =  
  (sqrt (pi *. nu )) *. exp ((-. mu) *. ab_x *. ab_x ) 
;;

let nu_and_mu_of_alpha_of_beta alpha beta =
  let nu = 1. /. (alpha +. beta) in
  let mu = (alpha *. beta) *. nu in
  (nu, mu)
;;

  
let abx_of_ax_of_bx a_x b_x =
  b_x -. a_x
;;

let s00_of_alpha_of_beta_of_ax_of_bx alpha beta a_x b_x =  
  let (nu,mu) = nu_and_mu_of_alpha_of_beta alpha beta 
  and ab_x = abx_of_ax_of_bx a_x b_x in
  
  s00_of_nu_of_mu_of_abx nu mu ab_x
;;

let overlap_of_pa_x_of_pb_x_of_alpha_of_beta_of_ij pa_x pb_x alpha beta =
  let (nu, mu) = nu_and_mu_of_alpha_of_beta alpha beta 
  and a = pa_x
  and b = pb_x in
  let n = nu /. 2. 
  and ab_x = abx_of_ax_of_bx a b in

  let s00 = s00_of_nu_of_mu_of_abx nu mu ab_x in

  let rec sij_x = function
    | (0, 0) -> s00
	  
    | (1, 0) -> a *. s00
    | (0, 1) -> b *. s00 
    | (2, 0) -> (a *. a +. n) *. s00
    | (0, 2) -> (b *. b +. n) *. s00
	  
    | (1, 1) -> ((a *. b) +. n ) *. s00
	  
    | (i, 0) -> a *. sij_x (i-1, 0) 
	  +. (float_of_int (i-1)) *. n *. (sij_x (i-2, 0))
	  
    | (0, j) -> b *. sij_x (0, j-1) 
	  +. (float_of_int (j-1)) *. n *. (sij_x (0, j-2))
	  
    | (i, j) when (i > j) -> 
	let fi = float_of_int i in
	let fj = float_of_int j in
	a *. (sij_x (i-1, j))
	    +. n *. ( 
	  (fi -.1.) *. sij_x (i-2, j) 
	    +. fj *. sij_x (i-1, j-1) 
	 )
    | (i, j) -> 
	let fi = float_of_int i in
	let fj = float_of_int j in
	b *. (sij_x (i, j-1))
	    +. n *. ( 
	  (fj -. 1.) *. sij_x (i, j-2) 
      	    +. fi *. sij_x (i-1, j-1) 
	 )
	    
  in
   sij_x
;;
