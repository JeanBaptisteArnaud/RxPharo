basic operator
create: anBlock
	"Create — create an Observable from scratch by calling observer methods programmatically"
	^ RxAnonymousObservable new
		setSubscribe: [ :observer | 
				anBlock value: observer ];
		yourself