% % Word Find Generator

% A word find is a game using a rectangular block of text.  A list words
% are hidden in the text and user attempts to identify them.  The same
% letters might be used in multiple words.

% For example, this word find contains the words ninja and note:

% abcde
% ninja
% qzomn
% qqtqq
% yzexx

% In small word finds that have many words, often there are only a few
% ways the words can be positioned so they can all fit.

% We'll use prolog to find all possible word positions.

% Step A: Read section 4.4 of your textbook
% Step B: (15 points):

% Write a function make_word_find_linear(Words,Size,Result).
% This function takes a list of words and positions them on
% a single line of the given length.  For places that are not
% needed, the function should have ?.  For example:

% ?- make_word_find_linear(['love','hello'],10,X).
% X = 'lovehello?' ;
% X = 'love?hello' ;
% X = '?lovehello' ;
% X = 'hellove???' ;
% X = '?hellove??' ;
% X = 'hellolove?' ;
% X = '??hellove?' ;
% X = 'hello?love' ;
% X = '?hellolove' ;
% X = '???hellove' ;
% false.

% One complication will be prologs strange way of representing
% strings.  There are 2: single quoted 'strings' that are actually the
% symbols that we've using thus far, they just can contain other stuff
% like captals and spaces.  These are actually called ATOMS.


% Then there are double quotes strings -- I reccommend you steer clear of those.
%
% But, you need to convert your atoms into a list.  Do it like this:

% ?- atom_chars(hello,[H|T]).
% H = h,
% T = [e, l, l, o].

% Of course, you can covert backwards using the same function. But
% this won't work if one of the items in the list is unbound.  


% In that case, use this handy listBind function I wrote.  It's used
% to take a list and bind any unbound variables to ?
%
% ?- X = [h,i,_,_], listBind(X), atom_chars(Y,X).
% X = [h, i, ?, ?],
% Y = 'hi??'.

listBind([?|T]) :- listBind(T), !. % the '!' is known as a cut
listBind([_|T]) :- listBind(T).
listBind([]).

%% takes list of atoms and splits it into a list of
%% lists of characters
split_to_table([Head|Tail], [Thead|Ttail]) :-
    atom_chars(Head, Thead),
    split_to_table(Tail, Ttail).

split_to_table([], []).

insert_word([], _).
insert_word([Whead|Wtail], [Chead|Ctail]) :-
    Whead = Chead,
    insert_word(Wtail, Ctail).

insert_word_at_index(Word, List, 0) :-
    insert_word(Word, List).

insert_word_at_index(Word, [_|Tail], Index) :-
    Index > 0,
    NewIndex is Index - 1,
    insert_word_at_index(Word, Tail, NewIndex).


% generates every possible place to place the given word
fill_in_word(Word, Size, List) :-
    length(List, Size),
    length(Word, Wlength),
    Wlength = Size.

fill_in_word(Word, Size, List) :-
    %% length(List, Size),
    length(Word, WordSize),
    MaxIndex is Size - WordSize,
    between(0, MaxIndex, IndexToAdd),
    insert_word_at_index(Word, List, IndexToAdd).


% base case 
make_word_find_linear([], Size, Result) :-
    length(Tmp, Size),
    listBind(Tmp),
    atom_chars(Result, Tmp).

make_word_find_linear(Words, Size, Result) :-
    split_to_table(Words, Table), 
    make_word_find_linear_table(Table, Size, ListAns),
    listBind(ListAns),
    atom_chars(Result, ListAns).


make_word_find_linear_table([], _, _).

make_word_find_linear_table([WordHead|WordTail], Size, Result) :-
    length(Result, Size),
    fill_in_word(WordHead, Size, Result),
    make_word_find_linear_table(WordTail, Size, Result).




% as usual, these tests are not exhaustive.  Please test by
% hand and with other cases!
:- begin_tests(linear).
test(linear1) :-
        make_word_find_linear(['ab','ba'],5,'?aba?').
test(linear2) :-
        make_word_find_linear(['ab','ba'],5,'abba?').
test(linear3) :-
        make_word_find_linear(['ab','ba'],5,'?abba').
test(linear4) :-
        make_word_find_linear(['ab','ba'],5,'??bab').
test(linear5) :-
        make_word_find_linear(['ab','ba'],5,'ba?ab').
test(linear6,[fail]) :-
        make_word_find_linear(['ab','ba'],5,'ab?ab').

:- end_tests(linear).


% Step C: 15 Points

% make_word_find_rect(Words,Width,Height,StringResults)

% now make a version that makes a rectangle of text
% it has a width and height, but words will still be stored only
% horizontally.  For example:

% ?- make_word_find_rect(['ah','ham'],4,2,X).
% X = ['aham', '????'] ;
% X = ['ah??', 'ham?'] ;
% X = ['ah??', '?ham'] ;
% X = ['?ah?', 'ham?'] ;
% X = ['?ah?', '?ham'] ;
% X = ['??ah', 'ham?'] ;
% X = ['??ah', '?ham'] ;
% X = ['ham?', 'ah??'] ;
% X = ['ham?', '?ah?'] ;
% X = ['ham?', '??ah'] ;
% X = ['?ham', 'ah??'] ;
% X = ['?ham', '?ah?'] ;
% X = ['?ham', '??ah'] ;
% X = ['????', 'aham'] ;
% false.
pick_element([Head|_], Head).
pick_element([_|Tail], Ans) :-
    pick_element(Tail, Ans).

string_board([], _).
string_board([Head|Tail],[NHead|NTail]) :-
    atom(Head),
    NHead = Head,
    string_board(Tail, NTail).

string_board([[H|L]|Tail], [NHead|NTail]) :-
    atom_chars(NHead, [H|L]),
    string_board(Tail, NTail).

make_word_find_rect(Words, Width, Height, Board) :-
    generate_board(Words, Width, Height, BoardB),
    length(Board, Height),
    string_board(BoardB, Board).

questions(Size, Ans) :-
    make_question_string(Size, X),
    atom_chars(Ans, X).

make_question_string(0, []).
make_question_string(Size, [Head|Tail]) :-
    Size > 0,
    NewSize is Size - 1,
    Head = ?,
    make_question_string(NewSize, Tail).

boardBind([Thing|T], Size) :- 
    var(Thing),
    boardBind(T, Size),
    questions(Size, Thing),
    !. % the '!' is known as a cut
boardBind([[Head|Tail]|T], Size) :- 
    listBind([Head|Tail]),
    boardBind(T, Size).
boardBind([], _).

generate_board([], Width,_,Board) :-
    boardBind(Board, Width).

generate_board([WHead|WTail], Width, Height, Board) :-
    length(Board, Height),
    pick_element(Board, Line),
    split_to_table([WHead], WordTable),
    make_word_find_linear_table(WordTable, Width, Line),
    generate_board(WTail, Width, Height, Board).


% as usual, these tests are not exhaustive.  Please test by
% hand and with other cases!
:- begin_tests(rect).
test(rect1) :-
        make_word_find_rect(['ab','ba'],3,2,['?ab','ba?']).
test(rect2) :-
        make_word_find_rect(['ab','ba'],3,2,['?ba','ab?']).
test(rect3) :-
        make_word_find_rect(['ab','ba'],3,2,['?ba','ab?']).
test(rect4) :-
        make_word_find_rect(['ab','ba'],3,2,['???','aba']).
test(rect4) :-
        make_word_find_rect(['ab','ba'],3,2,['bab','???']).
test(rect4,[fail]) :-
        make_word_find_rect(['ab','ba'],3,2,['bab','?ab']).

:- end_tests(rect).


% Step D 5 points: This last step is not worth too many
% points, so feel free to stop if you aren't enjoying
% yourself.
%
make_word_find_rect_v(Words,Width,Height,StringResults) :-
    StringResults = lawl.

% The final goal is to use both vertical and horzontal
% words.  for example:

% ?- make_word_find_rect_v(['hi','ho'],2,2,X).
% X = ['hi', 'ho'] ;
% X = ['ho', 'hi'] ;
% X = ['hi', 'o?'] ;
% X = ['ho', 'i?'] ;
% X = ['hh', 'io'] ;
% X = ['hh', 'oi'] ;
% false.

% Hint: I solved this one by write a function that took my
% 2d array of bound/unbound letters and writing a function
% that exchanged rows and columns.  Then I just reused
% make_word_find_rect on the 'rotated' array.

%% make_word_find_rect_v(Words,Width,Height,StringResults) :-
%%     StringResults = 'your code here'.

% as usual, these tests are not exhaustive.  Please test by
% hand and with other cases!
:- begin_tests(rectv).
test(rectv1) :-
        make_word_find_rect_v(['ab','ba'],2,2,['ab','ba']).
test(rectv2) :-
        make_word_find_rect_v(['ab','ba'],2,2,['ab','?a']).
test(rectv3) :-
        make_word_find_rect_v(['ab','ba'],2,2,['b?','ab']).
test(rectv4,[fail]) :-
        make_word_find_rect_v(['ab','ba'],2,2,['??','ab']).

:- end_tests(rectv).

























