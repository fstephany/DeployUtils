accessing
currentEnvironment
	^OSPlatform current environment 
		at: self environmentVariableName 
		ifAbsent: 'development'.