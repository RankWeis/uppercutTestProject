function fn() {
  var config = {
    mainUrl: "https://dummyjson.com/auth"
  }

  const result = karate.callSingle('classpath:dummyjson/login.feature')
  config.auth = {"Authorization": `Bearer ${result.token}`}

  karate.log("got here")
  // Java.type("org.example.ExceptionThrower").fail();
  karate.log("got here too")
  return config;
}