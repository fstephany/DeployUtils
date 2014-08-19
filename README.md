# DeployUtils


Deploy Utils is a set of tools to make it easier to deploy Pharo applications. It
provides:

* Environment handling (production, staging, dev) through ENVIRONMENT_VARIABLES
* A custom logger for `SystemLogger`.

## Installation

You can load DeployUtils in an image by doing the following:

    Metacello new
      baseline: 'DeployUtils';
      repository: 'github://fstephany/DeployUtils/repository';
      load.


You can add DeployUtils as a dependency on your project by adding the following
to your metacello configuration:

    spec baseline: 'DeployUtils' with: [
        spec repository: 'github://fstephany/DeployUtils/repository'].


Beware that those two way of loading DeployUtils will load the HEAD of the `master`
branch. You might want to reference a commit or a tag if you want to use this in
production.

## DUEnvironment

Tells you which environment you're running on and load a json file name after
that environment in `{imageDirectory}/config/{env}.json`. You typically have three
files:

* `config/development.json` which is the one that is loaded by default. It contains
  the necessary configuration for your own development machine.
* `config/staging.json` which is the one that should used in the staging environment
* `config/production.json` which is the one that should used in the staging environment.

You can use this to store different configuration for external services
(e.g. database connection, API key for PostMark, which port to use for web servers)

Here's an example of a `development.json` config file:

    {
      "postmarkApiKey" : "azertyuio",
      "pgHost" : "localhost",
      "pgPort" : 5432,
      "pgUsername" : "fstephany",
      "pgPassword" : "",
    }

The environment variable 'PHARO_ENV' defines which environment config file will be
loaded. If there are no environment provided it will fallback to 'development'.

You can query the environment with:

    DUEnvironment currentEnvironment "-> aString"
    DUEnvironment isStaging. "-> true or false"

To retrieve values from the current environment file, simply do:

    DUEnvironment at: 'postmarkApiKey' "-> azertyuio"

On UNIX, you can specify an environment variable by starting your Pharo image
with the following:

    $ PHARO_ENV=production pharo-vm pharo.image

