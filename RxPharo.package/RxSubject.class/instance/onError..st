testing
onError: anError
	| os |
	mutex
		critical: [ 
			stopped
				ifFalse: [ 
					"ruby clone it here I do not know why?"
					os := observers.
					observers := Set new.
					stopped := true.
					error := anError.
					].
			os do: [ :eachObserver | eachObserver onError: anError ] ]