
:- dynamic shopping_list/1.

shopping_list([tea, bread, eggs, rice, cheese]).

show_list([]).
show_list([Item|Rest]) :-
    write(Item), nl,
    show_list(Rest).

start :-
    menu.

menu :-
    nl,
    writeln('** SHOPPING LIST **'),
    writeln('d. Display all items'),
    writeln('a. Add an item'),
    writeln('e. Exit'),
    write('Enter your choice: '),
    read(Choice),
    process(Choice).

process(d) :-
    shopping_list(Items),
    show_list(Items),
    menu.

process(a) :-
    write('Enter new item: '),
    read(Item),
    shopping_list(Old),
    append(Old, [Item], New),
    retractall(shopping_list(_)),
    assertz(shopping_list(New)),
    writeln('Item added successfully!'),
    menu.

process(e) :-
    writeln('Program ended.').

process(_) :-
    writeln('Invalid choice!'),
    menu.
