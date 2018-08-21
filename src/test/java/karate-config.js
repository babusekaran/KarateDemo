function() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	myVarName: 'someValue',
	baseUrl: 'http://httpbin.org'
  }
  
  config = karate.callSingle('classpath:Utility.js',config);
  config = karate.callSingle('classpath:HttpbinService.js',config);
  
  if (env == 'dev') {
    // customize
    // e.g. config.foo = 'bar';
  } else if (env == 'e2e') {
    // customize
  }
  return config;
}