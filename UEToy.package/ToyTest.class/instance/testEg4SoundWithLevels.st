tests
testEg4SoundWithLevels
	" fun x -> let y = fun z -> x z in y "

	| toy type t1 t2 correctType |
	toy := ToyLam
		varname: #x
		exp:
			(ToyLet
				varname: #y
				exp: (ToyLam varname: #z exp: (ToyApp exp: (ToyVar varname: #x) exp: (ToyVar varname: #z)))
				exp: (ToyVar varname: #y)).
	t1 := ToyTVar newvar.
	t2 := ToyTVar newvar.
	correctType := ToyTArrow type: (ToyTArrow type: t1 arrow: t2) arrow: (ToyTArrow type: t1 arrow: t2).
	self halt.
	type := toy typeOf: MapList new.
	self assert: type equals: correctType.
