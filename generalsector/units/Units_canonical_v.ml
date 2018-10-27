(** {3 Units_canonical_v} *)


(** {6 Documenting} *)

let documentation () = 
  [
   "Current : UNI:Units_canonical_v";
   "Needed-by :";
   "What-is-it :";
   "How-is-it-done :";
   "Example: ";
   "Author : François Colonna 29 novembre 2016 at 14:04:42+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Units_canonical_t.Units_canonical_classical ucc ->
      Units_canonical_classical_v.name ucc
  | Units_canonical_t.Units_canonical_quantum ucq ->
      Units_canonical_quantum_v.name ucq
;;


(** {6 Dimensioning} *)

let dimension = function
  | Units_canonical_t.Units_canonical_classical ucc ->
      Units_canonical_classical_v.dimension ucc
  | Units_canonical_t.Units_canonical_quantum ucq ->
      Units_canonical_quantum_v.dimension ucq
;;

(** {6 Shortnaming} *)

let shortname = function
  | Units_canonical_t.Units_canonical_classical ucc ->
      Units_canonical_classical_v.shortname ucc
  | Units_canonical_t.Units_canonical_quantum ucq ->
      Units_canonical_quantum_v.shortname ucq
;;

(** {6 Kinding} *)

let kind = function
  | Units_canonical_t.Units_canonical_classical ucc ->
      Units_canonical_classical_v.kind ucc
  | Units_canonical_t.Units_canonical_quantum ucq ->
      Units_canonical_quantum_v.kind ucq
;;

(** {6 Longnaming} *)

let longname uca =
  Format.sprintf "Units_canonical_t.%s" (String.capitalize (name uca))
;;


(** {6 Fullnaming} *)

let fullname uca =
  Format.sprintf "%s \"%s\"" (longname uca) (dimension uca)
;;


(** {6 Extracting_topson_notleaf_for_symbol} *)

let units_canonical_classical_off_units_canonical = function
  | Units_canonical_t.Units_canonical_classical ucc -> ucc
  | uca -> Error_messages_v.print_fatal_error
	nam_mod "units_canonical_classical_off_units_canonical"
	"Units_canonical_classical"
	(name uca) "check"
;;

let units_canonical_quantum_off_units_canonical = function
  | Units_canonical_t.Units_canonical_quantum ucq -> ucq
  | uca -> Error_messages_v.print_fatal_error
	nam_mod "units_canonical_quantum_off_units_canonical"
	"Units_canonical_quantum"
	(name uca) "check"
;;


(** {6 Extracting_grandson_notleaf_for_symbol} *)


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_units_canonical_classical_off_units_canonical = function
  | Units_canonical_t.Units_canonical_classical _ -> true
  | _ -> false
;;

let is_units_canonical_quantum_off_units_canonical = function
  | Units_canonical_t.Units_canonical_quantum _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_canonical_classical_action_kilocalorie_second uca =
  if not (is_units_canonical_classical_off_units_canonical uca)
  then false
  else
    begin
      let ucc = units_canonical_classical_off_units_canonical uca in
      Units_canonical_classical_v.is_canonical_classical_action_kilocalorie_second ucc
    end
;;

let is_canonical_classical_angle_radian uca =
  if not (is_units_canonical_classical_off_units_canonical uca)
  then false
  else
    begin
      let ucc = units_canonical_classical_off_units_canonical uca in
      Units_canonical_classical_v.is_canonical_classical_angle_radian ucc
    end
;;

let is_canonical_classical_charge_coulomb uca =
  if not (is_units_canonical_classical_off_units_canonical uca)
  then false
  else
    begin
      let ucc = units_canonical_classical_off_units_canonical uca in
      Units_canonical_classical_v.is_canonical_classical_charge_coulomb ucc
    end
;;

let is_canonical_classical_energy_kilocalorie uca =
  if not (is_units_canonical_classical_off_units_canonical uca)
  then false
  else
    begin
      let ucc = units_canonical_classical_off_units_canonical uca in
      Units_canonical_classical_v.is_canonical_classical_energy_kilocalorie ucc
    end
;;

let is_canonical_classical_length_angstrom uca =
  if not (is_units_canonical_classical_off_units_canonical uca)
  then false
  else
    begin
      let ucc = units_canonical_classical_off_units_canonical uca in
      Units_canonical_classical_v.is_canonical_classical_length_angstrom ucc
    end
;;

let is_canonical_classical_mass_electron_mass uca =
  if not (is_units_canonical_classical_off_units_canonical uca)
  then false
  else
    begin
      let ucc = units_canonical_classical_off_units_canonical uca in
      Units_canonical_classical_v.is_canonical_classical_mass_electron_mass ucc
    end
;;

let is_canonical_classical_temperature_kelvin uca =
  if not (is_units_canonical_classical_off_units_canonical uca)
  then false
  else
    begin
      let ucc = units_canonical_classical_off_units_canonical uca in
      Units_canonical_classical_v.is_canonical_classical_temperature_kelvin ucc
    end
;;

let is_canonical_classical_time_femtosecond uca =
  if not (is_units_canonical_classical_off_units_canonical uca)
  then false
  else
    begin
      let ucc = units_canonical_classical_off_units_canonical uca in
      Units_canonical_classical_v.is_canonical_classical_time_femtosecond ucc
    end
;;

let is_canonical_classical_none uca =
  if not (is_units_canonical_classical_off_units_canonical uca)
  then false
  else
    begin
      let ucc = units_canonical_classical_off_units_canonical uca in
      Units_canonical_classical_v.is_canonical_classical_none ucc
    end
;;

let is_canonical_quantum_action_planck_constant uca =
  if not (is_units_canonical_quantum_off_units_canonical uca)
  then false
  else
    begin
      let ucq = units_canonical_quantum_off_units_canonical uca in
      Units_canonical_quantum_v.is_canonical_quantum_action_planck_constant ucq
    end
;;

let is_canonical_quantum_angle_radian uca =
  if not (is_units_canonical_quantum_off_units_canonical uca)
  then false
  else
    begin
      let ucq = units_canonical_quantum_off_units_canonical uca in
      Units_canonical_quantum_v.is_canonical_quantum_angle_radian ucq
    end
;;

let is_canonical_quantum_charge_electron_charge uca =
  if not (is_units_canonical_quantum_off_units_canonical uca)
  then false
  else
    begin
      let ucq = units_canonical_quantum_off_units_canonical uca in
      Units_canonical_quantum_v.is_canonical_quantum_charge_electron_charge ucq
    end
;;

let is_canonical_quantum_energy_hartree uca =
  if not (is_units_canonical_quantum_off_units_canonical uca)
  then false
  else
    begin
      let ucq = units_canonical_quantum_off_units_canonical uca in
      Units_canonical_quantum_v.is_canonical_quantum_energy_hartree ucq
    end
;;

let is_canonical_quantum_length_bohr uca =
  if not (is_units_canonical_quantum_off_units_canonical uca)
  then false
  else
    begin
      let ucq = units_canonical_quantum_off_units_canonical uca in
      Units_canonical_quantum_v.is_canonical_quantum_length_bohr ucq
    end
;;

let is_canonical_quantum_mass_electron_mass uca =
  if not (is_units_canonical_quantum_off_units_canonical uca)
  then false
  else
    begin
      let ucq = units_canonical_quantum_off_units_canonical uca in
      Units_canonical_quantum_v.is_canonical_quantum_mass_electron_mass ucq
    end
;;

let is_canonical_quantum_temperature_kelvin uca =
  if not (is_units_canonical_quantum_off_units_canonical uca)
  then false
  else
    begin
      let ucq = units_canonical_quantum_off_units_canonical uca in
      Units_canonical_quantum_v.is_canonical_quantum_temperature_kelvin ucq
    end
;;

let is_canonical_quantum_time_femtosecond uca =
  if not (is_units_canonical_quantum_off_units_canonical uca)
  then false
  else
    begin
      let ucq = units_canonical_quantum_off_units_canonical uca in
      Units_canonical_quantum_v.is_canonical_quantum_time_femtosecond ucq
    end
;;

let is_canonical_quantum_none uca =
  if not (is_units_canonical_quantum_off_units_canonical uca)
  then false
  else
    begin
      let ucq = units_canonical_quantum_off_units_canonical uca in
      Units_canonical_quantum_v.is_canonical_quantum_none ucq
    end
;;


(** {6 Querying_grandson_ofstring} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let units_canonical_of_units_canonical_classical ucc = 
  Units_canonical_t.Units_canonical_classical ucc
;;

let units_canonical_of_units_canonical_quantum ucq = 
  Units_canonical_t.Units_canonical_quantum ucq
;;


(** {6 Upgrading_grandson_notleaf_for_symbol} *)


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let canonical_classical_action_kilocalorie_second = units_canonical_of_units_canonical_classical Units_canonical_classical_v.canonical_classical_action_kilocalorie_second;;

let canonical_classical_angle_radian = units_canonical_of_units_canonical_classical Units_canonical_classical_v.canonical_classical_angle_radian;;

let canonical_classical_charge_coulomb = units_canonical_of_units_canonical_classical Units_canonical_classical_v.canonical_classical_charge_coulomb;;

let canonical_classical_energy_kilocalorie = units_canonical_of_units_canonical_classical Units_canonical_classical_v.canonical_classical_energy_kilocalorie;;

let canonical_classical_length_angstrom = units_canonical_of_units_canonical_classical Units_canonical_classical_v.canonical_classical_length_angstrom;;

let canonical_classical_mass_electron_mass = units_canonical_of_units_canonical_classical Units_canonical_classical_v.canonical_classical_mass_electron_mass;;

let canonical_classical_temperature_kelvin = units_canonical_of_units_canonical_classical Units_canonical_classical_v.canonical_classical_temperature_kelvin;;

let canonical_classical_time_femtosecond = units_canonical_of_units_canonical_classical Units_canonical_classical_v.canonical_classical_time_femtosecond;;

let canonical_classical_none = units_canonical_of_units_canonical_classical Units_canonical_classical_v.canonical_classical_none;;

let canonical_quantum_action_planck_constant = units_canonical_of_units_canonical_quantum Units_canonical_quantum_v.canonical_quantum_action_planck_constant;;

let canonical_quantum_angle_radian = units_canonical_of_units_canonical_quantum Units_canonical_quantum_v.canonical_quantum_angle_radian;;

let canonical_quantum_charge_electron_charge = units_canonical_of_units_canonical_quantum Units_canonical_quantum_v.canonical_quantum_charge_electron_charge;;

let canonical_quantum_energy_hartree = units_canonical_of_units_canonical_quantum Units_canonical_quantum_v.canonical_quantum_energy_hartree;;

let canonical_quantum_length_bohr = units_canonical_of_units_canonical_quantum Units_canonical_quantum_v.canonical_quantum_length_bohr;;

let canonical_quantum_mass_electron_mass = units_canonical_of_units_canonical_quantum Units_canonical_quantum_v.canonical_quantum_mass_electron_mass;;

let canonical_quantum_temperature_kelvin = units_canonical_of_units_canonical_quantum Units_canonical_quantum_v.canonical_quantum_temperature_kelvin;;

let canonical_quantum_time_femtosecond = units_canonical_of_units_canonical_quantum Units_canonical_quantum_v.canonical_quantum_time_femtosecond;;

let canonical_quantum_none = units_canonical_of_units_canonical_quantum Units_canonical_quantum_v.canonical_quantum_none;;


(** {6 Abbreviating_grandson_ofstring} *)


(** {6 Making_for_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Units_canonical_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_canonical_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  try units_canonical_of_units_canonical_classical
      (Units_canonical_classical_v.make nam s)
  with Failure "Not_a_units_canonical_classical:Units_canonical_classical_v.ml:make" ->
  try units_canonical_of_units_canonical_quantum
      (Units_canonical_quantum_v.make nam s)
  with Failure "Not_a_units_canonical_quantum:Units_canonical_quantum_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Units_canonical_v.ml:make_of_topson_notleaf"
;;


(** {6 Making} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_canonical_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_canonical_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_canonical_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_mod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units_canonical subtype" nam s)
      "it does not exists"
      "Check file Units_canonical_v.ml"
    in
    failwith "Not_a_units_canonical:Units_canonical_v.ml:make"
;;


(** Units_canonical_v at 11:52:26 on 9 May 2016. created by version v2.4 of generator *)



