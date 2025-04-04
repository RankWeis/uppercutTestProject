package org.example;

public class ExceptionThrower {

    public static void fail() {
        new RuntimeException("fail");
    }
}
