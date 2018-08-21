function(config){
	
	config['HttpBin'] = {};
	
	config.HttpBin['getService'] = read('classpath:reusable/httpbinGetService.feature');
	config.HttpBin['postService'] = read('classpath:reusable/httpbinPostService.feature');
	
	return config;
}