Operator
testSimpleRange
	"create an Observable that emits no items and does not terminate"

	|observer  observable orderedCollection  |
	orderedCollection := OrderedCollection new.
	observable := RxObservable range: (1 to: 10000).

	observer := RxObserver 
		onNextDo: [:value | orderedCollection add: value ]
		onErrorDo: [:error| error signal]
		onCompletedDo: [orderedCollection add: 0].

	self assert: orderedCollection isEmpty.
	observable subscribe: observer.
	self assert: orderedCollection equals: ((1 to: 10000) asOrderedCollection addLast: 0; yourself).
	
	
