as yet unclassified
combinatoredStream

	^ source mergeWith: (RxObservable fromCollection: (1 to: 10))