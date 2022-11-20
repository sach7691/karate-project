//karate-config.js  contains javascript function that returns a JSON object
//The key values defined in the JSON object are available to all feature files
//How to call karate-config.js file?
// No need to write any separate line to call karate-config.js file , it is called by default.
// ******But we must keep this file under src/test/java

function fn(){

    var config = {
        name : 'Sachini', //used in the ConfigDemo.feature
        baseURL : 'https://reqres.in/api'
    }

    //log the value of environment
    var env = karate.env
    console.log('The value of env is : ',env);


    //create different env for QA,Dev etc.
    if(env == 'qa'){
        config.baseURL = 'https://reqres.in/api/qa';
    }else if(env =='dev'){
        config.baseURL  = 'https://reqres.in/api/dev';
    }else{
        config.baseURL  = 'https://reqres.in/api';
    }

    //Set the read and connect timeouts, some test cases fails if reduce the timeouts to 50
    karate.configure('connectTimeout',5000);
    karate.configure('readTimeout',5000);
    return config;
}