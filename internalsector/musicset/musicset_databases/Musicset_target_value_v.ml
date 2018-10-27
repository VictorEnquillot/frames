(** {3 Musicset_target_value_v}  *)

let nam_cod = "Musicset_target_value_v.ml";;


(* let music_what_of_alien_db_name_of_music_name nam_adb nam_fig = *)

(*   let nam_dos = "musicset" in *)
(*   let sym_adb_dos = Database_entity_symbol_v.make "domain" nam_dos in *)
(*   let soi_adb_dos = Domain_symbol_v.domain_index_of_domain_name nam_dos in *)
(*   let key_dos = Tag_v.make sym_adb_dos soi_adb_dos in *)

(*   let key_adb_l = Database_key_list_by_domain_key key_dos in *)
(*   let key_adb = Doublet_list_v.find_if_left *)
(*       (fun a -> Database_entity_symbol_v.name a = nam_adb) *)
(*       key_adb_l *)
(*   in *)

(*   let key_fig = (\* Symbol fully defined from Coordinates here *\) *)
(*     Figure_key_by_music_name_provider_v.provide  *)
(*       nam_fig  *)
(*   in  *)
(*   Key_v.symbol_name key_adb *)
(* ;; *)

(** {6 Making} *)

let make nam_adb wha_fig nam_fig wha_coo uni_coo nam_pro_l = 
  (* if wha_fig = "file defined"  *)
  (* then music_what_of_alien_db_name_of_music_name nam_adb nam_fig    *)
  (* else wha_fig *)


  {
   Musicset_target_value_t.alien_db_name = nam_adb;
   Musicset_target_value_t.music_what = wha_fig;
   Musicset_target_value_t.music_name = nam_fig;
   Musicset_target_value_t.coordinate_what = wha_coo;
   Musicset_target_value_t.coordinate_units = uni_coo;
   Musicset_target_value_t.property_name_list = nam_pro_l;
 }
;;

let alien_db_name_off_target_value tar_val =
  tar_val.Musicset_target_value_t.alien_db_name
;;

let music_name_off_target_value tar_val =
  tar_val.Musicset_target_value_t.music_name
;;

let music_what_off_target_value tar_val =
  tar_val.Musicset_target_value_t.music_what
;;

let coordinate_what_off_target_value tar_val =
  tar_val.Musicset_target_value_t.coordinate_what
;;

let coordinate_units_off_target_value tar_val =
  tar_val.Musicset_target_value_t.coordinate_units
;;

let property_name_list_off_target_value tar_val =
  tar_val.Musicset_target_value_t.property_name_list
;;

let read ib = 
Utilities_v.not_yet_implemented nam_cod "read"
(*
lazy (
  Scanf.bscanf ib "%s %s %s"  
    (fun s_ent s_cat s_cfi -> 
      make (Ens_v.make s_ent) (Cts_v.make s_cat) (Cfs_v.make s_mod) )
 )
*)
;;

let string_of_target_value val_tar =

   let nam_adb = val_tar.Musicset_target_value_t.alien_db_name in
   let wha_fig = val_tar.Musicset_target_value_t.music_what in
   let nam_fig = val_tar.Musicset_target_value_t.music_name in
   let wha_coo = val_tar.Musicset_target_value_t.coordinate_what in
   let uni_coo = val_tar.Musicset_target_value_t.coordinate_units in
   let nam_pro_l = val_tar.Musicset_target_value_t.property_name_list in
 
   Format.sprintf " {@.     alien_db_name = %s@.     music_what = %s@.     music_name = %s@.     coordinate_what = %s@.     coordinate_units = %s@.     property_name_list = @.       %s@.    }"
     nam_adb wha_fig nam_fig wha_coo uni_coo 
     (List_v.name_with_separator Utilities_v.identity "\n  " nam_pro_l)
;; 
