as yet unclassified
testCase2
	| timer delay |
	delay := Delay forMilliseconds: 700. 
	self initCounter.
	timer := RxTicker run: [self count: self count + 1] every: 500.
	delay wait.
	timer unsubscribe. 
	"If you can anticipate the processor switch do it :-)"
	self assert: 1 equals: count.