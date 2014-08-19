baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/TaMere/DeployUtils/main/'.
		spec project: 'SystemLogger' with: [
				spec
					className: #ConfigurationOfSystemLogger;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec package: #DeployUtils. ].
