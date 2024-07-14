% Facts
parent(john, mary).
parent(mary, susan).
parent(mary, james).
parent(james, kevin).
parent(susan, lisa).

% Rules
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).

% Query Examples
% Who are the parents of Mary?
% ?- parent(X, mary).

% Who are the ancestors of Kevin?
% ?- ancestor(X, kevin).

% Who are the children of Mary?
% ?- parent(mary, Y).

% Are John and Kevin related through ancestors?
% ?- ancestor(john, kevin).
