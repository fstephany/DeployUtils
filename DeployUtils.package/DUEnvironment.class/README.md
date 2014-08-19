Tells you which environment you're running on and load a json file name after that environment in {imageDirectory}/config/{env}.json

You can use this to store different configuration for external services (e.g. database connection, API key for PostMark, which port to use for web servers)

Read the environment in the environment varialbe 'PHARO_ENV'. If there are no environment provided. It will fallback to 'development'.

TMEnvironment currentEnvironment -> aString 
will return 'development' if no PHARO_ENV is defined.

You can query the environment with:

DUEnvironment isStaging. "-> true or false"
DUEnvironment at: 'postmarkApiKey'

