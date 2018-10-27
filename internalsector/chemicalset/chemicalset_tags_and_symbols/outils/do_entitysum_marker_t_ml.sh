
category="marker" # modified
. ${UTI}/do_header.sh

# ---- module file extension : t.ml v.ml v.mli ----------------

module_extension="t.ml"
check_module_extension ${module_extension}

# -----------------  Usage category = $1  ---------------------

. do_usage.inc

# -------------- Check input -----------------------------------

check_of_string_of_file ${entitysum} do_for_all_entity_constructor_set

# -------------- Caml Code -------------------------------------

echo "(** {3 A ${Category} for a ${Entitysum}.} *)"
echo ""

# -------------- Modules ----------------------------------------

echo "(** {6 Modules.} *)"
echo ""
echo "module ${Emodats} = ${Emodulets}" > temp_modules
echo "module Mrk_t = Marker_t" >> temp_modules
echo "module Sci_t = Stereochemical_index_t" >> temp_modules
sort -u temp_modules

echo ""

# -------------- Type ------------------------------------------

echo "(** {6 Type.} *)"
echo ""

echo "type ${emodule} = (${Emodats}.${emodules}, Sci_t.stereochemical_index) Mrk_t.marker"
echo ";;"
echo ""

# --------------- Dating ---------------------------------------

. ${UTI}/do_created.sh
echo ""

exit

