<#import "components/major.ftl" as major>
<#import "components/log.ftl" as log>

<@major.page>
    <div class="row">
        <div class="col-sm"></div>
        <div class="col-sm">
            <#if message??>
                <div class="alert alert-danger" role="alert">
                    ${message}
                </div>
            </#if>
            <@log.login act="/registration" btn="Create account"/>
        </div>
        <div class="col-sm"></div>
    </div>
</@major.page>