private 
envVarDictionary
	| envFile |
	envFile := FileLocator imageDirectory 
		/ 'config' 
		/ (self currentEnvironment , '.json').
	
	envFile exists 
		ifTrue: [ ^(NeoJSONReader on: envFile readStream) parseMap ]
		ifFalse: [ NotFound signal: envFile fullPath ].