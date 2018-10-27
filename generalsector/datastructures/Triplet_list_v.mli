val prepend :  'a ->  'b ->  'c ->  ('a, 'b, 'c) Triplet_t.triplet list -> ('a, 'b, 'c) Triplet_t.triplet list
val make : 'a list -> 'b list -> 'c list -> ('a * 'b * 'c) list
val read : 'a -> 'b
val top : 'a list -> 'a
val triplet_off_triplet_list : 'a list -> 'a
val uptriplet_list_off_triplet_list : 'a list -> 'a list
val right_list_off_triplet_list :  ('a, 'b, 'c) Triplet_t.triplet list -> 'c list
val middle_list_off_triplet_list :  ('a, 'b, 'c) Triplet_t.triplet list -> 'b list
val left_list_off_triplet_list :  ('a, 'b, 'c) Triplet_t.triplet list -> 'a list
val left_doublet_list_off_triplet_list :  ('a, 'b, 'c) Triplet_t.triplet list -> ('a, 'b) Doublet_t.doublet list
val right_doublet_list_off_triplet_list :  ('a, 'b, 'c) Triplet_t.triplet list -> ('b, 'c) Doublet_t.doublet list
val triplet_count_of_triplet_list : 'a list -> int
val nth_triplet_of_int_off_triplet_list : int -> 'a list -> 'a
val nth_left_of_int_off_triplet_list : int -> ('a * 'b) list -> 'a
val nth_right_of_int_off_triplet_list : int -> ('a * 'b) list -> 'b
val filter_if_left :  ('a -> bool) -> ('a, 'b, 'c) Triplet_t.triplet list -> ('a, 'b, 'c) Triplet_t.triplet list
val filter_if_middle :  ('a -> bool) ->  ('b, 'a, 'c) Triplet_t.triplet list -> ('b, 'a, 'c) Triplet_t.triplet list
val filter_if_right :  ('a -> bool) ->  ('b, 'c, 'a) Triplet_t.triplet list -> ('b, 'c, 'a) Triplet_t.triplet list
val find_if_left :  ('a -> bool) ->  ('a, 'b, 'c) Triplet_t.triplet list -> ('a, 'b, 'c) Triplet_t.triplet
val find_if_right :  ('a -> bool) ->  ('b, 'c, 'a) Triplet_t.triplet list -> ('b, 'c, 'a) Triplet_t.triplet
val triplet_of_left_off_triplet_list :
  'a -> ('a, 'b, 'c) Triplet_t.triplet list -> ('a, 'b, 'c) Triplet_t.triplet
val triplet_of_right_off_triplet_list :
  'a -> ('b, 'c, 'a) Triplet_t.triplet list -> ('b, 'c, 'a) Triplet_t.triplet
val right_of_left_off_triplet_list :
  'a -> ('a, 'b, 'c) Triplet_t.triplet list -> 'c
val left_of_right_off_triplet_list :
  'a -> ('b, 'c, 'a) Triplet_t.triplet list -> 'b
val triplet_right_list_include_of_left_off_triplet_list :
  'a ->
  ('a, 'b, 'c) Triplet_t.triplet list -> ('a, 'b, 'c) Triplet_t.triplet list
val uptriplet_list_of_left_off_triplet_list :
  'a ->
  ('a, 'b, 'c) Triplet_t.triplet list -> ('a, 'b, 'c) Triplet_t.triplet list
val has_left : 'a -> ('a, 'b, 'c) Triplet_t.triplet list -> bool
val has_right : 'a -> ('b, 'c, 'a) Triplet_t.triplet list -> bool
val map :
  ('a -> 'b) ->
  ('c -> 'd) ->
  ('e -> 'f) ->
  ('a, 'c, 'e) Triplet_t.triplet list -> ('b, 'd, 'f) Triplet_t.triplet list
val iter :
  ('a -> unit) ->
  ('b -> unit) -> ('c -> unit) -> ('a, 'b, 'c) Triplet_t.triplet list -> unit
val list_of_triplet_list :
  ('a -> 'b -> 'c -> 'd) -> ('a * 'b * 'c) list -> 'd list
val name :
  ('a -> string) ->
  ('b -> string) ->
  ('c -> string) -> ('a, 'b, 'c) Triplet_t.triplet list -> string
val name_with_separator :
  ('a -> string) ->
  ('b -> string) ->
  ('c -> string) -> string -> ('a, 'b, 'c) Triplet_t.triplet list -> string
