<#import "components/major.ftl" as major>
<#import "components/log.ftl" as log>

<@major.page>
    <div class="row">
        <div class="col-sm"></div>
        <div class="col-sm">
            <@log.login act="/login" btn="Sing in"/>
        </div>
        <div class="col-sm"></div>
    </div>
</@major.page>