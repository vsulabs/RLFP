% 8. Проверить, что все элементы списка различны

diff([_]) :- !.
diff([X|L1]) :- \+ member(X, L1), diff(L1).
