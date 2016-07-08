<#include "macro-admin.ftl">
<#include "../macro-pagination.ftl">
<@admin "invitecodes">
<div class="list content admin">
    <div class="fn-hr10"></div>
    <form method="POST" action="invitecodes/generate" class="form wrapper">
        <input name="quantity" type="text" placeholder="${quantityLabel}"/>
        <button type="submit" class="green">${generateLabel}</button>
    </form>
    <ul>
        <#list invitecodes as item>
        <li>
            <div class="fn-clear first">
                ${item.code}&nbsp;
                <#if 0 == item.status>
                <span class="ft-blue">${usedLabel}</span>
                <#elseif 1 == item.status>
                <font class="ft-green">${unusedLabel}</font>
                <#else>
                <font class="ft-red">${stopUseLabel}</font>
                </#if>
                <a href="/admin/invitecode/${item.oId}" class="fn-right icon-edit" title="${editLabel}"></a>
            </div>
        </li>
        </#list>
    </ul>
    <@pagination url="/admin/invitecodes"/>
</div>
</@admin>