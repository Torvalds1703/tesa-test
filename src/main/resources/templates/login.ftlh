<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>

<@c.page>

        <#if Session?? && Session.SPRING_SECURITY_LAST_EXCEPTION??>
            <div class="alert alert-danger" role="alert">
                ${Session.SPRING_SECURITY_LAST_EXCEPTION.task}
            </div>
        </#if>
        <#if task??>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                        <div class="alert alert-${messageType} text-center" role="alert">
                            ${task}
                        </div>
                    </div>
                </div>
            </div>
        </#if>
        <@l.login "/login" false/>





</@c.page>
