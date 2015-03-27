Observables
simpleObservableWithOnlyOneNext
	^RxAnonymousObservable new
		setSubscribe: [ :observer | 
			[observer onNext: self.]
				on: Error
				do: [ :error | 
					observer onError: error ] ];
		yourself