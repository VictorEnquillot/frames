(* $Id: euler_angles.ml,v 1.1 2007-06-25 08:02:14 colonna Exp $ *)

let tensor_3_3_b phi =
 ( ( (cos phi) , (sin phi), 0.0 ),
 ( (-.(sin phi)), (cos phi), 0.0 ),
 (     0.0 ,   0.0 , 1.0 ) )
 ;;

let tensor_3_3_c tha =
 ( (1.0,      0.0 ,     0.0 ),
 ( 0.0,  (cos tha) , (sin tha) ),
 ( 0.0, (-.(sin tha)), (cos tha) ) )
;;

let tensor_3_3_d psi =
 ( ( (cos psi) , (sin psi), 0.0 ),
  ((-.(sin psi)), (cos psi), 0.0 ),
  (    0.0 ,    0.0 , 1.0 ))
;;

let tensor_3_3_a eul = 
  let t_phi = tensor_3_3_b eul.Euler_angles_t.phi in
  let t_theta = tensor_3_3_c eul.Euler_angles_t.theta in
  let t_psi = tensor_3_3_d eul.Euler_angles_t.psi in
  
  let t_theta_psi = 
    Tensor_3_3_v.left_tensor_3_3_product t_theta t_psi 
  in
  Tensor_3_3_v.left_tensor_3_3_product t_phi t_theta_psi
;;


