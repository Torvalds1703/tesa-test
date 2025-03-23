<#import "parts/common.ftlh" as c>
<#import "parts/login.ftlh" as l>



<@c.page>
    ${task?ifExists}
    <@l.login "/registration" true />
</@c.page>
