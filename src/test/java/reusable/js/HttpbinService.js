function(config){
	
	/**
	 * HTTP bin service feature Lib
	 */

	config['HttpBin'] = {};
	
	try {
		
		config.HttpBin['getService'] = read('classpath:reusable/feature/httpbinGetService.feature');
		config.HttpBin['postService'] = read('classpath:reusable/feature/httpbinPostService.feature');
		
	}
	catch (err) {
		karate.log("Error initialising HttpBin service feature Lib "+err)
	}

	return config;
}