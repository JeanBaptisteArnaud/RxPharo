api
run: anBlock every: duration
	interval := duration.
	thread := [ 
	| shouldRun elapsed delay |
	shouldRun := true.
	delay := Delay forMilliseconds: interval.
	elapsed := 0.
	delay wait.
	[ shouldRun ]
		whileTrue: [ 
			elapsed := Time millisecondsToRun: anBlock.
			delay
				setDelay: interval - elapsed;
				wait.
			mutex critical: [ shouldRun := unsubscribed not ] ] ] fork