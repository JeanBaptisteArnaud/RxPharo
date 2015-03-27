as yet unclassified
combinatoredStream

	^ source combineLatestOf: (RxObservable fromCollection: (1 to: 10)) with: [ :a :b | a + b ]