(** {3 The Value for an Input.}  *)

(** {6 Typing.} *)

type target_value = {
    alien_db_name      : string;          (* db_2 *)
    music_what        : string;          (* Triangle_isoceles_right *)
    music_name        : string;          (* "T" *)
    coordinate_what    : string;          (* "spherical" *)
    coordinate_units   : string;          (* "angstroms" *)
    property_name_list : string list;  (* ["perimeter"; "surface"] *)
}
