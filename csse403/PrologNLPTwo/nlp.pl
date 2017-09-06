% :- module(csse403nlp,[parse/2,translate/2]).
% we should use a module,really, but it wasn't obvious how to
% make it so the that the operator => displays correctly when it
% is in a module.

% this creates a new => operator to have the same priority as +
% seems to make it behave as you would expect.
:- op(200, xfx, =>).
=>(_,_).

% your code goes below
% the tests are in another file
noun(singular, apple).
noun(plural, apples).

noun(singular, boy).
noun(plural, boys).

noun(singular, girl).
noun(plural, girls).

qualifier(_, some).
qualifier(plural, all).

intransitive_verb(plural, run).
intransitive_verb(singular, runs).
intransitive_verb(plural, dance).
intransitive_verb(singular, dances).

transitive_verb(singular, likes).
transitive_verb(plural, like).
transitive_verb(singular, hates).
transitive_verb(plural, hate).
transitive_verb(plural, respect).
transitive_verb(singular, respects).

s2p(girl, girls).
s2p(boy, boys).
s2p(apple, apples).
s2p(run, runs).
s2p(dance, dances).
s2p(like, likes).
s2p(hate, hates).
s2p(respect, respects).

relative_clause(that).
relative_clause(which).

make_singular(Noun, Noun) :-
	s2p(Noun, _).

make_singular(Noun, Output) :-
	s2p(Output, Noun).


%% Parse Code
%% ----------------------------------------------------------------------------


%% S --> NP VP    
statement(X, statement(NP, VP)) :-
        noun_phrase(SOP, X,NounRemainder, NP),
        verb_phrase(SOP, NounRemainder,[], VP),!.

%% NP --> Qual RELCL 
noun_phrase(SOP,[Qualifier|RelClause],Rest, OtherThing) :- 
	qualifier(SOP, Qualifier),
	relative_clause_phrase(_,RelClause, Rest, Phrase),
	OtherThing =.. [Qualifier, Thing],
	Thing =.. [relcl|Phrase].

%% NP --> Qual Noun 
noun_phrase(SOP, [Qual,Noun|Rest],Rest, Thing) :- 
	qualifier(SOP, Qual),
	noun(SOP,Noun),
	Thing =.. [Qual, noun(Noun)].



%% VP --> Int-Verb 
verb_phrase(SOP,[Verb|Rest], Rest, verb(Verb)) :- 
	intransitive_verb(SOP,Verb).

%% VP --> Trans-Verb NP
verb_phrase(SOP,[Verb|NounPhrase], Rest, verb(Verb, Phrase)) :-
	transitive_verb(SOP,Verb),
	noun_phrase(_,NounPhrase, Rest, Phrase).

%% RELCL --> Noun Rel VP 
relative_clause_phrase(SOP,[Noun, Rel|Verb], Rest, [noun(Noun), Phrase]) :-
	noun(SOP,Noun),
	relative_clause(Rel),
	verb_phrase(SOP,Verb, Rest, Phrase).

%% RELCL --> Noun Rel NP Trans-Verb
relative_clause_phrase(SOP,[Noun, Rel|Stuff], Rest, [noun(Noun), NP, verb(Tverb)]) :-
	noun(_,Noun),
	relative_clause(Rel),
	noun_phrase(SOP, Stuff, [Tverb|Rest], NP),
	transitive_verb(SOP,Tverb).

parse(X,statement(NP,VP)) :-
	statement(X, statement(NP, VP)).


%% Translate
%% ----------------------------------------------------------------------------

%% main translate
translate(statement(NT,VT), Output) :-
	translate(VT, 1, Verb),
	translate(NT, 0, Verb, Output), !.

%% VP -- normal verb
%% translate(verb(Verb), Number, Output) :-
%% 	intransitive_verb(_, Verb),
%% 	make_singular(Verb, SVerb), 
%% 	Output =.. [SVerb, Number].

%% VP -- Int-Verb
translate(verb(VP), Number, Output) :-
	make_singular(VP, SVP),
	intransitive_verb(_, VP),
	Output =.. [SVP, Number].

%% VP --> Trans-Verb NP
translate(verb(Tverb, NP), Number, Output) :-
	make_singular(Tverb, STverb),
	Number2 is Number + 1,
	NewVerb =.. [STverb, Number, Number2],
	translate(NP, Number, NewVerb, NPt),
	Output = NPt.

%% NP -- all Noun
translate(all(noun(Noun)), Number, Verb, Output) :-
	NewNumber is Number + 1,
	make_singular(Noun, SNoun),
	NMeme =.. [SNoun, NewNumber],
	Output =.. [all, NewNumber, NMeme=>Verb].

%% NP --- some Noun
translate(some(noun(NP)), Number, Verb, Output) :-
	NewNumber is Number + 1,
	make_singular(NP, SNoun),
	NMeme =.. [SNoun, NewNumber],
	Output =.. [exists, NewNumber, NMeme+Verb].

%% RECL --> Noun Rel VP
translate(some(relcl(noun(Noun), VP)), Number, Verb, Output) :-
	NewNumber is Number + 1,
	NounThing =.. [Noun, NewNumber],
	translate(VP, NewNumber, RVP),
	Thing = NounThing+RVP,
	Output =.. [exists, NewNumber, Thing+Verb].

translate(all(relcl(noun(Noun), VP)), Number, Verb, Output) :-
	NewNumber is Number + 1,
	NounThing =.. [Noun, NewNumber],
	translate(VP, NewNumber, RVP),
	Thing = NounThing+RVP,
	Output =.. [all, NewNumber, Thing=>Verb].

%% RECL --> Noun Rel NP Trans-Verb
translate(all(relcl(noun(Noun1), some(noun(Noun2)), verb(Verb1))), Number, Verb2, Output) :-
	NewNumber is Number + 1,
	make_singular(Noun1, SNoun1),
	make_singular(Noun2, SNoun2),
	make_singular(Verb1, SVerb1),
	make_singular(Verb2, SVerb2),
	Noun =.. [SNoun1, Number],
	NounTwo =.. [SNoun2, NewNumber],
	Tverb =.. [SVerb1, NewNumber, Number],
	SVerbJank =.. [SVerb2, Number],
	Memes = (NounTwo+Tverb),
	Memes2 = (Noun+Thing),
	Thing =.. [exists, NewNumber, Memes=>SVerbJank],
	Output =.. [all, Number, Memes2].

%%--------------------------------------------------------------------------
pandt(X,Output) :-
	parse(X,statement(NP,VP)), 
	translate(statement(NP, VP), Output).