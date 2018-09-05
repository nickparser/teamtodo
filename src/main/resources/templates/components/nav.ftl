<#include "security.ftl">
<#import "log.ftl" as log>
<#assign requestUri = springMacroRequestContext.requestUri >
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="navbar-brand" href="/">Teamtodo</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <#if requestUri?contains("/login")>
                <li class="nav-item active">
                    <a class="nav-link" href="/registration">Registration</a>
                </li>
            </#if>
        </ul>

        <div class="navbar-text mr-3">${name}</div>
        <@log.logout/>
    </div>
</nav>