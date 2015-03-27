as yet unclassified
clear
	|old |    
	mutex critical:[
        old := subscriptions.
        subscriptions := Set new.
	].
	old do: [:subscription| subscription unsubscribe].