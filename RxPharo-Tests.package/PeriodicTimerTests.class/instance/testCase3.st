as yet unclassified
testCase3
	| timer delay |
	delay := Delay forMilliseconds: 1200. 
	self initCounter.
	timer := RxTicker run: [self count: self count + 1] every: 500.
	delay wait.
	timer unsubscribe. 
	"If you can anticipate the processor switch do it :-)"
	self assert: 2 equals: count.