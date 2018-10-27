(** {3 The functionalities of trail.} *)

(** {6 Making} *)

val make :
    string -> 
      string -> 
	Trail_t.trail ->
	  Trail_t.trail
;;

val make_of_value_of_trail :
    string ->
      Trail_t.trail ->
	Trail_t.trail
;;

(** {6 Querying} *)

val has_of_key_off_trail :
    string ->
      Trail_t.trail ->
	bool
;;

(** {6 Extracting} *)

val value_of_key_off_trail :
    string -> 
      Trail_t.trail ->
	string
;;

val trail_of_key_off_trail :
    string -> 
      Trail_t.trail ->
	Trail_t.trail
;;

val doublet_of_key_off_trail :
    string -> 
      Trail_t.trail ->
	(string * string)
;;

(** {6 Naming} *)

val name :
    Trail_t.trail ->
      string
;;

val replace_of_value_of_key_off_trail :
    string -> 
      string -> 
	Trail_t.trail ->
	  Trail_t.trail
;;

val head_doublet_off_trail :
    Trail_t.trail ->
      (string, string) Doublet_t.doublet 
;;

val head_key_off_trail :
    Trail_t.trail ->
      string 
;;

val head_value_off_trail :
    Trail_t.trail ->
      string 
;;

val has_of_head_key_off_trail :
    string ->
      Trail_t.trail ->
	bool
;;
