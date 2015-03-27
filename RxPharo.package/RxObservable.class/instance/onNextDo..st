subscription
onNextDo: aNextValueCallback

	^ self subscribe: (RxObserver onNextDo: aNextValueCallback)