Specific Observer - Collection
testSimpleMultipleNextOnCollection
	|orderedCollection count observer observable |
	count := 0.
	orderedCollection := OrderedCollection new.
	orderedCollection addAll: #(1 2 3 4 5 6 7 8 9) .
	observer := RxObserver 
		onNextDo: [:value | count := count + 1. ]. 
	observable :=	RxObservable fromCollection: orderedCollection.
	
	self deny: (count = 9).
	observable subscribe: observer.
	self assert: count equals: 9.