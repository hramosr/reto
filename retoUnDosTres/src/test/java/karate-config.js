function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
  }

  //setting variables by environment
  if (env == 'dev') {
    config.baseUrl = 'https://reqres.in';
  } else if (env == 'qa') {
    config.baseUrl = 'https://reqres.in';
  }

  //adding format to request and response json
  karate.configure('logPrettyRequest', true);
  karate.configure('logPrettyResponse', true);

  return config;
}