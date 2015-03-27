Operator
testSimpleThrow
	"create an Observable that emits no items and does not terminate"

	|observer observer2 observable orderedCollection  |
	orderedCollection := OrderedCollection new.
	observable := RxObservable throw: RxMockError.

	observer := RxObserver 
		onNextDo: [:value | orderedCollection add: value ]
		onErrorDo: [:error| error signal]
		onCompletedDo: [orderedCollection add: 0].
		
	observer2 := RxObserver 
		onNextDo: [:value | orderedCollection add: value ]
		onErrorDo: [:error | error signal]
		onCompletedDo: [orderedCollection add: 0].	
		
	self assert: orderedCollection isEmpty.
	self should: [observable subscribe: observer] raise: RxMockError.
	self should: [observable subscribe: observer2] raise: RxMockError.
	self assert: orderedCollection isEmpty.
	
	
