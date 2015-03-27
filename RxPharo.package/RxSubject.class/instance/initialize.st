initialization
initialize
		observers := Set new.
      mutex := Mutex new.
      disposed := false.
      stopped := false.
      error := nil.
