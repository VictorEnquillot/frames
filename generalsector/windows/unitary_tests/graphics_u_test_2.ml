(* for toplevel
   #use "graphics_u_test_2.ml";;

*)

Graphics.open_graph " 640x480+500-500";;

let int_l = List_v.int_list_of_first_of_length 1 12;;
let radius_l = List.map (fun i -> i * 20) int_l;;
let radius_reverse_l = List.rev radius_l;;

let color_of_radius rad =
  if (rad mod 40) = 0
  then Graphics.red
  else Graphics.yellow
;;

let color_l = List.map color_of_radius radius_reverse_l;;

let color_circle_of_radius rad =
  let col = color_of_radius rad in
  Graphics.set_color col;
  Graphics.fill_circle 320 240 rad
;;

List.iter color_circle_of_radius radius_reverse_l;;

(************************* 
for i = 12 downto 1 do
  let radius = i * 20 in
  prerr_endline ("radius is " ^ (string_of_int radius));
  set_color (if (i mod 2) = 0 then red else yellow);
  fill_circle 320 240 radius
done;; 

read_line ();;

let hauteur = size_x();;

let largeur = size_y()-1;;

let gris = (rgb 165 165 165);;

(set_color (rgb 255 0 0));; (* ou  (set_color red);; *)


let ouvrir = Graphics.open_graph " 800x600+200-200"
let title = Graphics.set_window_title "Test du module graphique avec Ocaml"
let couleur = Graphics.set_color 16711680
let arc = Graphics.draw_arc 54 12 21 32 45 33
let current_x = Graphics.current_x
let couleur =  Graphics.set_color 00657806
let rectangle = Graphics.draw_rect 221 54 200 200
let ligne = Graphics.rlineto 221 465
let couleur =  Graphics.set_color 00000099
let ellipse = Graphics.draw_ellipse 50 50 111 222
let cercle = Graphics.draw_circle 200 200 50
let epaisseur = Graphics.set_line_width 10
let cercle = Graphics.draw_circle 200 150 50
let size= Graphics.set_text_size 10
let font = Graphics.set_font "times"
let str = Graphics.draw_string "test string"

*)
