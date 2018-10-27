open Make_test_v;;

testing "Chunk_v";;

(* toplevel 
   #use "Chunk_u_any.ml";; 

*)

(**      

  s--t--u--v 

     a
    / \
   b   c
      /|\
     d e f

*)

let s ="s";;
let t ="t";;
let u ="u";;
let v ="v";;

let t_l = [s; t; u; v];;

let b = Tree_v.make "b" [];;
let d = Tree_v.make "d" [];;
let e = Tree_v.make "e" [];;
let f = Tree_v.make "f" [];;

let c = Tree_v.make "e" [d; e; f];;

let b_t = Tree_v.make "a" [b; c];;

let cld = Chunk_t.Clod "z";;
let brk = Chunk_t.Brunk (Brunk_v.make t_l b_t);;
let log = Chunk_t.Log [brk; cld];;

let cld_2 = Chunk_v.map String.uppercase cld;;
let brk_2 = Chunk_v.map String.uppercase brk;;
let log_2 = Chunk_v.map String.uppercase log;;
 
test_number 1 (
 b_t (* : string Tree_t.tree *)
   =
 Tree_t.Inner ("a",
   [Tree_t.Leaf "b";
    Tree_t.Inner ("e", [Tree_t.Leaf "d"; Tree_t.Leaf "e"; Tree_t.Leaf "f"])])
);;

test_number 2 (
cld (* : string Chunk_t.chunk *)
= 
Chunk_t.Clod "z"
);;

test_number 3 (
 brk (* : string Chunk_t.chunk *)
=
Chunk_t.Brunk (t_l, b_t)
);;

test_number 4 (
Chunk_v.clod_off_chunk cld
=
"z"
);;

test_number 5 (
Chunk_v.clod_off_chunk brk
=
"s"
);;

test_number 6 (
Chunk_v.clod_off_chunk log
=
"s"
);;

test_number 7 (
Chunk_v.branch_off_chunk brk
=
b_t
);;

test_number 8 (
Chunk_v.branch_off_chunk log
=
b_t
);;

test_number 9 (
Chunk_v.brunk_off_chunk brk 
=
(["s"; "t"; "u"; "v"],
 Tree_t.Inner ("a",
  [Tree_t.Leaf "b";
   Tree_t.Inner ("e",
    [Tree_t.Leaf "d"; Tree_t.Leaf "e"; Tree_t.Leaf "f"])]))
);;

test_number 10 (
Chunk_v.brunk_off_chunk log
  =
(["s"; "t"; "u"; "v"],
 Tree_t.Inner ("a",
  [Tree_t.Leaf "b";
   Tree_t.Inner ("e",
    [Tree_t.Leaf "d"; Tree_t.Leaf "e"; Tree_t.Leaf "f"])]))
);;

test_number 11 (
cld_2 (* : string Chunk_t.chunk *)
=
Chunk_t.Clod "Z"
);;

test_number 12 (
brk_2 (* : string Chunk_t.chunk *)
=
Chunk_t.Brunk
 (["S"; "T"; "U"; "V"],
  Tree_t.Inner ("A",
   [Tree_t.Leaf "B";
    Tree_t.Inner ("E",
     [Tree_t.Leaf "D"; Tree_t.Leaf "E"; Tree_t.Leaf "F"])]))
);;

test_number 13 (
log_2 (* : string Chunk_t.chunk *)
=
Chunk_t.Log
 [Chunk_t.Brunk
   (["S"; "T"; "U"; "V"],
    Tree_t.Inner ("A",
     [Tree_t.Leaf "B";
      Tree_t.Inner ("E",
       [Tree_t.Leaf "D"; Tree_t.Leaf "E";
        Tree_t.Leaf "F"])]));
  Chunk_t.Clod "Z"]
);;

test_number 14 (
Chunk_v.map2 (fun s t -> s^":"^t) cld cld_2
=
Chunk_t.Clod "z:Z"
);;

test_number 15 (
Chunk_v.map2 (fun s t -> s^":"^t) brk brk_2
=
Chunk_t.Brunk
 (["s:S"; "t:T"; "u:U"; "v:V"],
  Tree_t.Inner ("a:A",
   [Tree_t.Leaf "b:B";
    Tree_t.Inner ("e:E",
     [Tree_t.Leaf "d:D"; Tree_t.Leaf "e:E";
      Tree_t.Leaf "f:F"])]))
);;

test_number 16 (
Chunk_v.map2 (fun s t -> s^":"^t) log log_2
=
Chunk_t.Log
 [Chunk_t.Brunk
   (["s:S"; "t:T"; "u:U"; "v:V"],
    Tree_t.Inner ("a:A",
     [Tree_t.Leaf "b:B";
      Tree_t.Inner ("e:E",
       [Tree_t.Leaf "d:D"; Tree_t.Leaf "e:E";
        Tree_t.Leaf "f:F"])]));
  Chunk_t.Clod "z:Z"]
);;

(* let nam = Chunk_v.name (fun s -> s ) cld ;; *)

(* test_number 17 ( *)
(* (nam : string ) =  *)
(* "z" *)
(* );; *)

(* let nam =  Chunk_v.name (fun s -> s ) brk ;; *)

(* test_number 18 ( *)
(* (nam : string ) =  *)
(*  "(  [\n  s;t;u;v\n  ], {a,\n  [\n  b {e,\n  [\n  d e f\n  ]}\n  ]})" *)
(* );; *)

(* let nam = Chunk_v.name (fun s -> s ) log;; *)

(* test_number 19 ( *)
(* (nam : string ) =  *)
(* "  [\n  (  [\n  s;t;u;v\n  ], {a,\n  [\n  b {e,\n  [\n  d e f\n  ]}\n  ]}) z\n  ]" *)
(* );; *)
