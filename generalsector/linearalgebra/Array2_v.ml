let nam_mod = "Array2_v";;

let not_yet_implemented m f =
  failwith
    (Printf.sprintf "%s: %s is not yet implemented." m f) 
;;

(** Array2 operations. *)

type 'a t = 'a array array
;;
type 'a array2 = 'a t
;;

let size ar2 =
 let ni = Array.length ar2 in
  if ni = 0 then 0, 0 else begin
	let nj = Array.length (Array.unsafe_get ar2 0) in
	 for i = 1 to ni - 1 do
	  if Array.length (Array.unsafe_get ar2 i) <> nj
	  then invalid_arg "Array2.size"
	 done;
	 ni, nj
   end
;;

let length = size
;;

let order = size
;;

let unsafe_size m =
 let ni = Array.length m in
 if ni = 0 then 0, 0 else
 let nj = Array.length (Array.unsafe_get m 0) in
 ni, nj
;;

let dim_i = Array.length
;;

let dim_j m = snd (size m)
;;

let unsafe_dim_j m = snd (unsafe_size m)
;;

let dim_1 = dim_i
and dim_2 = dim_j
;;

let get m i = Array.get (Array.get m i)
and set m i = Array.set (Array.get m i)
;;

let unsafe_get ar2 i = Array.unsafe_get (Array.unsafe_get ar2 i)
and unsafe_set ar2 i = Array.unsafe_set (Array.unsafe_get ar2 i)
;;

let make ni nj ar2 =
 if ni < 0 || nj < 0 then invalid_arg "Array2.make" else
  Array.init ni (fun i -> Array.make nj ar2)
;;

let init ni nj f =
 if ni < 0 || nj < 0 then invalid_arg "Array2.init" else
 Array.init ni (fun i -> Array.init nj (f i))
;;

(* TODO
let printer print_elem ob m =
 let print_array2 ob =
  Array.iter (Printf.bprintf ob "%a;\n" (My_array.line_printer print_elem)) in
 Printf.bprintf ob "[|\n%a|]" print_array2 m;;

let compact_printer print_elem ob m =
 let print_array2 ob =
  Array.iter
   (Printf.bprintf ob "%a;\n" (My_array.compact_printer print_elem)) in
 Printf.bprintf ob "[|\n%a|]" print_array2 m
;;
*)

let is_squared ar2 = 
 dim_1 ar2 == dim_2 ar2 
;;

let check_is_squared ar2 = 
 if is_squared ar2 then () 
 else raise (Failure "Array2.check_is_squared false")
;;

let check s f ar2_1 ar2_2 = if f ar2_1 <> f ar2_2 then invalid_arg ("Array2." ^ s) else ()
;;
(** [Array2.check s f ar2_1 m2] raises [Invalid_arg] if [f] applied to matrices
  [ar2_1] and [m2] do not return the same result. *)

let append_i ar2_1 m2 =
 check "append_i" dim_j ar2_1 m2;
 Array.append ar2_1 m2
;;

(* TODO
let append_j ar2_1 m2 =
 check "append_j" dim_i ar2_1 m2;
 My_array.map2 Array.append ar2_1 m2
;;

let append1 = append_i
and append2 = append_j
;;

let append ar2_1 m2 m3 m4 = append_i (append_j ar2_1 m2) (append_j m3 m4)
;;
*)

let list_check s f = function
 | [] -> ()
 | x :: l -> List.iter (fun y -> if f y <> f x then invalid_arg s) l;;
(** [Array2.list_check s f ml] raises [Invalid_arg] if [f] applied to all items
  of the array2 list [ml] do not return the same result. *)

let concat_i ml =
 list_check "concat_i" dim_j ml;
 Array.concat ml
;;

(* TODO
let concat_j ml =
 list_check "concat_j" dim_i ml;
 My_array.maplist Array.concat ml
;;
(* A REVOIR ! *)

let concat1 = concat_i
and concat2 = concat_j
;;

let concat mll = concat_i (List.map concat_j mll)
;;
(* A REVOIR ! *)
*)

let sub m oi li oj lj =
 let ni, nj = size m in
 if oi < 0 || li < 0 || oi + li > ni ||
   oj < 0 || lj < 0 || oj + lj > nj
 then invalid_arg "Array2.sub"
 else init li lj (fun i j -> unsafe_get m (oi + i) (oj + j))
;;

let sub m oi li oj lj =
 let ni, nj = size m in
 if oi < 0 || li < 0 || oi + li > ni ||
   oj < 0 || lj < 0 || oj + lj > nj
 then invalid_arg "Array2.sub"
 else init li lj (fun i j -> unsafe_get m (oi + i) (oj + j))
;;

let copy m =
 let ni, nj = size m in
 init ni nj (fun i j -> unsafe_get m i j)
;;

let fill m oi li oj lj x =
 let ni, nj = length m in
 if oi < 0 || li < 0 || oi + li > ni ||
   oj < 0 || lj < 0 || oj + lj > nj
 then invalid_arg "Array2.fill"
 else
  for i = oi to oi + li - 1 do
   for j = oj to oj + lj - 1 do
    unsafe_set m i j x
   done;
   done
;;

let blit ar2_1 oi1 oj1 m2 oi2 oj2 li lj =
 let ni1, nj1 = size ar2_1 and ni2, nj2 = size m2 in
 if li < 0 || lj < 0 ||
   oi1 < 0 || oi1 + li > ni1 || oj1 < 0 || oj1 + lj > nj1 ||
   oi2 < 0 || oi2 + li > ni2 || oj2 < 0 || oj2 + lj > nj2
 then invalid_arg "Array2.blit"
 else
  let bl i j =
   unsafe_set m2 (oi2 + i) (oj2 + j) (unsafe_get ar2_1 (oi1 + i) (oj1 + j)) in
   if oi1 < oi2 then
    for i = li - 1 downto 0 do
     if oj1 < oj2 then for j = lj - 1 downto 0 do bl i j done else
     for j = 0 to lj - 1 do bl i j done
    done
   else
    for i = 0 to li - 1 do
     if oj1 < oj2 then for j = lj - 1 downto 0 do bl i j done else
     for j = 0 to lj - 1 do bl i j done
	  done
;;

let transposed ar2 =
 let dim_1, dim_2 = size ar2 in
  if dim_1 == 0 || dim_2 == 0 then [||] else
   let ar2_t = make dim_2 dim_1 (unsafe_get ar2 0 0) in
	for j = 0 to dim_2 - 1 do
	 for i = 0 to dim_1 - 1 do
	  unsafe_set ar2_t j i (unsafe_get ar2 i j)
	 done;
	 done;
	  ar2_t
;;

let left_matrix_product ar2_l ar2_r = 
 not_yet_implemented nam_mod "left_matrix_product"
;;

let array_of_array2 m = Array.concat (Array.to_list m)
;;

let array2_of_array a dim_1 dim_2 =
 let len = Array.length a in
 if len <> dim_1 * dim_2 then invalid_arg "Array2.of_array" else
 init dim_1 dim_2 (fun i j -> Array.unsafe_get a (dim_2 * i + j))
;;

let arraylist_of_array2 = Array.to_list
;;

let array2_of_arraylist = function
 | [] -> [||]
 | a :: _ as al ->
   let dim_1 = Array.length a in
   List.iter
    (fun b ->
     if Array.length b <> dim_1 then invalid_arg "Array2.of_arraylist")
    al;
   Array.of_list al
;;

let list_list_of_array2 ar2 = List.map Array.to_list (Array.to_list ar2)
;;

let list_of_array2 ar2 = List.flatten (list_list_of_array2 ar2)
;;

let array2_of_list_list l = Array.map Array.of_list (Array.of_list l)
;;

let array2_of_list list n_col =
 let len = List.length list in
 let n_lin = len / n_col in

 let ar2 = make n_lin n_col (List.nth list 0) in
 
 let arr = Array.of_list list in
 let count = ref 0 in
  for l = 0 to n_lin-1
  do
   for c = 0 to n_col-1
   do
    ar2.(l).(c) <- arr.(!count);
    count := !count + 1;
   done
   done;

   ar2
;;

let lines_array_of_array2 ar2 = ar2 
;;

let to_columns_array ar2 = transposed ar2 
;;

let column_nth ar2 col =
 let ar2t = transposed ar2 in
  (Array.unsafe_get ar2t col)
;;  

(** {6 Iterators} *)

let iter f =
 Array.iter (fun mi -> Array.iter f mi)
;;

let map f =
 Array.map (fun mi -> Array.map f mi)
;;

let iterij f =
 Array.iteri (fun i mi -> Array.iteri (fun j x -> f i j x) mi)
;;

let mapij f =
 Array.mapi (fun i mi -> Array.mapi (fun j x -> f i j x) mi)
;;

let iter_i = Array.iter
;;

let iter_j f m = iter_i f (transposed m)
;;

let map_i = Array.map
;;

let map_j f m = transposed (map_i f (transposed m))
;;

let fold_left f =
 Array.fold_left (fun x mi -> Array.fold_left f x mi)
;;

let fold_right f =
 Array.fold_right (fun mi x -> Array.fold_right f mi x)
;;

(* TODO 
let subiter f m oi li oj lj =
 My_array.subiter (fun mi -> My_array.subiter f mi oj lj) m oi li
;;
*)

(* TODO
let subiterij f m oi li oj lj =
 My_array.subiteri (fun i mi -> My_array.subiteri (f i) mi oj lj) m oi li
;;
*)

(** {6 Iterators on two matrices} *)

(* TODO
let iter2 f =
 My_array.iter2 (fun ar2_1i m2i -> My_array.iter2 f ar2_1i m2i)
;;

let map2 f =
 My_array.map2 (fun ar2_1i m2i -> My_array.map2 f ar2_1i m2i)
;;

let iterij2 f =
 My_array.iteri2 (fun i ar2_1i m2i -> My_array.iteri2 (f i) ar2_1i m2i)
;;

let mapij2 f =
 My_array.mapi2 (fun i ar2_1i m2i -> My_array.mapi2 (f i) ar2_1i m2i)
;;

let fold_left2 f =
 My_array.fold_left2 (fun x ar2_1i m2i -> My_array.fold_left2 f x ar2_1i m2i)
;;

let fold_right2 f =
 My_array.fold_right2 (fun ar2_1i m2i x -> My_array.fold_right2 f ar2_1i m2i x)
;;
*)

(** Block array2 operations. *)

module Block = struct
 type 'a t = 'a array2 array2
 ;;

 let m_size = size
 ;;

 let size = m_size
 ;;

 let length = size
 ;;

 let m_unsafe_size = unsafe_size
 ;;
 let unsafe_size = m_unsafe_size
 ;;

(* let sizes bm =
  let dim_11, dim_21 = size bm in
 ;;

 let lengths = sizes
  ;;
*)

 let unsafe_sizes bm =
  let ni1, nj1 = size bm in
  if ni1 = 0 then [|0|], [|0|] else
  let nis = Array.map (fun ma -> dim_i (Array.unsafe_get ma 0)) bm in
  let njs = Array.map unsafe_dim_j (Array.unsafe_get bm 0) in
  nis, njs
 ;;

(* let to_array2 bm =
  let ni1, nj1 = m_size bm in
   if ni1 = 0 || nj1 = 0 then [||] else

    let ni2, nj2 = in

    let ni = and nj = in
    let m = make ni nj bm.(0).(0).(0).(0) in
     iterijij (fun i j bmij -> ) bm;;

 ;;

 let of_array2 m is js =
 ;;
*)
end
;;

let resize ni2 nj2 ar2_1 =
 let ni1, nj1 = length ar2_1 in
 match ni1, nj1, ni2, nj2 with
 | 0, _, 0, _ -> [||]
 | 0, _, _, _ -> invalid_arg "Array2.resize"
 | _, 0, _, 0 -> Array.make ni2 ar2_1.(0)
 | _, 0, _, _ -> invalid_arg "Array2.resize"
 | _, _, _, _ ->
   let m2 = make ni2 nj2 ar2_1.(0).(0) in
   let di = float_of_int ni2 /. float_of_int ni1
   and dj = float_of_int nj2 /. float_of_int nj1 in
   let f d eps i = int_of_float ((float_of_int i +. eps) *. d) in
   let fdim = f di 0. and fdip i = (f di 1. i) - 1
   and fdjm = f dj 0. and fdjp j = (f dj 1. j) - 1 in
   iterij
    (fun i1 j1 x ->
     for i2 = max 0 (fdim i1) to min (fdip i1) (ni2 - 1) do
      for j2 = max 0 (fdjm j1) to min (fdjp j1) (nj2 - 1) do
       m2.(i2).(j2) <- x
      done;
     done)
    ar2_1;
   m2
;;

let zoom ni nj m =
 let ni1, nj1 = length m in
 resize (ni * ni1) (nj * nj1) m
;;

let diagonal ar2 =
  let _ =
    try check_is_squared ar2
    with Failure ("Array2.check_is_squared false") -> 
      Format.fprintf Format.err_formatter
      "@[Array2.diagonal:@ \
      Fatal Error@ \
      array2 not squared dim_1 = %i while dim_2 = %i @]"
  (dim_1 ar2) (dim_2 ar2);
  assert (false) in 
  let (dim_1, dim_2) = size ar2 in
  let diag = Array.make dim_1 ar2.(0).(0) in
  for i = 0 to dim_1-1 
  do 
    diag.(i) <- ar2.(i).(i)
  done; 
  diag
;;

let read ib =
  not_yet_implemented nam_mod "read"
;;
