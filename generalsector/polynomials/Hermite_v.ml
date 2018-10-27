let mod_nam = "Hermite_v";;

(* from Dr Jon D Harrop, Flying Frog Consultancy Ltd.
   OCaml for Scientists
   http://www.ffconsultancy.com/products/ocaml_for_scientists/ *)

let rec hermite n x = 
  hermite_aux 1. 0. 1 n x
    
and hermite_aux h h1 i n x =
  if i < n-1 then
    let h = 2. *. x *. h -. 2. *. float(i-1) *. h1 and h1 = h in
    let h = 2. *. x *. h -. 2. *. float i *. h1 and h1 = h in
    hermite_aux h h1 (i+2) n x
  else
    if i>n then h else
    hermite_aux (2. *. x *. h -. 2. *. float(i-1) *. h1) h (i+1) n x
;; 

(****************** *** TODO
let zeroes_abscisses ordghq =
  let eps_15 = 10.**(-15.) in

  if (ordghq < 2 || ordghq > 20) 
  then failwith "Out_of_bonds:Hermite_v"
  else
    
    gh_abscis.(1) = -0.707106781186548d0
      gh_abscis.(2) =  0.707106781186548d0

! calculate zeros of Hermite polynomial of order ordghq:
  do j = 3, ordghq

    do i = 2, j-1
      x1(i) = half * ( gh_abscis(i-1) + gh_abscis(i) )
    end do

    x1(1) = gh_abscis(1)   - half * ( gh_abscis(2)   - gh_abscis(1)   )
    x1(j) = gh_abscis(j-1) + half * ( gh_abscis(j-1) - gh_abscis(j-2) )

    do i = 1, j
      z = x1(i)

! recursion relation for Hermite polynomials:
            h = one
            hh = two * z
            do k = 2, j
               hhh = two * z * hh - two * dble(k-1) * h
               h = hh
               hh = hhh
            end do

            hp = two * j * h
:
           z1 = z - hh/hp

            if(abs(z-z1).ge.eps) then
               z = z1
               go to 1
            else
               x1(i) = z
               gh_abscis(i) = x1(i)
               hnm1(i) = h
            end if

         end do
      end do

;;

let weights

! calculate weights:
      facn = 1
      do i = 1, ordghq
         facn = facn * i
      end do

      cte = two**(ordghq-1)*facn*sqrt(pi) / ordghq**2

      if(ordghq.eq.2) then
         gh_weight(1) = 0.8862269254528d0
         gh_weight(2) = 0.8862269254528d0
         do i = 1, ordghq
            if(debug) write (logf,'(a,i5,2f20.10)') &
          '   debug_gauhermite> ', i, gh_abscis(i), gh_weight(i)
         end do
      else
         do i = 1, ordghq
            gh_weight(i) = cte / hnm1(i)**2
            if(debug) write (logf,'(a,i5,2f20.10)') &
          '   debug_gauhermite> ', i, gh_abscis(i), gh_weight(i)
         end do
      end if

****************)
