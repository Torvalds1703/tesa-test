package com.example.networds.entity.enums;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    ADMIN, MANAGER, DEVELOPER, TESTER, USER;

    @Override
    public String getAuthority() {
        return name();
    }
}
