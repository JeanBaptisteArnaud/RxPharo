Operator
testSimpleDefer
	"Defer — do not create the Observable until the observer subscribes, and create a fresh Observable for each observer"

	|observer observer2 observable orderedCollection  |
	orderedCollection := OrderedCollection new.
	observable := RxObservable defer: [:subscribe | 
		orderedCollection removeAll.
		subscribe onNext: 3; onNext: 2; onNext: 1; onCompleted].

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
	self assert: orderedCollection  equals: {3. 2. 1. 0} asOrderedCollection .
	
