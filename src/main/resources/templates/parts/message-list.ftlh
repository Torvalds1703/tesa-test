<#include "security.ftlh">

<div class="card-columns">
    <#list messages as message>
        <div class="card my-3">
            <#if message.filename??>
                <img src="/img/${message.filename}" class="card-img-top">
            </#if>
            <div class="m-2">
                <span>${message.text}</span><br/>
                <i>#${message.tag}</i>
            </div>
            <div class="card-footer text-muted clearfix d-flex justify-content-between">
                <div>
                    <a href="/user-messages/${message.author.id}" class="me-auto">${message.authorName}</a>
                </div>
                <div style="margin-left: 90px;">
                    <#if message.author.id == currentUserId>
                        <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                            Edit
                        </a>
                        <a class="btn btn-danger" href="/del-user-messages/${message.author.id}?message=${message.id}">
                            Delete
                        </a>
                    </#if>
                </div>
            </div>

        </div>
    <#else>
        No message
    </#list>
</div>