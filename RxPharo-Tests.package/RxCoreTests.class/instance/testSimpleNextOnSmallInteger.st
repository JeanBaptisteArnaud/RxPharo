Specific Observer - SmallInteger
testSimpleNextOnSmallInteger
	| receiver observer observable |
	receiver := false.
	observer := RxObserver 
		onNextDo: [:value | receiver := true ]. 
	observable :=	RxObservable just: 1.

	self deny: receiver.
	observable subscribe: observer.
	self assert: receiver.