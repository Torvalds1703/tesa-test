<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">
<@c.page>

    <div class="container">
        <div class="row">
            <div class="col">
                <div class="card h-100">
                    <div class="card-body d-flex justify-content-between align-items-center">
                        <h4>${userChannel.username}</h4>
                        <#if !isCurrentUser>
                            <#if isSubscriber>
                                <a class="btn btn-dark" href="/user/unsubscribe/${userChannel.id}">Unsubscribe</a>
                            <#else>
                                <a class="btn btn-success" href="/user/subscribe/${userChannel.id}">Subscribe</a>
                            </#if>
                        </#if>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <div class="card-body d-flex justify-content-between align-items-center">
                        <div><h5>Project </h5></div>
                        <h5><a href="/user/subscriptions/${userChannel.id}/list">${subscriptionsCount}</a></h5>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card h-100">
                    <div class="card-body d-flex justify-content-between align-items-center">
                        <div><h5>Task</h5></div>
                        <h5><a href="/user/subscribers/${userChannel.id}/list">${subscribersCount}</a></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br>
    <#if isCurrentUser && task??>
        <#include "parts/task-edit.ftlh"/>
    </#if>

<#include "parts/task-list.ftlh" />
</@c.page>

