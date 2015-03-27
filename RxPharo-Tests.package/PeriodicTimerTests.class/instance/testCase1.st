as yet unclassified
testCase1
	| timer delay |
	delay := Delay forMilliseconds: 1110. 
	self initCounter.
	timer := RxTicker run: [self count: self count + 1] every: 50.
	delay wait.
	timer unsubscribe. 
	"If you can anticipate the processor switch do it :-)"
	self assert: ({ 19. 20. 21.} includesAll: {count}).