(** {3 Skeleton_context_symbol_t} *)


(** {6 Typing_for_symbol} *)

type skeleton_context_symbol =
  | Skeleton_context_database_symbol of Skeleton_context_database_symbol_t.skeleton_context_database_symbol
  | Skeleton_context_databox_symbol of Skeleton_context_databox_symbol_t.skeleton_context_databox_symbol
  | Skeleton_context_domain_symbol of Skeleton_context_domain_symbol_t.skeleton_context_domain_symbol
  | Skeleton_context_sector_symbol of Skeleton_context_sector_symbol_t.skeleton_context_sector_symbol
;;


(** Skeleton_context_symbol_t at 14:13:12 on 5 Jan 2017. created by version v2.4 of generator *)



