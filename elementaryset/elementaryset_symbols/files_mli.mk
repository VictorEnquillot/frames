include files_elementary_symbols_mli.mk

SYMBOLS_T_MLI := $(ELEMENTARY_T_MLI)
 
SYMBOLS_V_MLI := $(subst symbol_t,symbol_v,$(SYMBOLS_T_MLI)) 
SYMBOLS_TV_MLI := $(SYMBOLS_T_MLI) $(SYMBOLS_V_MLI)
 
FILES_MLI := \
$(SYMBOLS_TV_MLI) \
Calculation_name_by_elementary_fence_units_canonical_symbol_provider_v.mli \
Elementary_fence_units_canonical_classical_conversion_v.mli \
Elementary_fence_units_canonical_quantum_conversion_v.mli \
Elementary_fence_units_canonical_conversion_v.mli \
 