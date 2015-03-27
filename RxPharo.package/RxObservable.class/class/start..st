basic operator
start: anBlock
"to go deeper"
	^RxAnonymousObservable create:[:subscribe |
			subscribe onNext: anBlock.
			subscribe onCompleted].