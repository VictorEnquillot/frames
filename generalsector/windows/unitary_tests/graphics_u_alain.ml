open Make_test_v;;

testing "Graphics_v with
   graphics_u_alain.ml";;

(* toplevel 
 #use "graphics_u_alain.ml";; 

*)

let largeur_fenetre = 800;;
let hauteur_fenetre = 600;;
let emplacement_gauche = 150;;
let emplacement_haut = 50;;

let str = Format.sprintf " %ix%i+%i-%i" largeur_fenetre hauteur_fenetre emplacement_gauche  emplacement_haut;;

Graphics_v.open_graph str;;

test_number 1 (
true
);;

