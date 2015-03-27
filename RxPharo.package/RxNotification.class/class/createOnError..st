api
createOnError: anErrorBlock
	^RxOnErrorNotification new
		error: anErrorBlock;
		yourself