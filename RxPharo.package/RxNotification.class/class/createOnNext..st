api
createOnNext: anNextBlock
	^RxOnNextNotification new
		next: anNextBlock;
		yourself