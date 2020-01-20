package com.da2i.tricountda2i.exceptions;

public class UserNotFoundException extends RuntimeException {
    public UserNotFoundException(Integer id) {
        super("Could not found user " + id);
    }
}
