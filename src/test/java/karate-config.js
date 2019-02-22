function() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
	baseUrl: 'http://httpbin.org'
  }
  config = karate.callSingle('classpath:reusable/js/Utility.js',config);
  config = karate.callSingle('classpath:reusable/js/HttpbinService.js',config);
  
  config["JavaUtils"] = Java.type("reusable.java.JavaUtils")
  
  if (env == 'dev') {
    karate.log("karate test in dev environment");
    config["AuthCode"] = karate.callSingle("classpath:reusable/feature/demoAuth.feature").authToken;
  } else if (env == 'e2e') {
	  karate.log("karate test in e2e environment");
  }
  return config;
}