unsubscribe
unsubscribeObserver: anObserver
	mutex critical:[
		observers remove: anObserver.]     
