testing
subscribe: anObserver
	mutex
		critical: [ 
			^ stopped
				ifFalse: [ 
					observers add: anObserver.
					RxInnerSubscription newForObservable: self andObserver: anObserver ]
				ifTrue: [ 
					error
						ifNil: [ 
							anObserver onCompleted.
							RxSubscription empty ]
						ifNotNil: [ 
							anObserver onError: error.
							RxSubscription empty ] ] ]