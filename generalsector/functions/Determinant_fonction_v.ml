(* $Id: Exp $ *)

(* {3 A Determinant_fonction of N functions of N particle positions.} *)

let mod_nam = "Determinant_fonction_v";;

let not_yet_implemented m f =
  failwith
    (Printf.sprintf "%s: %s is not yet implemented." m f) 
;;

let rank det =
   let (fun_a, pos_a) = det in
   if Array.length fun_a = Array.length pos_a then Array.length pos_a
   else begin
    Format.fprintf Format.err_formatter 
   "@.@[<hov>%s.rank: --- Fatal Error ---@.\
   number of functions %i is not that of particles %i@]@."
   mod_nam (Array.length fun_a) (Array.length pos_a);
   assert false;
  end
;;

let permute_ith_jth_array i j arr =
  let res = Array.copy arr in
  res.(i) <- arr.(j);
  res.(j) <- arr.(i);
res
;;

let permute_functions i j det =
  let (fun_a, ptc_a) = det in
  (permute_ith_jth_array i j fun_a, ptc_a)
;;

let permute_particles i j det =
   let (fun_a, ptc_a) = det in
  (fun_a, permute_ith_jth_array i j ptc_a)
;;

let cofactor i j det =
  not_yet_implemented mod_nam "cofactor"
;;

let value_on_r3n det =
  not_yet_implemented mod_nam "value_on_r3n"
;;

let print ppf det =
  Utils_v.not_yet_implemented "print"
;;
