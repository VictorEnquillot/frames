(** {3 Units_v} *)


(** {6 Documenting} *)

let documentation () = 
  [
   "Current : UNI:Units_v";
   "Needs :";
   "Needed-by :";
   "What-is-it :";
   "How-is-it-done :";
   "Example: ";
   "Author : François Colonna 06 décembre 2016 at 11:37:58+01:00";
 ]
;;

let nam_mod = Management_v.current_module_name (documentation ());;

(** {6 Naming} *)

let name = function
  | Units_t.Units_actual eua ->
      Units_actual_v.name eua
  | Units_t.Units_canonical uca ->
      Units_canonical_v.name uca
;;

(** {6 Dimensioning} *)

let dimension = function
  | Units_t.Units_actual eua ->
      Units_actual_v.dimension eua
  | Units_t.Units_canonical uca ->
      Units_canonical_v.dimension uca
;;

(** {6 Kinding} *)

let kind = function
  | Units_t.Units_actual eua ->
      Units_actual_v.kind eua
  | Units_t.Units_canonical uca ->
      Units_canonical_v.kind uca
;;

(** {6 Shortnaming} *)

let shortname = function
  | Units_t.Units_actual eua ->
      Units_actual_v.shortname eua
  | Units_t.Units_canonical uca ->
      Units_canonical_v.shortname uca
;;

(** {6 Longnaming} *)

let longname efu =
  Format.sprintf "Units_t.%s" (String.capitalize (name efu))
;;


(** {6 Fullnaming} *)

let fullname efu =
  Format.sprintf "%s \"%s\"" (longname efu) (dimension efu)
;;

(** {6 Extracting_topson_notleaf_for_symbol} *)

let units_actual_off_units = function
  | Units_t.Units_actual eua -> eua
  | uni -> Error_messages_v.print_fatal_error
      nam_mod "units_actual_off_units"
      "Units_actual"
      (name uni) 
	"Check"
;;

let units_canonical_off_units = function
  | Units_t.Units_canonical uca -> uca
  | uni -> Error_messages_v.print_fatal_error
      nam_mod "units_canonical_off_units"
      "Units_canonical"
      (name uni) 
	"Check"
;;

(** {6 Extracting_grandson_notleaf_for_symbol} *)

let units_actual_action_off_units efu = 
  let eua = units_actual_off_units efu in
    Units_actual_v.units_actual_action_off_units_actual eua
;;

let units_actual_angle_off_units efu = 
  let eua = units_actual_off_units efu in
    Units_actual_v.units_actual_angle_off_units_actual eua
;;

let units_actual_charge_off_units efu = 
  let eua = units_actual_off_units efu in
    Units_actual_v.units_actual_charge_off_units_actual eua
;;

let units_actual_energy_off_units efu = 
  let eua = units_actual_off_units efu in
    Units_actual_v.units_actual_energy_off_units_actual eua
;;

let units_actual_length_off_units efu = 
  let eua = units_actual_off_units efu in
    Units_actual_v.units_actual_length_off_units_actual eua
;;

let units_actual_mass_off_units efu = 
  let eua = units_actual_off_units efu in
    Units_actual_v.units_actual_mass_off_units_actual eua
;;

let units_actual_temperature_off_units efu = 
  let eua = units_actual_off_units efu in
    Units_actual_v.units_actual_temperature_off_units_actual eua
;;

let units_actual_time_off_units efu = 
  let eua = units_actual_off_units efu in
    Units_actual_v.units_actual_time_off_units_actual eua
;;

let units_actual_none_off_units efu = 
  let eua = units_actual_off_units efu in
    Units_actual_v.units_actual_none_off_units_actual eua
;;

let units_canonical_classical_off_units efu = 
  let uca = units_canonical_off_units efu in
    Units_canonical_v.units_canonical_classical_off_units_canonical uca
;;

let units_canonical_quantum_off_units efu = 
  let uca = units_canonical_off_units efu in
    Units_canonical_v.units_canonical_quantum_off_units_canonical uca
;;


(** {6 Querying_topson_bare_for_symbol} *)


(** {6 Querying_topson_ofstring} *)


(** {6 Querying_topson_notleaf_for_symbol} *)

let is_units_actual_off_units = function
  | Units_t.Units_actual _ -> true
  | _ -> false
;;

let is_units_canonical_off_units = function
  | Units_t.Units_canonical _ -> true
  | _ -> false
;;


(** {6 Querying_grandson_bare_for_symbol} *)

let is_kilocalorie_second efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_kilocalorie_second eua
    end
;;

let is_kilojoule_second efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_kilojoule_second eua
    end
;;

let is_planck_constant efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_planck_constant eua
    end
;;

let is_degree efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_degree eua
    end
;;

let is_radian efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_radian eua
    end
;;

let is_coulomb efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_coulomb eua
    end
;;

let is_electron_charge efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_electron_charge eua
    end
;;

let is_hartree efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_hartree eua
    end
;;

let is_calorie efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_calorie eua
    end
;;

let is_electron_volt efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_electron_volt eua
    end
;;

let is_joule efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_joule eua
    end
;;

let is_kilocalorie efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_kilocalorie eua
    end
;;

let is_kilojoule efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_kilojoule eua
    end
;;

let is_angstrom efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_angstrom eua
    end
;;

let is_bohr efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_bohr eua
    end
;;

let is_centimeter efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_centimeter eua
    end
;;

let is_decameter efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_decameter eua
    end
;;

let is_decimeter efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_decimeter eua
    end
;;

let is_foot efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_foot eua
    end
;;

let is_inch efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_inch eua
    end
;;

let is_kilometer efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_kilometer eua
    end
;;

let is_light_year efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_light_year eua
    end
;;

let is_meter efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_meter eua
    end
;;

let is_millimeter efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_millimeter eua
    end
;;

let is_nanometer efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_nanometer eua
    end
;;

let is_yard efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_yard eua
    end
;;

let is_electron_mass efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_electron_mass eua
    end
;;

let is_atomic_mass_unit efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_atomic_mass_unit eua
    end
;;

let is_kilogram efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_kilogram eua
    end
;;

let is_celsius efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_celsius eua
    end
;;

let is_kelvin efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_kelvin eua
    end
;;

let is_atomic_time_unit efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_atomic_time_unit eua
    end
;;

let is_femtosecond efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_femtosecond eua
    end
;;

let is_nanosecond efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_nanosecond eua
    end
;;

let is_picosecond efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_picosecond eua
    end
;;

let is_second efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_second eua
    end
;;

let is_unitless efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
      let eua = units_actual_off_units efu in
      Units_actual_v.is_unitless eua
    end
;;

let is_canonical_classical_action_kilocalorie_second efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_classical_action_kilocalorie_second uca
    end
;;

let is_canonical_classical_angle_radian efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_classical_angle_radian uca
    end
;;

let is_canonical_classical_charge_coulomb efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_classical_charge_coulomb uca
    end
;;

let is_canonical_classical_energy_kilocalorie efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_classical_energy_kilocalorie uca
    end
;;

let is_canonical_classical_length_angstrom efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_classical_length_angstrom uca
    end
;;

let is_canonical_classical_mass_electron_mass efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_classical_mass_electron_mass uca
    end
;;

let is_canonical_classical_temperature_kelvin efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_classical_temperature_kelvin uca
    end
;;

let is_canonical_classical_time_femtosecond efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_classical_time_femtosecond uca
    end
;;

let is_canonical_classical_none efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_classical_none uca
    end
;;

let is_canonical_quantum_action_planck_constant efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_quantum_action_planck_constant uca
    end
;;

let is_canonical_quantum_angle_radian efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_quantum_angle_radian uca
    end
;;

let is_canonical_quantum_charge_electron_charge efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_quantum_charge_electron_charge uca
    end
;;

let is_canonical_quantum_energy_hartree efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_quantum_energy_hartree uca
    end
;;

let is_canonical_quantum_length_bohr efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_quantum_length_bohr uca
    end
;;

let is_canonical_quantum_mass_electron_mass efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_quantum_mass_electron_mass uca
    end
;;

let is_canonical_quantum_temperature_kelvin efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_quantum_temperature_kelvin uca
    end
;;

let is_canonical_quantum_time_femtosecond efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_quantum_time_femtosecond uca
    end
;;

let is_canonical_quantum_none efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
      let uca = units_canonical_off_units efu in
      Units_canonical_v.is_canonical_quantum_none uca
    end
;;


(** {6 Querying_grandson_ofstring} *)


(** {6 Querying_grandson_notleaf_for_symbol} *)

let is_units_actual_action_off_units efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
  let eua = units_actual_off_units efu in
  Units_actual_v.is_units_actual_action_off_units_actual eua
    end
;;

let is_units_actual_angle_off_units efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
  let eua = units_actual_off_units efu in
  Units_actual_v.is_units_actual_angle_off_units_actual eua
    end
;;

let is_units_actual_charge_off_units efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
  let eua = units_actual_off_units efu in
  Units_actual_v.is_units_actual_charge_off_units_actual eua
    end
;;

let is_units_actual_energy_off_units efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
  let eua = units_actual_off_units efu in
  Units_actual_v.is_units_actual_energy_off_units_actual eua
    end
;;

let is_units_actual_length_off_units efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
  let eua = units_actual_off_units efu in
  Units_actual_v.is_units_actual_length_off_units_actual eua
    end
;;

let is_units_actual_mass_off_units efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
  let eua = units_actual_off_units efu in
  Units_actual_v.is_units_actual_mass_off_units_actual eua
    end
;;

let is_units_actual_temperature_off_units efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
  let eua = units_actual_off_units efu in
  Units_actual_v.is_units_actual_temperature_off_units_actual eua
    end
;;

let is_units_actual_time_off_units efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
  let eua = units_actual_off_units efu in
  Units_actual_v.is_units_actual_time_off_units_actual eua
    end
;;

let is_units_actual_none_off_units efu =
  if not (is_units_actual_off_units efu)
  then false
  else
    begin
  let eua = units_actual_off_units efu in
  Units_actual_v.is_units_actual_none_off_units_actual eua
    end
;;

let is_units_canonical_classical_off_units efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
  let uca = units_canonical_off_units efu in
  Units_canonical_v.is_units_canonical_classical_off_units_canonical uca
    end
;;

let is_units_canonical_quantum_off_units efu =
  if not (is_units_canonical_off_units efu)
  then false
  else
    begin
  let uca = units_canonical_off_units efu in
  Units_canonical_v.is_units_canonical_quantum_off_units_canonical uca
    end
;;


(** {6 Upgrading_topson_notleaf_for_symbol} *)

let units_of_units_actual eua = 
  Units_t.Units_actual eua
;;

let units_of_units_canonical uca = 
  Units_t.Units_canonical uca
;;

(** {6 Upgrading_grandson_notleaf_for_symbol} *)

let units_of_units_actual_action eaa = 
  let eua = Units_actual_v.units_actual_of_units_actual_action eaa in
    units_of_units_actual eua
;;

let units_of_units_actual_angle eaa = 
  let eua = Units_actual_v.units_actual_of_units_actual_angle eaa in
    units_of_units_actual eua
;;

let units_of_units_actual_charge eac = 
  let eua = Units_actual_v.units_actual_of_units_actual_charge eac in
    units_of_units_actual eua
;;

let units_of_units_actual_energy eae = 
  let eua = Units_actual_v.units_actual_of_units_actual_energy eae in
    units_of_units_actual eua
;;

let units_of_units_actual_length eal = 
  let eua = Units_actual_v.units_actual_of_units_actual_length eal in
    units_of_units_actual eua
;;

let units_of_units_actual_mass eam = 
  let eua = Units_actual_v.units_actual_of_units_actual_mass eam in
    units_of_units_actual eua
;;

let units_of_units_actual_temperature eat = 
  let eua = Units_actual_v.units_actual_of_units_actual_temperature eat in
    units_of_units_actual eua
;;

let units_of_units_actual_time eat = 
  let eua = Units_actual_v.units_actual_of_units_actual_time eat in
    units_of_units_actual eua
;;

let units_of_units_actual_none ean = 
  let eua = Units_actual_v.units_actual_of_units_actual_none ean in
    units_of_units_actual eua
;;

let units_of_units_canonical_classical ucc = 
  let uca = Units_canonical_v.units_canonical_of_units_canonical_classical ucc in
    units_of_units_canonical uca
;;

let units_of_units_canonical_quantum ucq = 
  let uca = Units_canonical_v.units_canonical_of_units_canonical_quantum ucq in
    units_of_units_canonical uca
;;


(** {6 Abbreviating_topson_bare_for_symbol} *)


(** {6 Abbreviating_topson_ofstring} *)


(** {6 Abbreviating_grandson_bare_for_symbol} *)

let kilocalorie_second = units_of_units_actual Units_actual_v.kilocalorie_second;;

let kilojoule_second = units_of_units_actual Units_actual_v.kilojoule_second;;

let planck_constant = units_of_units_actual Units_actual_v.planck_constant;;

let degree = units_of_units_actual Units_actual_v.degree;;

let radian = units_of_units_actual Units_actual_v.radian;;

let coulomb = units_of_units_actual Units_actual_v.coulomb;;

let electron_charge = units_of_units_actual Units_actual_v.electron_charge;;

let hartree = units_of_units_actual Units_actual_v.hartree;;

let calorie = units_of_units_actual Units_actual_v.calorie;;

let electron_volt = units_of_units_actual Units_actual_v.electron_volt;;

let joule = units_of_units_actual Units_actual_v.joule;;

let kilocalorie = units_of_units_actual Units_actual_v.kilocalorie;;

let kilojoule = units_of_units_actual Units_actual_v.kilojoule;;

let angstrom = units_of_units_actual Units_actual_v.angstrom;;

let bohr = units_of_units_actual Units_actual_v.bohr;;

let centimeter = units_of_units_actual Units_actual_v.centimeter;;

let decameter = units_of_units_actual Units_actual_v.decameter;;

let decimeter = units_of_units_actual Units_actual_v.decimeter;;

let foot = units_of_units_actual Units_actual_v.foot;;

let inch = units_of_units_actual Units_actual_v.inch;;

let kilometer = units_of_units_actual Units_actual_v.kilometer;;

let light_year = units_of_units_actual Units_actual_v.light_year;;

let meter = units_of_units_actual Units_actual_v.meter;;

let millimeter = units_of_units_actual Units_actual_v.millimeter;;

let nanometer = units_of_units_actual Units_actual_v.nanometer;;

let yard = units_of_units_actual Units_actual_v.yard;;

let electron_mass = units_of_units_actual Units_actual_v.electron_mass;;

let atomic_mass_unit = units_of_units_actual Units_actual_v.atomic_mass_unit;;

let kilogram = units_of_units_actual Units_actual_v.kilogram;;

let celsius = units_of_units_actual Units_actual_v.celsius;;

let kelvin = units_of_units_actual Units_actual_v.kelvin;;

let atomic_time_unit = units_of_units_actual Units_actual_v.atomic_time_unit;;

let femtosecond = units_of_units_actual Units_actual_v.femtosecond;;

let nanosecond = units_of_units_actual Units_actual_v.nanosecond;;

let picosecond = units_of_units_actual Units_actual_v.picosecond;;

let second = units_of_units_actual Units_actual_v.second;;

let unitless = units_of_units_actual Units_actual_v.unitless;;

let canonical_classical_action_kilocalorie_second = units_of_units_canonical Units_canonical_v.canonical_classical_action_kilocalorie_second;;

let canonical_classical_angle_radian = units_of_units_canonical Units_canonical_v.canonical_classical_angle_radian;;

let canonical_classical_charge_coulomb = units_of_units_canonical Units_canonical_v.canonical_classical_charge_coulomb;;

let canonical_classical_energy_kilocalorie = units_of_units_canonical Units_canonical_v.canonical_classical_energy_kilocalorie;;

let canonical_classical_length_angstrom = units_of_units_canonical Units_canonical_v.canonical_classical_length_angstrom;;

let canonical_classical_mass_electron_mass = units_of_units_canonical Units_canonical_v.canonical_classical_mass_electron_mass;;

let canonical_classical_temperature_kelvin = units_of_units_canonical Units_canonical_v.canonical_classical_temperature_kelvin;;

let canonical_classical_time_femtosecond = units_of_units_canonical Units_canonical_v.canonical_classical_time_femtosecond;;

let canonical_classical_none = units_of_units_canonical Units_canonical_v.canonical_classical_none;;

let canonical_quantum_action_planck_constant = units_of_units_canonical Units_canonical_v.canonical_quantum_action_planck_constant;;

let canonical_quantum_angle_radian = units_of_units_canonical Units_canonical_v.canonical_quantum_angle_radian;;

let canonical_quantum_charge_electron_charge = units_of_units_canonical Units_canonical_v.canonical_quantum_charge_electron_charge;;

let canonical_quantum_energy_hartree = units_of_units_canonical Units_canonical_v.canonical_quantum_energy_hartree;;

let canonical_quantum_length_bohr = units_of_units_canonical Units_canonical_v.canonical_quantum_length_bohr;;

let canonical_quantum_mass_electron_mass = units_of_units_canonical Units_canonical_v.canonical_quantum_mass_electron_mass;;

let canonical_quantum_temperature_kelvin = units_of_units_canonical Units_canonical_v.canonical_quantum_temperature_kelvin;;

let canonical_quantum_time_femtosecond = units_of_units_canonical Units_canonical_v.canonical_quantum_time_femtosecond;;

let canonical_quantum_none = units_of_units_canonical Units_canonical_v.canonical_quantum_none;;


(** {6 Abbreviating_grandson_ofstring} *)


(** {6 Making_for_bare} *)

let make_of_topson_bare nam =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_bare:Units_v.ml:make_of_topson_bare"
;;


(** {6 Making_for_ofstring} *)

let make_of_topson_ofstring nam s =
  let nam_low = String.lowercase nam in
  match nam_low with
  | _ ->
  failwith "Not_a_topson_ofstring:Units_v.ml:make_of_topson_ofstring"
;;


(** {6 Making_for_notleaf} *)

let make_of_topson_notleaf nam s =
  try units_of_units_actual
      (Units_actual_v.make nam s)
  with Failure "Not_a_units_actual:Units_actual_v.ml:make" ->
  try units_of_units_canonical
      (Units_canonical_v.make nam s)
  with Failure "Not_a_units_canonical:Units_canonical_v.ml:make" ->
  failwith "Not_a_topson_notleaf:Units_v.ml:make_of_topson_notleaf"
;;


(** {6 Making} *)

let make nam s =
  try make_of_topson_bare nam
  with Failure "Not_a_topson_bare:Units_v.ml:make_of_topson_bare" ->
  try make_of_topson_ofstring nam s
  with Failure "Not_a_topson_ofstring:Units_v.ml:make_of_topson_ofstring" ->
  try make_of_topson_notleaf nam s
  with Failure "Not_a_topson_notleaf:Units_v.ml:make_of_topson_notleaf" ->
   let _ =
      Error_messages_v.print_error nam_mod "make"
      (Format.sprintf "strings \"%s\" and \"%s\" represent an existing Units subtype" nam s)
      "it does not exists"
      "Check file Units_v.ml"
    in
    failwith "Not_a_units:Units_v.ml:make"
;;

(** Units_v at 11:52:24 on 9 May 2016. created by version v2.4 of generator *)

let units_off_units_list uni_l =
  try List_v.only_element_of_repeated_list uni_l
  with Failure _ ->
    Error_messages_v.print_fatal_error __LOC__ "units_off_units_list"
      "Units where unique is Units list"
      (Format.sprintf "Units list is :@.    %s"
	 (List_v.name_in_column name uni_l)
      )
      "Check"
;;

let units_of_units_of_units uni_1 uni_2 =
  if uni_1 = uni_2
  then uni_1
  else
    Error_messages_v.print_fatal_error __LOC__ "units_of_units_of_units"
      "both Units were the same"
      (Format.sprintf "Units %s and %s" (name uni_1) (name uni_2))
      "Check"
;;

let units_off_units_duo uni_d =
  let (uni_1, uni_2) = uni_d in
  units_of_units_of_units uni_1 uni_2 
;;

let units_off_units_trio uni_t =
  let (uni_1, uni_2, uni_3) = uni_t in
  let uni = units_of_units_of_units uni_1 uni_2 in 
  units_of_units_of_units uni uni_3 
;;

