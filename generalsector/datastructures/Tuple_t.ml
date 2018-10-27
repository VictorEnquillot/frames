type 'a tuple =
  | Empty 
  | Singlet of 'a Singlet_t.singlet
  | Uno of 'a Uno_t.uno
  | Duo of 'a Duo_t.duo
  | Trio of 'a Trio_t.trio
  | Quatuor of 'a Quatuor_t.quatuor
  | Trio_duo of ('a Trio_t.trio) Duo_t.duo
  | Duo_trio of ('a Duo_t.duo) Trio_t.trio
;;
