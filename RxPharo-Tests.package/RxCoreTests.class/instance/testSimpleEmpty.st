Operator
testSimpleEmpty
	"create an Observable that emits no items but terminates normally"

	|observer observer2 observable orderedCollection  |
	orderedCollection := OrderedCollection new.
	observable := RxObservable empty.

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
	self assert: orderedCollection  equals: {0. 0} asOrderedCollection .
	
