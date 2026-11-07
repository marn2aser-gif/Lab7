
% Task 2: Delete Every Occurrence

deleteElement(X, List, Result) :-
    remove_all(List, X, Result).

remove_all([], _, []).

remove_all([H|T], X, R) :-
    H == X,
    !,
    remove_all(T, X, R).

remove_all([H|T], X, [H|R]) :-
    remove_all(T, X, R).


% Task 3: Add at the End

add_at_the_end(X, List, Result) :-
    add_helper(List, X, Result).

add_helper([], X, [X]).

add_helper([H|T], X, [H|R]) :-
    add_helper(T, X, R).
