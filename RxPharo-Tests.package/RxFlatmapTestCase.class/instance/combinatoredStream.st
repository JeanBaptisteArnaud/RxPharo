as yet unclassified
combinatoredStream

	^ source flatmap: [ :each | RxObservable fromCollection: (1 to: each) ]