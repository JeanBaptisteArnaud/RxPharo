basic operator
range: anInterval
	"create an Observable that emits a particular range of sequential integers"
	^RxAnonymousObservable create:[:subscribe |
			anInterval do:[:eachValue | subscribe onNext: eachValue].
			subscribe onCompleted.
			].