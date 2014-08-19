baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: github://fstephany/DeployUtils/repository.
		spec project: 'SystemLogger' with: [
				spec
					className: #ConfigurationOfSystemLogger;
					versionString: #'1.5';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec package: #DeployUtils. ].
