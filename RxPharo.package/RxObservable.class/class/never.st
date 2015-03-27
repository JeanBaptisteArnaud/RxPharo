basic operator
never
	"create an Observable that emits no items and does not terminate"
	^RxAnonymousObservable create: [:subscribe | ].