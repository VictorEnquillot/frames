open Make_test_v;;

(*

 #load "graphics.cma";;

 *)


testing "Graphics_v with
   graphics_u_alain.ml";;

(* toplevel 
  
 #use "graphics_u_alain.ml";; 

*)

let largeur_fenetre = 800;;

let hauteur_fenetre = 600;;

let emplacement_gauche = 150;;

let emplacement_haut = 50;;


test_number 1 (
Graphics_v.open_graph " 800x600+50-50"

=
()
);;

