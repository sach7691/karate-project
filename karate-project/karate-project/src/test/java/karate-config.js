function fn(){

    var config = {
        name : "sachini",
        address : "london"
    };

    karate.configure('connectTimeout',5000)
    karate.configure('readTimeout',5000)

    return config;
}