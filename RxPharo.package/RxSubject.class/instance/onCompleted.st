testing
onCompleted
	| os |
	mutex
		critical: [ 
			stopped
				ifFalse: [ 
					"ruby clone it here I do not know why?"
					os := observers.
					observers := Set new.
					stopped := true ].
			os do: [ :eachObserver | eachObserver onCompleted ] ]