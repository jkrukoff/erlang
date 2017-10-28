-module(leap_tests).

-define(TESTED_MODULE, (sut(leap))).
-define(TEST_VERSION, 2).
-include("exercism.hrl").


year_divisible_by_400_leap_year_test() ->
    ?assert(?TESTED_MODULE:leap_year(2000)).

year_divisible_by_100_not_divisible_by_400_common_year_test() ->
    ?assertNot(?TESTED_MODULE:leap_year(2100)).

year_divisible_by_4_not_divisible_by_100_leap_year_test() ->
    ?assert(?TESTED_MODULE:leap_year(2020)).

year_not_divisible_by_4_common_year_test() ->
    ?assertNot(?TESTED_MODULE:leap_year(2015)).
