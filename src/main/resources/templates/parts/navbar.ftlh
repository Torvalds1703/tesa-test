<#include "security.ftlh">
<#import "login.ftlh" as l>

<nav  class="navbar navbar-expand-lg navbar-light bg-light navbar-expand-lg static-top" >
    <a class="navbar-brand" href="/">
        <img src="<#if basePath??>${basePath}/</#if>/static/images/LOGO-TESA2.png" alt="TESA Logo" height="35">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Home</a>
            </li>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/main">Project</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/user-tasks/${currentUserId}">My tasks</a>
                </li>
            </#if>
            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">User list</a>
                </li>
            </#if>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/user/profile">Profile</a>
                </li>
            </#if>

        </ul>

        <div  class="navbar-text ml-auto mr-3"><#if user??>${name}<#else>Please, login</#if></div>
        <@l.logout />
    </div>
</nav>
