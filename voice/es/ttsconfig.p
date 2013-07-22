﻿% for turbo-prolog
:- op('--', xfy, 500).
% for swi-prolog
:- op(500, xfy,'--').

version(101).
tts :- version(X), X > 99.
voice :- version(X), X < 99.

language('es').
fest_language('Spanish').

% before each announcement (beep)
preamble - [].

string('left.ogg', 'gira a la izquierda').
string('left_sh.ogg', 'gira fuerte a la izquierda').
string('left_sl.ogg', 'gira levemente a la izquierda').
string('right.ogg', 'gira a la derecha').
string('right_sh.ogg', 'gira fuerte a la derecha').
string('right_sl.ogg', 'gira levemente a la derecha').
string('left_keep.ogg', 'mantente a la izquierda').
string('right_keep.ogg', 'mantente a la derecha').

string('left_inf.ogg', 'girar a la izquierda').
string('left_sh_inf.ogg', 'girar fuerte a la izquierda').
string('left_sl_inf.ogg', 'girar levemente a la izquierda').
string('right_inf.ogg', 'girar a la derecha').
string('right_sh_inf.ogg', 'girar fuerte a la derecha').
string('right_sl_inf.ogg', 'girar levemente a la derecha').
string('left_keep_inf.ogg', 'mantente a la izquierda').
string('right_keep_inf.ogg', 'mantente a la derecha').

string('attention.ogg', 'atención').
string('prepare_uturn.ogg', 'Prepárate para dar la vuelta tras').
string('make_uturn.ogg', 'da la vuelta').
string('make_uturn_wp.ogg', 'cuando sea posible, da la vuelta').
string('after.ogg', 'tras ').
string('prepare.ogg', 'prepárate para').
string('then.ogg', '. Luego').
string('and.ogg', 'y').
string('take.ogg', 'toma la').
string('exit.ogg', 'salida').
string('prepare_roundabout.ogg', 'Prepárate para entrar en la rotonda tras').
string('roundabout.ogg', 'entra en la rotonda').
string('go_ahead.ogg', 'Continúa recto').
string('go_ahead_m.ogg', 'Sigue la vía durante').
string('and_arrive_destination.ogg', 'y llegarás a tu destino').
string('reached_destination.ogg','has llegado a tu destino').
string('and_arrive_intermediate.ogg', 'y llegarás a tu punto intermedio').
string('reached_intermediate.ogg', 'has llegado a tu punto intermedio').
string('route_is.ogg', 'El camino es').
string('route_calculate.ogg', 'Ruta recalculada, distancia').
string('location_lost.ogg', 'señal g p s perdida').
string('on.ogg', 'en').
string('off_route.ogg', 'has desviado de la ruta').
string('exceed_limit.ogg', 'que se exceda el límite de velocidad').

string('1st.ogg', 'primera').
string('2nd.ogg', 'segunda').
string('3rd.ogg', 'tercera').
string('4th.ogg', 'cuarta').
string('5th.ogg', 'quinta').
string('6th.ogg', 'sexta').
string('7th.ogg', 'séptima').
string('8th.ogg', 'octava').
string('9th.ogg', 'novena').
string('10th.ogg', 'décima').
string('11th.ogg', 'undécima').
string('12th.ogg', 'duodécima').
string('13th.ogg', 'decimotercera').
string('14th.ogg', 'decimocuarta').
string('15th.ogg', 'decimoquinta').
string('16th.ogg', 'decimosexta').
string('17th.ogg', 'decimoséptima').

string('meters.ogg', 'metros').
string('around_1_kilometer.ogg', 'cerca de un kilómetro').
string('around.ogg', 'cerca de').
string('kilometers.ogg', 'kilómetros').

string('feet.ogg', 'pies').
string('tenth_of_a_mile.ogg', 'décimo de milla').
string('tenths_of_a_mile.ogg', 'décimas de milla').
string('around_1_mile.ogg', 'cerca de una milla').
string('miles.ogg', 'millas').

string('yards.ogg', 'yardas').


%% TURNS 
turn('left', ['left.ogg']).
turn('left_sh', ['left_sh.ogg']).
turn('left_sl', ['left_sl.ogg']).
turn('right', ['right.ogg']).
turn('right_sh', ['right_sh.ogg']).
turn('right_sl', ['right_sl.ogg']).
turn('left_keep', ['left_keep.ogg']).
turn('right_keep', ['right_keep.ogg']).
bear_left -- ['left_keep.ogg'].
bear_right -- ['right_keep.ogg'].

turn_inf('left', ['left_inf.ogg']).
turn_inf('left_sh', ['left_sh_inf.ogg']).
turn_inf('left_sl', ['left_sl_inf.ogg']).
turn_inf('right', ['right_inf.ogg']).
turn_inf('right_sh', ['right_sh_inf.ogg']).
turn_inf('right_sl', ['right_sl_inf.ogg']).
turn_inf('left_keep', ['left_keep_inf.ogg']).
turn_inf('right_keep', ['right_keep_inf.ogg']).

prepare_turn(Turn, Dist) -- ['prepare.ogg', M, 'after.ogg', D, ' '] :- distance(Dist) -- D, turn_inf(Turn, M).
turn(Turn, Dist) -- ['after.ogg', D, M] :- distance(Dist) -- D, turn(Turn, M).
turn(Turn) -- M :- turn(Turn, M).

prepare_make_ut(Dist) -- ['prepare_uturn.ogg', D] :- distance(Dist) -- D.
make_ut(Dist) --  ['after.ogg', D, 'make_uturn.ogg'] :- distance(Dist) -- D.
make_ut -- ['make_uturn.ogg'].
make_ut_wp -- ['make_uturn_wp.ogg'].

prepare_roundabout(Dist) -- ['prepare_roundabout.ogg', D] :- distance(Dist) -- D.
roundabout(Dist, _Angle, Exit) -- ['after.ogg', D, 'roundabout.ogg', 'and.ogg', 'take.ogg', E, 'exit.ogg'] :- distance(Dist) -- D, nth(Exit, E).
roundabout(_Angle, Exit) -- ['take.ogg', E, 'exit.ogg'] :- nth(Exit, E).

go_ahead -- ['go_ahead.ogg'].
go_ahead(Dist) -- ['go_ahead_m.ogg', D]:- distance(Dist) -- D.

then -- ['then.ogg'].
and_arrive_destination -- ['and_arrive_destination.ogg'].
reached_destination -- ['reached_destination.ogg'].
and_arrive_intermediate -- ['and_arrive_intermediate.ogg'].
reached_intermediate -- ['reached_intermediate.ogg'].

route_new_calc(Dist) -- ['route_is.ogg', D] :- distance(Dist) -- D.
route_recalc(Dist) -- ['route_calculate.ogg', D] :- distance(Dist) -- D.

location_lost -- ['location_lost.ogg'].

on_street -- ['on.ogg', X] :- next_street(X).
off_route -- ['off_route.ogg'].
attention -- ['attention.ogg'].
speed_alarm -- ['exceed_limit.ogg'].


%% 
nth(1, '1st.ogg').
nth(2, '2nd.ogg').
nth(3, '3rd.ogg').
nth(4, '4th.ogg').
nth(5, '5th.ogg').
nth(6, '6th.ogg').
nth(7, '7th.ogg').
nth(8, '8th.ogg').
nth(9, '9th.ogg').
nth(10, '10th.ogg').
nth(11, '11th.ogg').
nth(12, '12th.ogg').
nth(13, '13th.ogg').
nth(14, '14th.ogg').
nth(15, '15th.ogg').


%% resolve command main method
%% if you are familar with Prolog you can input specific to the whole mechanism,
%% by adding exception cases.
flatten(X, Y) :- flatten(X, [], Y), !.
flatten([], Acc, Acc).
flatten([X|Y], Acc, Res):- flatten(Y, Acc, R), flatten(X, R, Res).
flatten(X, Acc, [X|Acc]) :- version(J), J < 100, !.
flatten(X, Acc, [Y|Acc]) :- string(X, Y), !.
flatten(X, Acc, [X|Acc]).

resolve(X, Y) :- resolve_impl(X,Z), flatten(Z, Y).
resolve_impl([],[]).
resolve_impl([X|Rest], List) :- resolve_impl(Rest, Tail), ((X -- L) -> append(L, Tail, List); List = Tail).

% handling alternatives
[X|_Y] -- T :- (X -- T),!.
[_X|Y] -- T :- (Y -- T).

%%% distance measure
distance(Dist) -- D :- measure('km-m'), distance_km(Dist) -- D.
distance(Dist) -- D :- measure('mi-f'), distance_mi_f(Dist) -- D.
distance(Dist) -- D :- measure('mi-y'), distance_mi_y(Dist) -- D.

%%% distance measure km/m
distance_km(Dist) -- [ X, 'meters.ogg']                  :- Dist < 100,   D is round(Dist/10.0)*10,           dist(D, X).
distance_km(Dist) -- [ X, 'meters.ogg']                  :- Dist < 1000,  D is round(2*Dist/100.0)*50,        dist(D, X).
distance_km(Dist) -- ['around_1_kilometer.ogg']          :- Dist < 1500.
distance_km(Dist) -- ['around.ogg', X, 'kilometers.ogg'] :- Dist < 10000, D is round(Dist/1000.0),            dist(D, X).
distance_km(Dist) -- [ X, 'kilometers.ogg']              :-               D is round(Dist/1000.0),            dist(D, X).

%%% distance measure mi/f
distance_mi_f(Dist) -- [ X, 'feet.ogg']                  :- Dist < 160,   D is round(2*Dist/100.0/0.3048)*50, dist(D, X).
distance_mi_f(Dist) -- [ X, 'tenth_of_a_mile.ogg']       :- Dist < 241,   D is round(Dist/161.0),             dist(D, X).
distance_mi_f(Dist) -- [ X, 'tenths_of_a_mile.ogg']      :- Dist < 1529,  D is round(Dist/161.0),             dist(D, X).
distance_mi_f(Dist) -- ['around_1_mile.ogg']             :- Dist < 2414.
distance_mi_f(Dist) -- ['around.ogg', X, 'miles.ogg']    :- Dist < 16093, D is round(Dist/1609.0),            dist(D, X).
distance_mi_f(Dist) -- [ X, 'miles.ogg']                 :-               D is round(Dist/1609.0),            dist(D, X).

%%% distance measure mi/y
distance_mi_y(Dist) -- [ X, 'yards.ogg']                 :- Dist < 241,   D is round(Dist/10.0/0.9144)*10,    dist(D, X).
distance_mi_y(Dist) -- [ X, 'yards.ogg']                 :- Dist < 1300,  D is round(2*Dist/100.0/0.9144)*50, dist(D, X).
distance_mi_y(Dist) -- ['around_1_mile.ogg']             :- Dist < 2414.
distance_mi_y(Dist) -- ['around.ogg', X, 'miles.ogg']    :- Dist < 16093, D is round(Dist/1609.0),            dist(D, X).
distance_mi_y(Dist) -- [ X, 'miles.ogg']                 :-               D is round(Dist/1609.0),            dist(D, X).


interval(St, St, End, _Step) :- St =< End.
interval(T, St, End, Step) :- interval(Init, St, End, Step), T is Init + Step, (T =< End -> true; !, fail).

interval(X, St, End) :- interval(X, St, End, 1).

string(Ogg, A) :- interval(X, 1, 19), atom_number(A, X), atom_concat(A, '.ogg', Ogg).
string(Ogg, A) :- interval(X, 20, 90, 10), atom_number(A, X), atom_concat(A, '.ogg', Ogg).
string(Ogg, A) :- interval(X, 100, 900, 50), atom_number(A, X), atom_concat(A, '.ogg', Ogg).
string(Ogg, A) :- interval(X, 1000, 9000, 1000), atom_number(A, X), atom_concat(A, '.ogg', Ogg).

dist(X, Y) :- tts, !, num_atom(X, Y).

dist(0, []) :- !.
dist(X, [Ogg]) :- X < 20, !, num_atom(X, A), atom_concat(A, '.ogg', Ogg).
dist(X, [Ogg]) :- X < 1000, 0 is X mod 50, !, num_atom(X, A), atom_concat(A, '.ogg', Ogg).
dist(D, ['20.ogg'|L]) :-  D < 30, Ts is D - 20, !, dist(Ts, L).
dist(D, ['30.ogg'|L]) :-  D < 40, Ts is D - 30, !, dist(Ts, L).
dist(D, ['40.ogg'|L]) :-  D < 50, Ts is D - 40, !, dist(Ts, L).
dist(D, ['50.ogg'|L]) :-  D < 60, Ts is D - 50, !, dist(Ts, L).
dist(D, ['60.ogg'|L]) :-  D < 70, Ts is D - 60, !, dist(Ts, L).
dist(D, ['70.ogg'|L]) :-  D < 80, Ts is D - 70, !, dist(Ts, L).
dist(D, ['80.ogg'|L]) :-  D < 90, Ts is D - 80, !, dist(Ts, L).
dist(D, ['90.ogg'|L]) :-  D < 100, Ts is D - 90, !, dist(Ts, L).
dist(D, ['100.ogg'|L]) :-  D < 200, Ts is D - 100, !, dist(Ts, L).
dist(D, ['200.ogg'|L]) :-  D < 300, Ts is D - 200, !, dist(Ts, L).
dist(D, ['300.ogg'|L]) :-  D < 400, Ts is D - 300, !, dist(Ts, L).
dist(D, ['400.ogg'|L]) :-  D < 500, Ts is D - 400, !, dist(Ts, L).
dist(D, ['500.ogg'|L]) :-  D < 600, Ts is D - 500, !, dist(Ts, L).
dist(D, ['600.ogg'|L]) :-  D < 700, Ts is D - 600, !, dist(Ts, L).
dist(D, ['700.ogg'|L]) :-  D < 800, Ts is D - 700, !, dist(Ts, L).
dist(D, ['800.ogg'|L]) :-  D < 900, Ts is D - 800, !, dist(Ts, L).
dist(D, ['900.ogg'|L]) :-  D < 1000, Ts is D - 900, !, dist(Ts, L).
dist(D, ['1000.ogg'|L]):- Ts is D - 1000, !, dist(Ts, L).
