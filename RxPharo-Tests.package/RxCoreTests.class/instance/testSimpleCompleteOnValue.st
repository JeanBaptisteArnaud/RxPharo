Specific Observer - Value
testSimpleCompleteOnValue
	| complete observer observable |
	"Check the semantic on Value"
	complete := false.
	observer := RxObserver 
		onNextDo: [:value |  ]
		onErrorDo: [:value | ]
		onCompletedDo: [complete := true]. 
	observable :=	RxObservable fromValuable: 1.

	self deny: complete.
	observable subscribe: observer.
	self assert: complete.