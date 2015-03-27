basic operator
interval: value
	"create an Observable that emits a sequence of integers spaced by a given time interval"

	^RxIntegerLadderInterval every: value