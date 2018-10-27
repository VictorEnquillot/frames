
(* file: base.ml *)

let main () =
  let window = GWindow.window () in
  window#show ();
  GMain.Main.main ();;

let _ = main ();;

let window = GWindow.window () in
  window#show ();;

 GMain.Main.main ();;


let days = ["Monday"; "Tuesday"; "Wednesday"; "Thursday"; "Friday"; "Saturday";  
  "Sunday"];;

let build packing = 
  let rec loop group = function 
    | [] -> [] 
    | label :: t -> let btn = GButton.radio_button ~label ?group ~packing () in 
      btn :: loop (Some (Gaux.default btn#group ~opt:group)) t 
  in loop None days ;;
