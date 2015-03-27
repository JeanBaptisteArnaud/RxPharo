unsubscribe
unsubscribe
	"Unsubscribes from the current observer causing it to transition to the stopped state."
	mutex critical:[
		stopped := true.	
		observers := nil.
	]
	