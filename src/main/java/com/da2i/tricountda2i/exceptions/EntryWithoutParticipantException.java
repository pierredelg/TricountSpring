package com.da2i.tricountda2i.exceptions;

public class EntryWithoutParticipantException extends Exception{
    public EntryWithoutParticipantException() {
        super("Une écriture ne peut avoir aucun participant");
    }
}
