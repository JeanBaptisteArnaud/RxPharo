testing
onNext: anNextValue
	mutex
		critical: [ 
			observers do: [ :eachObserver | eachObserver onNext: anNextValue ]]