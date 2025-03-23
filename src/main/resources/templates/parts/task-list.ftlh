<#include "security.ftlh">
<#import "pager.ftlh" as p>
<div style="min-height: 100vh;">
    <div class="card-columns" >
        <#list page.content as task>
            <div class="card my-3">
                <#if task.filename??>
                    <img src="/img/${task.filename}" class="card-img-top">
                </#if>
                <div class="m-2">
                    <span>${task.text}</span><br/>
                    <i>#${task.tag}</i>
                </div>
                <div class="card-footer text-muted clearfix d-flex justify-content-between">
                    <div>
                        <a href="/user-tasks/${task.author.id}" class="me-auto">${task.authorName}</a>
                    </div>
                    <div style="margin-left: 30%;">
                        <#if task.author.id == currentUserId>
                            <a class="btn btn-primary" href="/user-tasks/${task.author.id}?task=${task.id}">
                                Edit
                            </a>
                            <a class="btn btn-danger" href="/del-user-tasks/${task.author.id}?task=${task.id}">
                                Delete
                            </a>
                        </#if>
                    </div>
                </div>

            </div>
        <#else>
            No task
        </#list>
    </div>

</div>


<@p.pager url page />
