HEADER(Module SI-Prefix)
-module(si_prefix).
-export([to_pico/1,  to_nano/1,
         to_micro/1, to_mili/1,
         to_centi/1, to_deci/1,
         to_deka/1,  to_hecto/1,
         to_kilo/1,  to_mega/1,
         to_giga/1,  to_tera/1]).

SUBSECTION(Includes)
-include_lib("eunit/include/eunit.hrl").

MAINSECTION(Define Deka)
to_deka({tera, N}) ->
  {deka, N*math:pow(10,11)};
to_deka({giga, N}) ->
  {deka, N*math:pow(10,8)};
to_deka({mega, N}) ->
  {deka, N*math:pow(10,5)};
to_deka({kilo, N}) ->
  {deka, N*math:pow(10,2)};
to_deka({hecto, N}) ->
  {deka, N*math:pow(10,1)};
to_deka({deka, N}) ->
  {deka, N};
to_deka({deci, N}) ->
  {deka, N*math:pow(10,-2)};
to_deka({centi, N}) ->
  {deka, N*math:pow(10,-3)};
to_deka({mili, N}) ->
  {deka, N*math:pow(10,-4)};
to_deka({micro, N}) ->
  {deka, N*math:pow(10,-7)};
to_deka({nano, N}) ->
  {deka, N*math:pow(10,-10)};
to_deka({pico, N}) ->
  {deka, N*math:pow(10,-13)};
to_deka(N) ->
  {deka, N*math:pow(10,-1)}.

SUBSECTION(Define Hecto)
to_hecto({tera, N}) ->
  {hecto, N*math:pow(10,10)};
to_hecto({giga, N}) ->
  {hecto, N*math:pow(10,7)};
to_hecto({mega, N}) ->
  {hecto, N*math:pow(10,4)};
to_hecto({kilo, N}) ->
  {hecto, N*math:pow(10,1)};
to_hecto({hecto, N}) ->
  {hecto, N};
to_hecto({deka, N}) ->
  {hecto, N*math:pow(10,-1)};
to_hecto({deci, N}) ->
  {hecto, N*math:pow(10,-3)};
to_hecto({centi, N}) ->
  {hecto, N*math:pow(10,-4)};
to_hecto({mili, N}) ->
  {hecto, N*math:pow(10,-5)};
to_hecto({micro, N}) ->
  {hecto, N*math:pow(10,-8)};
to_hecto({nano, N}) ->
  {hecto, N*math:pow(10,-11)};
to_hecto({pico, N}) ->
  {hecto, N*math:pow(10,-14)};
to_hecto(N) ->
  {hecto, N*math:pow(10,-2)}.

SUBSECTION(Define Kilo)
to_kilo({tera, N}) ->
  {kilo, N*math:pow(10,9)};
to_kilo({giga, N}) ->
  {kilo, N*math:pow(10,6)};
to_kilo({mega, N}) ->
  {kilo, N*math:pow(10,3)};
to_kilo({kilo, N}) ->
  {kilo, N};
to_kilo({hecto, N}) ->
  {kilo, N*math:pow(10,-1)};
to_kilo({deka, N}) ->
  {kilo, N*math:pow(10,-2)};
to_kilo({deci, N}) ->
  {kilo, N*math:pow(10,-4)};
to_kilo({centi, N}) ->
  {kilo, N*math:pow(10,-5)};
to_kilo({mili, N}) ->
  {kilo, N*math:pow(10,-6)};
to_kilo({micro, N}) ->
  {kilo, N*math:pow(10,-9)};
to_kilo({nano, N}) ->
  {kilo, N*math:pow(10,-12)};
to_kilo({pico, N}) ->
  {kilo, N*math:pow(10,-15)};
to_kilo(N) ->
  {kilo, N*math:pow(10,-3)}.

SUBSECTION(Define Mega)
to_mega({tera, N}) ->
  {mega, N*math:pow(10,6)};
to_mega({giga, N}) ->
  {mega, N*math:pow(10,3)};
to_mega({mega, N}) ->
  {mega, N};
to_mega({kilo, N}) ->
  {mega, N*math:pow(10,-3)};
to_mega({hecto, N}) ->
  {mega, N*math:pow(10,-4)};
to_mega({deka, N}) ->
  {mega, N*math:pow(10,-5)};
to_mega({deci, N}) ->
  {mega, N*math:pow(10,-7)};
to_mega({centi, N}) ->
  {mega, N*math:pow(10,-8)};
to_mega({mili, N}) ->
  {mega, N*math:pow(10,-9)};
to_mega({micro, N}) ->
  {mega, N*math:pow(10,-12)};
to_mega({nano, N}) ->
  {mega, N*math:pow(10,-15)};
to_mega({pico, N}) ->
  {mega, N*math:pow(10,-18)};
to_mega(N) ->
  {mega, N*math:pow(10,-6)}.

SUBSECTION(Define Giga)
to_giga({tera, N}) ->
  {giga, N*math:pow(10,3)};
to_giga({giga, N}) ->
  {giga, N};
to_giga({mega, N}) ->
  {giga, N*math:pow(10,-3)};
to_giga({kilo, N}) ->
  {giga, N*math:pow(10,-6)};
to_giga({hecto, N}) ->
  {giga, N*math:pow(10,-7)};
to_giga({deka, N}) ->
  {giga, N*math:pow(10,-8)};
to_giga({deci, N}) ->
  {giga, N*math:pow(10,-10)};
to_giga({centi, N}) ->
  {giga, N*math:pow(10,-11)};
to_giga({mili, N}) ->
  {giga, N*math:pow(10,-12)};
to_giga({micro, N}) ->
  {giga, N*math:pow(10,-15)};
to_giga({nano, N}) ->
  {giga, N*math:pow(10,-18)};
to_giga({pico, N}) ->
  {giga, N*math:pow(10,-21)};
to_giga(N) ->
  {giga, N*math:pow(10,-9)}.

SUBSECTION(Define Tera)
to_tera({tera, N}) ->
  {tera, N};
to_tera({giga, N}) ->
  {tera, N*math:pow(10,-3)};
to_tera({mega, N}) ->
  {tera, N*math:pow(10,-6)};
to_tera({kilo, N}) ->
  {tera, N*math:pow(10,-9)};
to_tera({hecto, N}) ->
  {tera, N*math:pow(10,-10)};
to_tera({deka, N}) ->
  {tera, N*math:pow(10,-11)};
to_tera({deci, N}) ->
  {tera, N*math:pow(10,-13)};
to_tera({centi, N}) ->
  {tera, N*math:pow(10,-14)};
to_tera({mili, N}) ->
  {tera, N*math:pow(10,-15)};
to_tera({micro, N}) ->
  {tera, N*math:pow(10,-18)};
to_tera({nano, N}) ->
  {tera, N*math:pow(10,-21)};
to_tera({pico, N}) ->
  {tera, N*math:pow(10,-24)};
to_tera(N) ->
  {tera, N*math:pow(10,-12)}.

SUBSECTION(Define Deci)
to_deci({pico, N}) ->
  {deci, N*math:pow(10,-11)};
to_deci({nano, N}) ->
  {deci, N*math:pow(10,-8)};
to_deci({micro, N}) ->
  {deci, N*math:pow(10,-5)};
to_deci({mili, N}) ->
  {deci, N*math:pow(10,-2)};
to_deci({centi, N}) ->
  {deci, N*math:pow(10,-1)};
to_deci({deci, N}) ->
  {deci, N};
to_deci({deka, N}) ->
  {deci, N*math:pow(10,2)};
to_deci({hecto, N}) ->
  {deci, N*math:pow(10,3)};
to_deci({kilo, N}) ->
  {deci, N*math:pow(10,4)};
to_deci({mega, N}) ->
  {deci, N*math:pow(10,7)};
to_deci({giga, N}) ->
  {deci, N*math:pow(10,10)};
to_deci({tera, N}) ->
  {deci, N*math:pow(10,13)};
to_deci(N) ->
  {deci, N*math:pow(10,1)}.

SUBSECTION(Define Centi)
to_centi({pico, N}) ->
  {centi, N*math:pow(10,-10)};
to_centi({nano, N}) ->
  {centi, N*math:pow(10,-7)};
to_centi({micro, N}) ->
  {centi, N*math:pow(10,-4)};
to_centi({mili, N}) ->
  {centi, N*math:pow(10,-1)};
to_centi({centi, N}) ->
  {centi, N};
to_centi({deci, N}) ->
  {centi, N*math:pow(10,1)};
to_centi({deka, N}) ->
  {centi, N*math:pow(10,3)};
to_centi({hecto, N}) ->
  {centi, N*math:pow(10,4)};
to_centi({kilo, N}) ->
  {centi, N*math:pow(10,5)};
to_centi({mega, N}) ->
  {centi, N*math:pow(10,8)};
to_centi({giga, N}) ->
  {centi, N*math:pow(10,11)};
to_centi({tera, N}) ->
  {centi, N*math:pow(10,14)};
to_centi(N) ->
  {centi, N*math:pow(10,2)}.

SUBSECTION(Define Mili)
to_mili({pico, N}) ->
  {mili, N*math:pow(10,-9)};
to_mili({nano, N}) ->
  {mili, N*math:pow(10,-6)};
to_mili({micro, N}) ->
  {mili, N*math:pow(10,-3)};
to_mili({mili, N}) ->
  {mili, N};
to_mili({centi, N}) ->
  {mili, N*math:pow(10,1)};
to_mili({deci, N}) ->
  {mili, N*math:pow(10,2)};
to_mili({deka, N}) ->
  {mili, N*math:pow(10,4)};
to_mili({hecto, N}) ->
  {mili, N*math:pow(10,5)};
to_mili({kilo, N}) ->
  {mili, N*math:pow(10,6)};
to_mili({mega, N}) ->
  {mili, N*math:pow(10,9)};
to_mili({giga, N}) ->
  {mili, N*math:pow(10,12)};
to_mili({tera, N}) ->
  {mili, N*math:pow(10,15)};
to_mili(N) ->
  {mili, N*math:pow(10,3)}.

SUBSECTION(Define Micro)
to_micro({pico, N}) ->
  {micro, N*math:pow(10,-6)};
to_micro({nano, N}) ->
  {micro, N*math:pow(10,-3)};
to_micro({micro, N}) ->
  {micro, N};
to_micro({mili, N}) ->
  {micro, N*math:pow(10,3)};
to_micro({centi, N}) ->
  {micro, N*math:pow(10,4)};
to_micro({deci, N}) ->
  {micro, N*math:pow(10,5)};
to_micro({deka, N}) ->
  {micro, N*math:pow(10,7)};
to_micro({hecto, N}) ->
  {micro, N*math:pow(10,8)};
to_micro({kilo, N}) ->
  {micro, N*math:pow(10,9)};
to_micro({mega, N}) ->
  {micro, N*math:pow(10,12)};
to_micro({giga, N}) ->
  {micro, N*math:pow(10,15)};
to_micro({tera, N}) ->
  {micro, N*math:pow(10,18)};
to_micro(N) ->
  {micro, N*math:pow(10,6)}.

SUBSECTION(Define Nano)
to_nano({pico, N}) ->
  {nano, N*math:pow(10,-3)};
to_nano({nano, N}) ->
  {nano, N};
to_nano({micro, N}) ->
  {nano, N*math:pow(10,3)};
to_nano({mili, N}) ->
  {nano, N*math:pow(10,6)};
to_nano({centi, N}) ->
  {nano, N*math:pow(10,7)};
to_nano({deci, N}) ->
  {nano, N*math:pow(10,8)};
to_nano({deka, N}) ->
  {nano, N*math:pow(10,10)};
to_nano({hecto, N}) ->
  {nano, N*math:pow(10,11)};
to_nano({kilo, N}) ->
  {nano, N*math:pow(10,12)};
to_nano({mega, N}) ->
  {nano, N*math:pow(10,15)};
to_nano({giga, N}) ->
  {nano, N*math:pow(10,18)};
to_nano({tera, N}) ->
  {nano, N*math:pow(10,21)};
to_nano(N) ->
  {nano, N*math:pow(10,9)}.

SUBSECTION(Define Pico)
to_pico({pico, N}) ->
  {pico, N};
to_pico({nano, N}) ->
  {pico, N*math:pow(10,3)};
to_pico({micro, N}) ->
  {pico, N*math:pow(10,6)};
to_pico({mili, N}) ->
  {pico, N*math:pow(10,9)};
to_pico({centi, N}) ->
  {pico, N*math:pow(10,10)};
to_pico({deci, N}) ->
  {pico, N*math:pow(10,11)};
to_pico({deka, N}) ->
  {pico, N*math:pow(10,13)};
to_pico({hecto, N}) ->
  {pico, N*math:pow(10,14)};
to_pico({kilo, N}) ->
  {pico, N*math:pow(10,15)};
to_pico({mega, N}) ->
  {pico, N*math:pow(10,18)};
to_pico({giga, N}) ->
  {pico, N*math:pow(10,21)};
to_pico({tera, N}) ->
  {pico, N*math:pow(10,24)};
to_pico(N) ->
  {pico, N*math:pow(10,12)}.

MAINSECTION(Test Nano)
to_nano_test() ->
  ?assert(to_nano({tera, 1.0}) =:= {nano, 1000000000000000000000.0}),
  ?assert(to_nano({giga, 1.0}) =:= {nano, 1000000000000000000.0}),
  ?assert(to_nano({mega, 1.0}) =:= {nano, 1000000000000000.0}),
  ?assert(to_nano({kilo, 1.0}) =:= {nano, 1000000000000.0}),
  ?assert(to_nano({hecto, 1.0}) =:= {nano, 100000000000.0}),
  ?assert(to_nano({deka, 1.0}) =:= {nano, 10000000000.0}),
  ?assert(to_nano(1.0) =:= {nano, 1000000000.0}),
  ?assert(to_nano({deci, 1.0}) =:= {nano, 100000000.0}),
  ?assert(to_nano({centi, 1.0}) =:= {nano, 10000000.0}),
  ?assert(to_nano({mili, 1.0}) =:= {nano, 1000000.0}),
  ?assert(to_nano({micro, 1.0}) =:= {nano, 1000.0}),
  ?assert(to_nano({nano, 1.0}) =:= {nano, 1.0}),
  ?assert(to_nano({pico, 1000.0}) =:= {nano, 1.0}).

SUBSECTION(Test Micro)
to_micro_test() ->
  ?assert(to_micro({tera, 1.0}) =:= {micro, 1000000000000000000.0}),
  ?assert(to_micro({giga, 1.0}) =:= {micro, 1000000000000000.0}),
  ?assert(to_micro({mega, 1.0}) =:= {micro, 1000000000000.0}),
  ?assert(to_micro({kilo, 1.0}) =:= {micro, 1000000000.0}),
  ?assert(to_micro({hecto, 1.0}) =:= {micro, 100000000.0}),
  ?assert(to_micro({deka, 1.0}) =:= {micro, 10000000.0}),
  ?assert(to_micro(1.0) =:= {micro, 1000000.0}),
  ?assert(to_micro({deci, 1.0}) =:= {micro, 100000.0}),
  ?assert(to_micro({centi, 1.0}) =:= {micro, 10000.0}),
  ?assert(to_micro({mili, 1.0}) =:= {micro, 1000.0}),
  ?assert(to_micro({micro, 1.0}) =:= {micro, 1.0}),
  ?assert(to_micro({nano, 1000.0}) =:= {micro, 1.0}),
  ?assert(to_micro({pico, 1000000.0}) =:= {micro, 1.0}).

SUBSECTION(Test Mili)
to_mili_test() ->
  ?assert(to_mili({tera, 1.0}) =:= {mili, 1000000000000000.0}),
  ?assert(to_mili({giga, 1.0}) =:= {mili, 1000000000000.0}),
  ?assert(to_mili({mega, 1.0}) =:= {mili, 1000000000.0}),
  ?assert(to_mili({kilo, 1.0}) =:= {mili, 1000000.0}),
  ?assert(to_mili({hecto, 1.0}) =:= {mili, 100000.0}),
  ?assert(to_mili({deka, 1.0}) =:= {mili, 10000.0}),
  ?assert(to_mili(1.0) =:= {mili, 1000.0}),
  ?assert(to_mili({deci, 1.0}) =:= {mili, 100.0}),
  ?assert(to_mili({centi, 1.0}) =:= {mili, 10.0}),
  ?assert(to_mili({mili, 1.0}) =:= {mili, 1.0}),
  ?assert(to_mili({micro, 10.0}) =:= {mili, 0.01}),
  ?assert(to_mili({nano, 1000000.0}) =:= {mili, 1.0}),
  ?assert(to_mili({pico, 1000000000.0}) =:= {mili, 1.0}).

SUBSECTION(Test Centi)
to_centi_test() ->
  ?assert(to_centi({tera, 1.0}) =:= {centi, 100000000000000.0}),
  ?assert(to_centi({giga, 1.0}) =:= {centi, 100000000000.0}),
  ?assert(to_centi({mega, 1.0}) =:= {centi, 100000000.0}),
  ?assert(to_centi({kilo, 1.0}) =:= {centi, 100000.0}),
  ?assert(to_centi({hecto, 1.0}) =:= {centi, 10000.0}),
  ?assert(to_centi({deka, 1.0}) =:= {centi, 1000.0}),
  ?assert(to_centi(0.01) =:= {centi, 1.0}),
  ?assert(to_centi({deci, 1.0}) =:= {centi, 10.0}),
  ?assert(to_centi({centi, 1.0}) =:= {centi, 1.0}),
  ?assert(to_centi({mili, 10.0}) =:= {centi, 1.0}),
  ?assert(to_centi({micro, 10000.0}) =:= {centi, 1.0}),
  ?assert(to_centi({nano, 10000000.0}) =:= {centi, 1.0}),
  ?assert(to_centi({pico, 10000000000.0}) =:= {centi, 1.0}).

SUBSECTION(Test Deci)
to_deci_test() ->
  ?assert(to_deci({tera, 1.0}) =:= {deci, 10000000000000.0}),
  ?assert(to_deci({giga, 1.0}) =:= {deci, 10000000000.0}),
  ?assert(to_deci({mega, 1.0}) =:= {deci, 10000000.0}),
  ?assert(to_deci({kilo, 1.0}) =:= {deci, 10000.0}),
  ?assert(to_deci({hecto, 1.0}) =:= {deci, 1000.0}),
  ?assert(to_deci({deka, 1.0}) =:= {deci, 100.0}),
  ?assert(to_deci(1.0) =:= {deci, 10.0}),
  ?assert(to_deci({deci, 1.0}) =:= {deci, 1.0}),
  ?assert(to_deci({centi, 10.0}) =:= {deci, 1.0}),
  ?assert(to_deci({mili, 100.0}) =:= {deci, 1.0}),
  ?assert(to_deci({micro, 100000.0}) =:= {deci, 1.0}),
  ?assert(to_deci({nano, 100000000.0}) =:= {deci, 1.0}),
  ?assert(to_deci({pico, 1000000000.0}) =:= {deci, 0.01}).

SUBSECTION(Test Deka)
to_deka_test() ->
  ?assert(to_deka({tera, 1.0}) =:= {deka, 100000000000.0}),
  ?assert(to_deka({giga, 1.0}) =:= {deka, 100000000.0}),
  ?assert(to_deka({mega, 1.0}) =:= {deka, 100000.0}),
  ?assert(to_deka({kilo, 1.0}) =:= {deka, 100.0}),
  ?assert(to_deka({hecto, 1.0}) =:= {deka, 10.0}),
  ?assert(to_deka({deka, 10.0}) =:= {deka, 10.0}),
  ?assert(to_deka(10.0) =:= {deka, 1.0}),
  ?assert(to_deka({deci, 100.0}) =:= {deka, 1.0}),
  ?assert(to_deka({centi, 1000.0}) =:= {deka, 1.0}),
  ?assert(to_deka({mili, 10000.0}) =:= {deka, 1.0}),
  ?assert(to_deka({micro, 10000000.0}) =:= {deka, 1.0}),
  ?assert(to_deka({nano, 10000000000.0}) =:= {deka, 1.0}),
  ?assert(to_deka({pico, 10000000000000.0}) =:= {deka, 1.0}).

SUBSECTION(Test Hecto)
to_hecto_test() ->
  ?assert(to_hecto({tera, 1.0}) =:= {hecto, 10000000000.0}),
  ?assert(to_hecto({giga, 1.0}) =:= {hecto, 10000000.0}),
  ?assert(to_hecto({mega, 1.0}) =:= {hecto, 10000.0}),
  ?assert(to_hecto({kilo, 1.0}) =:= {hecto, 10.0}),
  ?assert(to_hecto({hecto, 10.0}) =:= {hecto, 10.0}),
  ?assert(to_hecto({deka, 10.0}) =:= {hecto, 1.0}),
  ?assert(to_hecto(100.0) =:= {hecto, 1.0}),
  ?assert(to_hecto({deci, 1000.0}) =:= {hecto, 1.0}),
  ?assert(to_hecto({centi, 10000.0}) =:= {hecto, 1.0}),
  ?assert(to_hecto({mili, 100000.0}) =:= {hecto, 1.0}),
  ?assert(to_hecto({micro, 100000000.0}) =:= {hecto, 1.0}),
  ?assert(to_hecto({nano, 1000000000.0}) =:= {hecto, 0.01}),
  ?assert(to_hecto({pico, 100000000000000.0}) =:= {hecto, 1.0}).

SUBSECTION(Test Kilo)
to_kilo_test() ->
  ?assert(to_kilo({tera, 1.0}) =:= {kilo, 1000000000.0}),
  ?assert(to_kilo({giga, 1.0}) =:= {kilo, 1000000.0}),
  ?assert(to_kilo({mega, 1.0}) =:= {kilo, 1000.0}),
  ?assert(to_kilo({kilo, 1.0}) =:= {kilo, 1.0}),
  ?assert(to_kilo({hecto, 10.0}) =:= {kilo, 1.0}),
  ?assert(to_kilo({deka, 100.0}) =:= {kilo, 1.0}),
  ?assert(to_kilo(1000.0) =:= {kilo, 1.0}),
  ?assert(to_kilo({deci, 10000.0}) =:= {kilo, 1.0}),
  ?assert(to_kilo({centi, 100000.0}) =:= {kilo, 1.0}),
  ?assert(to_kilo({mili, 1000000.0}) =:= {kilo, 1.0}),
  ?assert(to_kilo({micro, 1000000000.0}) =:= {kilo, 1.0}),
  ?assert(to_kilo({nano, 1000000000000.0}) =:= {kilo, 1.0}),
  ?assert(to_kilo({pico, 1000000000000000.0}) =:= {kilo, 1.0}).

SUBSECTION(Test Mega)
to_mega_test() ->
  ?assert(to_mega({tera, 1.0}) =:= {mega, 1000000.0}),
  ?assert(to_mega({giga, 1.0}) =:= {mega, 1000.0}),
  ?assert(to_mega({mega, 1.0}) =:= {mega, 1.0}),
  ?assert(to_mega({kilo, 1000.0}) =:= {mega, 1.0}),
  ?assert(to_mega({hecto, 10000.0}) =:= {mega, 1.0}),
  ?assert(to_mega({deka, 100000.0}) =:= {mega, 1.0}),
  ?assert(to_mega(1000000.0) =:= {mega, 1.0}),
  ?assert(to_mega({deci, 10000000.0}) =:= {mega, 1.0}),
  ?assert(to_mega({centi, 100000000.0}) =:= {mega, 1.0}),
  ?assert(to_mega({mili, 1000000000.0}) =:= {mega, 1.0}),
  ?assert(to_mega({micro, 1000000000000.0}) =:= {mega, 1.0}),
  ?assert(to_mega({nano, 1000000000000000.0}) =:= {mega, 1.0}),
  ?assert(to_mega({pico, 1000000000000000000.0}) =:= {mega, 1.0}).

SUBSECTION(Test Giga)
to_giga_test() ->
  ?assert(to_giga({tera, 1.0}) =:= {giga, 1000.0}),
  ?assert(to_giga({giga, 1.0}) =:= {giga, 1.0}),
  ?assert(to_giga({mega, 1000.0}) =:= {giga, 1.0}),
  ?assert(to_giga({kilo, 1000000.0}) =:= {giga, 1.0}),
  ?assert(to_giga({hecto, 10000000.0}) =:= {giga, 1.0}),
  ?assert(to_giga({deka, 100000000.0}) =:= {giga, 1.0}),
  ?assert(to_giga(1000000000.0) =:= {giga, 1.0}),
  ?assert(to_giga({deci, 10000000000.0}) =:= {giga, 1.0}),
  ?assert(to_giga({centi, 1000000000.0}) =:= {giga, 0.01}),
  ?assert(to_giga({mili, 1000000000000.0}) =:= {giga, 1.0}),
  ?assert(to_giga({micro, 1000000000000000.0}) =:= {giga, 1.0}),
  ?assert(to_giga({nano, 1000000000000000000.0}) =:= {giga, 1.0}),
  ?assert(to_giga({pico, 10000000000000000000000000.0}) =:= {giga, 10000.0}).

SUBSECTION(Test Tera)
to_tera_test() ->
  ?assert(to_tera({tera, 1.0}) =:= {tera, 1.0}),
  ?assert(to_tera({giga, 1000.0}) =:= {tera, 1.0}),
  ?assert(to_tera({mega, 1000000.0}) =:= {tera, 1.0}),
  ?assert(to_tera({kilo, 1000000000.0}) =:= {tera, 1.0}),
  ?assert(to_tera({hecto, 10000000000.0}) =:= {tera, 1.0}),
  ?assert(to_tera({deka, 1000000000.0}) =:= {tera, 0.01}),
  ?assert(to_tera(1000000000000.0) =:= {tera, 1.0}),
  ?assert(to_tera({deci, 10000000000000.0}) =:= {tera, 1.0}),
  ?assert(to_tera({centi, 100000000000000.0}) =:= {tera, 1.0}),
  ?assert(to_tera({mili, 1000000000000000.0}) =:= {tera, 1.0}),
  ?assert(to_tera({micro, 1000000000000000000.0}) =:= {tera, 1.0}),
  ?assert(to_tera({nano, 10000000000000000000000000.0}) =:= {tera, 10000.0}),
  ?assert(to_tera({pico, 10000000000000000000000000.0}) =:= {tera, 10.0}).

EOF

