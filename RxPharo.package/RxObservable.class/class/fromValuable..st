basic operator - from
fromValuable: aValuable
	^RxAnonymousObservable new
		setSubscribe:
			[ :observer | 
			[ 
			observer onNext: aValuable value.
			observer onCompleted ]
				on: Error
				do: [ :error | observer onError: error ] ] yourself