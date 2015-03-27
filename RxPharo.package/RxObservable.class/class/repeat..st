basic operator
repeat: object 
	^RxAnonymousObservable create:[:subscribe |
			[true]whileTrue:[subscribe onNext: object]].