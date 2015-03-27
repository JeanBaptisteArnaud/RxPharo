Specific Observer - SmallInteger
testSimpleCompleteOnSmallInteger
	| complete observer observable |
	"Check the semantic on Value"
	complete := false.
	observer := RxObserver 
		onNextDo: [:value |  ]
		onErrorDo: [:value | ]
		onCompletedDo: [complete := true]. 
	observable :=	RxObservable just: 1.

	self deny: complete.
	observable subscribe: observer.
	self assert: complete.