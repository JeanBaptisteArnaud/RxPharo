AutoDetach
testDoNotDetatchOnJustNext
	| mock autoDetach complete error receiver observer observable |
	receiver := false.
	complete := false.
	error := false.
	observer := RxObserver 
		onNextDo: [:value | receiver := true.]
		onErrorDo: [:value | error := true.]
		onCompletedDo: [complete := true].
	mock := RxMock new. 
	observable :=	mock simpleObservableWithOnlyOneNext.
	autoDetach := observable subscribe: observer.
	self deny: error.
	self deny: complete.
	self deny: autoDetach isUnsubscribed.