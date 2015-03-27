basic operator
repeat: object limit: anInteger
	
	^RxAnonymousObservable create:[:subscribe || count | 
			count := 0.
			[count < anInteger]whileTrue:[subscribe onNext: object. count := count + 1].
			subscribe onCompleted.].