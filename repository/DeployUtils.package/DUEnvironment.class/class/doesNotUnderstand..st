private 
doesNotUnderstand: aMessage
	" creates dynamic messages:
		isXXX (like isDevelopment, isStaging, isProduction"
	| suffix |
 	(aMessage selector beginsWith: 'is')
		ifFalse: [ super doesNotUnderstand: aMessage ].
		
	suffix := aMessage selector allButFirst: 2.
	
	^self currentEnvironment = suffix asLowercase.