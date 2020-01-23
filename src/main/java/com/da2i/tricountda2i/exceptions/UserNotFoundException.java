package com.da2i.tricountda2i.exceptions;

public class UserNotFoundException extends RuntimeException {
    public UserNotFoundException(Integer id) {
        super("Impossible de trouver l'utilisateur " + id);
    }
}
