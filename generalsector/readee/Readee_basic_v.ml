(** {3 Readee_basic_v} *)

(** {6 Documenting} *)

let documentation () = 
  [
   "Current : DELE:Readee_basic_v";
   "Needs : VELE:Readee_basic_boolean_v";
   "Needs : VELE:Readee_basic_float_v";
   "Needed-by :";
   "What-is-it : Up_coercion of Closure type as Symbol type up_coercion";
   "Remark : It is a CT Stem type";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Readee_basic_t.Readee_basic_boolean pbb -> Readee_basic_boolean_v.name pbb
  | Readee_basic_t.Readee_basic_float pbf -> Readee_basic_float_v.name pbf
  | Readee_basic_t.Readee_basic_integer rbi -> Readee_basic_integer_v.name rbi
  | Readee_basic_t.Readee_basic_string pbs -> Readee_basic_string_v.name pbs
;;

let shortname = function
  | Readee_basic_t.Readee_basic_boolean pbb -> Readee_basic_boolean_v.shortname pbb
  | Readee_basic_t.Readee_basic_float pbf -> Readee_basic_float_v.shortname pbf
  | Readee_basic_t.Readee_basic_integer rbi -> Readee_basic_integer_v.shortname rbi
  | Readee_basic_t.Readee_basic_string pbs -> Readee_basic_string_v.shortname pbs
;;

let string_off = function
  | Readee_basic_t.Readee_basic_boolean pbb -> Readee_basic_boolean_v.string_off pbb
  | Readee_basic_t.Readee_basic_float pbf -> Readee_basic_float_v.string_off pbf
  | Readee_basic_t.Readee_basic_integer rbi -> Readee_basic_integer_v.string_off rbi
  | Readee_basic_t.Readee_basic_string pbs -> Readee_basic_string_v.string_off pbs
;;

let longname pba =
  let cap_nam = String.capitalize (name pba) in
  (Format.sprintf "%s_t.%s %s" cap_nam cap_nam (string_off pba))
;;

let fullname pba = 
  let cap_nam = String.capitalize (name pba) in
  (Format.sprintf "Readee_t.%s %s" cap_nam (longname pba))
;;


(** {6 Coercing up} *)

let readee_basic_of_readee_basic_boolean boo =
  Readee_basic_t.Readee_basic_boolean boo 
;;

let readee_basic_of_readee_basic_float flo =
  Readee_basic_t.Readee_basic_float flo
;;

let readee_basic_of_readee_basic_integer ing =
  Readee_basic_t.Readee_basic_integer ing 
;;

let readee_basic_of_readee_basic_string str =
  Readee_basic_t.Readee_basic_string str 
;;

(** {6 Coercing down} *)

let readee_basic_boolean_off_readee_basic = function
  | Readee_basic_t.Readee_basic_boolean boo -> boo
  | _ -> failwith "Not_a_readee_basic_boolean:Readee_basic_v.boolean_off_readee_basic"
;;

let readee_basic_integer_off_readee_basic = function 
  | Readee_basic_t.Readee_basic_integer ing -> ing
  | _ -> failwith "Not_a_readee_basic_integer:Readee_basic_v.integer_off_readee_basic"
;;

let readee_basic_float_off_readee_basic = function
  | Readee_basic_t.Readee_basic_float flo -> flo
  | _ -> failwith "Not_a_readee_basic_float:Readee_basic_v.float_off_readee_basic"
;;

let readee_basic_string_off_readee_basic = function 
  | Readee_basic_t.Readee_basic_string str -> str
  | _ -> failwith "Not_a_readee_basic_string:Readee_basic_v.string_off_readee_basic"
;;

(** {6 Making_for_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Readee_basic_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Readee_basic_v.ml:make_of_topson_ofstring"
;;

(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  try readee_basic_of_readee_basic_boolean
      (Readee_basic_boolean_v.make nam s)
  with Failure "Not_a_readee_basic_boolean:Readee_basic_boolean_v.ml:make" ->

  try readee_basic_of_readee_basic_float
      (Readee_basic_float_v.make nam s)
  with Failure "Not_a_readee_basic_float:Readee_basic_float_v.ml:make" ->

  try readee_basic_of_readee_basic_integer
      (Readee_basic_integer_v.make nam s)
  with Failure "Not_a_readee_basic_integer:Readee_basic_integer_v.ml:make" ->

  try readee_basic_of_readee_basic_string
      (Readee_basic_string_v.make nam s)
  with Failure "Not_a_readee_basic_string:Readee_basic_string_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Readee_basic_v.ml:make_of_topson_notleaf"
;;


(** {6 Making_for} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Readee_basic_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Readee_basic_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Readee_basic_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error __LOC__ "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Readee_basic subtype" nam s)
      "it does not exists"
      "Check file Readee_basic_v.ml"
    in
    failwith "Not_a_readee_basic:Readee_basic_v.ml:make"
;;


