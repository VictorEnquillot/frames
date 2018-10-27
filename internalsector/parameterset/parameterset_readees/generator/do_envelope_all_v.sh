# bud aopef

do_envelope_as_list_fence_bud_v.sh \
parameter_set_fence_aopef_coefficient pac \
parameter_set_fence_aopef pfa \
parameter_set_fence psf \

do_envelope_as_list_fence_bud_v.sh \
parameter_set_fence_aopef_exponent pae \
parameter_set_fence_aopef pfa \
parameter_set_fence psf \
 
# bud ecppef

do_envelope_as_list_fence_bud_v.sh \
parameter_set_fence_ecppef_coefficient pec \
parameter_set_fence_ecppef pfe \
parameter_set_fence psf \

do_envelope_as_list_fence_bud_v.sh \
parameter_set_fence_ecppef_exponent pee \
parameter_set_fence_ecppef pfe \
parameter_set_fence psf \
 
# trunc aopef

do_envelope_as_list_fence_trunc_up_v.sh \
parameter_set_fence_aopef pfa \
parameter_set_fence psf \

# trunc ecppef

do_envelope_as_list_fence_trunc_up_v.sh \
parameter_set_fence_ecppef pfe \
parameter_set_fence psf \
 
# trunc 

do_envelope_as_list_fence_trunc_up_up_v.sh \
parameter_set_fence psf \
