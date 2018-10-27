PARSER_TREE_BUILDING_U_ML := \
Db1pointsdata_parser_tools_u_any.ml \
Db1pointsdata_parser_structure_u_any.ml \
Db1pointsdata_parser_body_cluster_vertex_u_any.ml \
Db1pointsdata_parser_body_cluster_information_u_any.ml \
Db1pointsdata_parser_u_any.ml \
 
FROM_FILES_MLI := \
$(PARSER_TREE_BUILDING_U_ML) \
 

EXTRA_FILES_ML := \
Db1pointsdata_parser_u_point_a.ml \
Db1pointsdata_parser_u_segment_bc.ml \
Db1pointsdata_parser_u_triangle_isoright.ml \


UNITARY_TESTS_FILES_ML := \
$(FROM_FILES_MLI) \
$(EXTRA_FILES_ML) \

