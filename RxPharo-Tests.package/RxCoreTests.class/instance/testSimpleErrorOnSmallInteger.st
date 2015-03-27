Specific Observer - SmallInteger
testSimpleErrorOnSmallInteger
	| error receiver observer observable |
	"To check and Fix maybe later check the semantic of just"
	receiver := false.
	error := false.
	observer := RxObserver 
		onNextDo: [:value | Error signal: 'Bwwwwaaaa!'. receiver := true.  ]
		onErrorDo: [:value | error := true.]. 
	observable :=	RxObservable just: 1.

	self deny: error.
	observable subscribe: observer.
	self assert: error.