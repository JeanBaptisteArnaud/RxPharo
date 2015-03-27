as yet unclassified
observer: anObserver
	observer := anObserver.
	subscription := RxSingleAssignmentSubscription new.	"Maybe change Error to RxDetachException see later"
	onNextAction := [ :value | 
		 observer onNext: value].
	onErrorAction := [ :value | 
	observer onError: value.
	self unsubscribe ].
	onCompletedAction := [ 
	observer onCompleted.
	self unsubscribe ]