<#import "parts/common.ftlh" as c>

<@c.page>
    <h1 style="text-align: center">Панель администратора</h1><hr>
    <table class="table table-hover table-dark">
        <tr>
            <th scope="col">Username</th>
            <th scope="col">Активность</th>
            <th scope="col">Бан</th>
            <th scope="col">Роли</th>
            <th scope="col">Редактирование</th>
        </tr>
       <#list users as user>
                <tr>
                    <td>${user.username}</td>
                    <th><#if user.active>true<#else>false</#if></th>
                    <th>
                        <input type="submit" class="btn btn-light" value="Бан">
                    </th>
                    <td><#list user.roles as role>${role}<#sep>, </#list></td>
                    <td><a href="/user/${user.id}">edit</a></td>
                </tr>
        <#else >
            <h3>Пользователей нет</h3>
        </#list>
    </table>
    <br>
    <br>
    <br>
    <br>
</@c.page>

<#include "parts/footer.ftlh"/>