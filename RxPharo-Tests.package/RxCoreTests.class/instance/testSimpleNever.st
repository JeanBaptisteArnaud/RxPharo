Operator
testSimpleNever
	"create an Observable that emits no items and does not terminate"

	|observer observer2 observable orderedCollection  |
	orderedCollection := OrderedCollection new.
	observable := RxObservable never.

	observer := RxObserver 
		onNextDo: [:value | orderedCollection add: value ]
		onErrorDo: [:value | Halt now.]
		onCompletedDo: [orderedCollection add: 0].
		
	observer2 := RxObserver 
		onNextDo: [:value | orderedCollection add: value ]
		onErrorDo: [:value | Halt now.]
		onCompletedDo: [orderedCollection add: 0].	
		
	self assert: orderedCollection isEmpty.
	observable subscribe: observer.
	observable subscribe: observer2.
	self assert: orderedCollection isEmpty.
	
