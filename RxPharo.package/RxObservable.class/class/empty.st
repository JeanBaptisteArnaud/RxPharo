basic operator
empty
	"create an Observable that emits no items but terminates normally"
	^RxAnonymousObservable create:[:subscribe |
			subscribe onCompleted.].