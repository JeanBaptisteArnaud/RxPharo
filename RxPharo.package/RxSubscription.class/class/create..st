as yet unclassified
create: anBlock
	 ^RxAnonymousSubscription new 
		unsubscribeAction: anBlock;
		yourself