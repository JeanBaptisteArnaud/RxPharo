Operator
testSimpleCreate
	"Create — create an Observable from scratch by calling observer methods programmatically"
	|observer observable orderedCollection  |
	orderedCollection := OrderedCollection new.
	observable := RxObservable create: [:subscriber | subscriber onNext: 3; onNext: 2; onNext: 1; onCompleted].
	observer := RxObserver 
		onNextDo: [:value | orderedCollection add: value ]
		onErrorDo: [:value | Halt now.]
		onCompletedDo: [orderedCollection add: 0].
	self assert: orderedCollection isEmpty.
	observable subscribe: observer.
	self assert: orderedCollection  equals: {3. 2. 1. 0} asOrderedCollection .
	
