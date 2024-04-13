<#import "parts/common.ftlh" as c>

<@c.page>
    <form method="get" action="/main">
    <div class="input-group">

        <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Search by tag" />
        <div class="input-group-append">
            <button type="submit" class="btn btn-primary">Search</button>
        </div>

    </div>
    </form>
    <br>

    <#include "parts/message-edit.ftlh" />


    <#include "parts/message-list.ftlh" />



</@c.page>

<#include "parts/footer.ftlh"/>