baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec project: 'SystemLogger' with: [
				spec
					className: #ConfigurationOfSystemLogger;
					versionString: '1.5';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main/' ].
		spec package: #DeployUtils. ].
