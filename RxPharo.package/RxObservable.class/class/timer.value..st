basic operator
timer: aTime value: anObject 
"to go deeper"
	^RxAnonymousObservable create:[:subscribe |
			(Delay forMilliseconds: aTime) wait.
			subscribe onNext: anObject.
			subscribe onCompleted].