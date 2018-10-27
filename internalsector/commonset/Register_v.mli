(** The functuonalities for a Register. *)

val make : 
    int ->
      ('k, 'v) Register_t.register 
;;

val length : ('k, 'v) Register_t.register -> int;;

val is_empty : ('k, 'v) Register_t.register -> bool;;
(*
val clear : 
    ('k, 'v) Register_t.register -> 
      string -> string ->
      unit
;;
*)
val delete : 
    ('k, 'v) Register_t.register ->
      unit
;;

val key_list : 
    ('k, 'v) Register_t.register -> 
      'k list
;;
(** [let k = key_list t;;]

    [t] is a [('k, 'v) Register_t.register].
    [k] is the ['k list] of its keys. *)

val value_list : ('k, 'v) Register_t.register -> 'v list
;;
(** [let v = value_list t;;]

    [t] is a [('k, 'v) Register_t.register].
    [v] is the ['v list] of its values. *)

val entry_list : ('k, 'v) Register_t.register -> ('k * 'v) list
;;
(** [let e = key_list t;;]

    [t] is a [('k, 'v) Register_t.register].
    [e] is the [('k, 'v) list] of its entries 
    and entry is a pair ('k, 'v). *)

val entry_list_of_value : ('k, 'v) Register_t.register -> 'v -> ('k * 'v) list;;

val key_list_of_value : ('k, 'v) Register_t.register -> 'v -> 'k list;;

val value_list_of_value_predicate_of_register : ('v -> bool) -> ('k, 'v) Register_t.register -> 'v list;;

val entry_list_of_value_predicate_of_register : ('v -> bool) -> ('k, 'v) Register_t.register -> ('k * 'v) list;;

val key_list_of_value_predicate_of_register : ('v -> bool) -> ('k, 'v) Register_t.register -> 'k list;;

val is_stored : ('k, 'v) Register_t.register -> 'k -> bool;;

val is_value_stored : ('k, 'v) Register_t.register -> 'v -> bool;;

val store : ('k, 'v) Register_t.register -> 'k -> 'v ->
  unit 
;; 
(** Failure ("Already_stored:Reg_v.store")
    Failure ("Storage_has_failed:Reg_v.store") *)

val store_verbose : ('k, 'v) Register_t.register -> 'k -> 'v -> string -> string -> ('k -> string) -> ('v -> string) -> unit;;

val store_force : ('k, 'v) Register_t.register -> 'k -> 'v ->
  unit 
;; 

val store_with_warning :
      ('k, 'v) Register_t.register ->
	'k -> 
	  'v ->
	    string -> 
	      ('k -> string) ->
		('v -> string) ->
		    unit 
;; 

val retrieve : 
    ('k, 'v) Register_t.register -> 
      'k -> 
	'v 
;;
(** Failure ("Not_stored:Reg_v.retrieve") *)

val string_of_key_list_of_value :
    ('k, 'v) Register_t.register -> 
      'v -> 
	('k -> string) ->
	  string ->
	    string 
;;

val string_list_of_register :
    ('k -> string) ->
      ('v -> string) ->
	('k, 'v) Register_t.register -> 
	  string list
;;

val string_of_register :
    ('k -> string) ->
      ('v -> string) ->
	string ->
	  ('k, 'v) Register_t.register -> 
	    string
;;

val dump : ('k -> string) -> ('v -> string) ->	('k, 'v) Register_t.register -> string;;

val print : ('k -> string) -> ('v -> string) ->	('k, 'v) Register_t.register -> unit;;

val only_key_of_value : ('k, 'v) Register_t.register -> 'v -> 'k;; 
