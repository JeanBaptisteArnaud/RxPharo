basic operator
throw: anObject
	^RxAnonymousObservable create:[:subscribe |
			subscribe onError: anObject.].