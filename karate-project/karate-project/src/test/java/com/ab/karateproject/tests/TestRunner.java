package com.ab.karateproject.tests;

import com.intuit.karate.junit5.Karate;


public class TestRunner {

    @Karate.Test
    Karate testSample() {

        return Karate.run("classpath:com/ab/karateproject/features/sample1.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testFullPath() {
        return Karate.run("classpath:com/ab/karateproject/features/sample2.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate testFull() {
        return Karate.run("../features/sample2.feature").relativeTo(getClass());
    }

    @Karate.Test
        Karate userDetails() {
        return Karate.run("classpath:com/ab/karateproject/features/userDetails2.feature").relativeTo(getClass());
    }


}
