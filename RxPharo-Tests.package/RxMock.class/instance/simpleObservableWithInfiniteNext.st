Observables
simpleObservableWithInfiniteNext
	^ RxAnonymousObservable new
		setSubscribe: [ :observer | 
					[ [ true ] whileTrue: [ observer onNext: self ] ]
						on: Error
						do: [ :error | observer onError: error ] ];
		yourself