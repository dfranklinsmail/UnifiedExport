type inference
typeOf: env
	"Let (x,e,e2) -> 
           let ty_e = typeof env e in
           typeof ((x,gen ty_e)::env) e2"
	| typE |
	env enterLevel.
	typE := exp1 typeOf: env.
	env leaveLevel.
	^ exp2 typeOf: (varname arrow: (typE gen) prependTo: env).
