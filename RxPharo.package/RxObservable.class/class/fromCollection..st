basic operator - from
fromCollection: aCollection
	^RxAnonymousObservable new
		setSubscribe:
			[ :observer | 
			aCollection do: [ :each | observer onNext: each ].
			observer onCompleted ] yourself