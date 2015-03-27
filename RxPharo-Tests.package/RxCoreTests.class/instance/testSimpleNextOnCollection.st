Specific Observer - Collection
testSimpleNextOnCollection
	|orderedCollection receiver observer observable |
	receiver := false.
	orderedCollection := OrderedCollection new.
	orderedCollection add: 1.
	observer := RxObserver 
		onNextDo: [:value | receiver := true ]. 
	observable :=	RxObservable fromCollection: orderedCollection.
	
	self deny: receiver.
	observable subscribe: observer.
	self assert: receiver.