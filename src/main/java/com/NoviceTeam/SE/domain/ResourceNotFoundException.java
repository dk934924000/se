package com.NoviceTeam.SE.domain;

public class ResourceNotFoundException extends RuntimeException {
    /**
     * serialVersionUID
     */
    private static final long serialVersionUID = 1L;

    public ResourceNotFoundException(String message) {
        super(message);
    }

    public ResourceNotFoundException(String message, Throwable cause) {
        super(message, cause);
    }
}
