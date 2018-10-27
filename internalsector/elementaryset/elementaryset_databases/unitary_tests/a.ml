let coeff_trip_Xi_A_phhp i a j b omega =
  assert( match (sym i, sym a, sym j, sym b) with 
  | (Occ _, Virt _, Occ _, Virt _) -> false
  | _ -> false);
  let xi = ref 0. in
  for k=1 to  !nocc do
    for c= ( !nocc+1) to  !norb do
      xi := 
        !xi -. 
        (2.*.(coeff_wee i j k c)*.(coeff_wee b a c k)
         -. (coeff_wee i j k c)*.(coeff_wee k a c b)
         -. (coeff_wee c j k i)*.(coeff_wee b a c k))
        /.(omega -. epsilon a +. epsilon k -. epsilon c +. epsilon j)
        -.(2.*.(coeff_wee i j c k)*.(coeff_wee b a k c) 
           -.(coeff_wee i j c k)*.(coeff_wee c a k b)
           -.(coeff_wee k j c i)*.(coeff_wee b a k c))
        /.(omega +. epsilon i -. epsilon c +. epsilon k -. epsilon b)
    done
  done;
  !xi
