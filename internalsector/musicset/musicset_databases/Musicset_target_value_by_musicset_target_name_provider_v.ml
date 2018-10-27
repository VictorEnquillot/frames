(** {3 Musicset_target_value_by_musicset_target_name_provider_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Needs : DFIG:";
   "Current : PFIG:Musicset_target_value_by_musicset_target_name_provider_v";
   "Needed-by :"; 
   "What-is-it :";
   "Invariant :";
 ]
;;

let nam_cod = Management_v.current_module_name (documentation ());;

(** {6 Building.} *)

(*
let build nam_tar =
  if (nam_tar = "current" || nam_tar = "default")
  then Musicset_target_value_v.make "adb1" "T" ["surface"; "perimeter"]
  else 
  begin
      let ib = Scanf.Scanning.stdin in
      Lazy.force (Musicset_target_value_v.read ib)
    end
;;
*)

(** {6 Providing.} *)

let provide nam_tar =
  let nam_fun = "provide" in

  if Register_v.is_stored Musicset_target_value_by_musicset_target_name_register_v.register nam_tar 
  then 
    Musicset_target_value_by_musicset_target_name_register_v.retrieve nam_tar
  else 
    Error_messages_v.print_fatal_error nam_cod nam_fun 
      (Format.sprintf "Musicset_target named >%s< were defined" nam_tar)
      "It is NOT"
      "Define this Musicset_target"
;;
