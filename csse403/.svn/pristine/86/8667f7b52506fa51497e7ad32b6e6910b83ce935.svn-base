-module(mergesort).
-include_lib("eunit/include/eunit.hrl").
-export([worker_loop/0,do_sort/3,merge_sort_divide/5]).

%% So as is traditional, you'll write a version of merge sort Erlang.
%% But - good news!  You'll be able to use Erlang's built in sort
%% function for part of it, and built in merge to do the merge!

%% Here's how to go about it:
%% 1.  Write a function called worker_loop.  It should enter recieve and
%% do one of two things:

%% A) sort - in which it gets a list and replies with a sorted list.  Use
%% erlang's built in lists:sort to do the sorting.

%% Note: in erlang there is no reply syntax - it's just a seperate send.
%% Have the sender pass along its Pid (self()) to allow the reply.

%% B) merge - in which it gets 2 lists and merges them into a sorted list
%% then replies with that.  Use erlang's built in lists:merge.

worker_loop() ->
	receive 
		{Pid, List1, List2} ->
			Pid ! {self(), lists:merge(List1, List2)};
		{Pid, List} ->
			Pid ! {self(), (lists:sort(List))}
	end,
	worker_loop().


%% 2.  Write a manager function that handles the whole process.

%% Your do_sort function should take:
%% a) a list to sort and
%% b) a number of workers to spawn
%% c) the max length of the list you want to send to an individual worker
%% to sort
%%
%% Your function should return the sorted list once everything is complete

do_sort(ToSort, NumWorkers, MaxLength) ->
  Pids = generate_threads(NumWorkers, []),
  [Head|_] = merge_sort_divide(ToSort, [], length(ToSort), MaxLength, Pids),
  Head.

generate_threads(0, Workers) ->
	Workers;
generate_threads(Number, Workers) ->
	generate_threads(Number - 1, Workers ++ [spawn(fun worker_loop/0)]).

wait(NeedToSort, NeedToMerge, OrigialSize, MaxPerWorker, Workers) ->
		% erlang:display("waiting for message"),
		receive 
			{Pid, List} ->
				% erlang:display("got message"),
				% erlang:display(List),
				merge_sort_divide(NeedToSort, [List] ++ NeedToMerge, OrigialSize, MaxPerWorker, Workers ++ [Pid]);
			Anything ->
				erlang:display("bad message"),
				erlang:display(Anything)
		end.

merge_sort_divide(NeedToSort, NeedToMerge, OrigialSize, MaxPerWorker, Workers) ->
	% erlang:display(NeedToSort),
	% erlang:display(NeedToMerge),
	% erlang:display(OrigialSize),
	% erlang:display(MaxPerWorker),
	% erlang:display(Workers),
	if 
		(not (Workers == [])) ->
			[HWorkers|TWorkers] = Workers,
			if
				(not (NeedToSort == [])) ->
					{ToSort,NewNeedsToSort} = lists:split(min(MaxPerWorker, length(NeedToSort)), NeedToSort),
					HWorkers ! {self(), ToSort},
					% erlang:display("sorting..."),
					merge_sort_divide(NewNeedsToSort, NeedToMerge, OrigialSize, MaxPerWorker, TWorkers);
				(length(NeedToMerge) > 1) ->
					[H, Head | Rest] = NeedToMerge,
					HWorkers ! {self(), H, Head},
					% erlang:display("merging"),
					merge_sort_divide(NeedToSort, Rest, OrigialSize, MaxPerWorker, TWorkers);
				(length(NeedToMerge) == 1) ->
					[Head|_] = NeedToMerge,
					% erlang:display(Head),
					% [Head|Tail] = 4,
					if 
						(length(Head) == OrigialSize) ->
							% erlang:display("done: "),
							% erlang:display(NeedToMerge),
							NeedToMerge;
						true ->
							wait(NeedToSort, NeedToMerge, OrigialSize, MaxPerWorker, Workers)
					end;
				true -> 
						wait(NeedToSort, NeedToMerge, OrigialSize, MaxPerWorker, Workers)
			end;
		true ->
			wait(NeedToSort, NeedToMerge, OrigialSize, MaxPerWorker, Workers)
	end.


%% You can implement yours anyway you like so long as you create the
%% correct numer of indepedent worker threads and use them
%% appropiately.  In particular, you should never assign a worker to
%% sort a list larger than MaxLength, and you should never have
%% non-busy workers when there is work to be done.

%% Here's how mine goes: there are 2 stages, handle_ms_divide and
%% handle_ms_merge. The initial call to merge calls handle_ms_divide.

%% handle_ms_divide takes 5 parameters:
%% NeedsSorting - list items that still need to be dispatched for sorting
%% NeedsMerging - list items that have come back sorted and will need
%% merging in the next step
%% GoalSize - size of original list
%% MaxSize - max size for a single list to sort
%% UnassignedWorkers - worker processes that don't have a job right now

%% If the needs sorting list is empty we proceed to the next stage,
%% passing along the appropiate parameters.

%% If the sorting list is not empty AND we have an unassigned worker,
%% use lists:split to chop off a MaxSize chunk and give it to the
%% worker to sort.  Recurse.

%% Otherwise wait for request to come back.  Add the result to
%% NeedsMerging and the woker to UnassignedWorkers.  Recurse.

%% handle_ms_merge takes 3 parameters:
%% NeedsMerging - a list of sorted lists that a worker has to merge
%% GoalSize - the size of the original list
%% UnassignedWorkers - worker processes that don't have a job right now

%% If there are two items in the NeedsMerging list and there is an
%% unassigned worker, assign merging those lists to the worker.  Recurse.

%% Otherwise, wait for a request to come back.  
%% If the list is of goal size - we're done.  Return it.
%% Otherwise add the list to needs merging and the worker to unassigned
%% workers.  Recurse.
         
basic1_test() ->
    [1,2,2,2,5,7,11,34,99] = mergesort:do_sort([2,5,7,34,2,1,99,11,2],3,3).

basic2_test() ->
    [0,1,1,2,2,2,7,8,11,34,99,512,1000] = mergesort:do_sort([1000,2,512,1,7,34,2,1,99,11,2,8,0],4,2).

% test when you have way more workers than you need
more_workers_test() ->
    [1,2,2,2,5,7,11,34,99] = mergesort:do_sort([2,5,7,34,2,1,99,11,2],100,3).

% only one poor worker to do everything
one_worker_test() ->
    [1,2,2,2,5,7,11,34,99] = mergesort:do_sort([2,5,7,34,2,1,99,11,2],1,3).

% have to get down to listsize 1
maxsize_1_test() ->
    [1,2,2,2,5,7,11,34,99] = mergesort:do_sort([2,5,7,34,2,1,99,11,2],3,1).

% let's just have one worker do everything
maxsize_100_test() ->
    [1,2,2,2,5,7,11,34,99] = mergesort:do_sort([2,5,7,34,2,1,99,11,2],3,100).
