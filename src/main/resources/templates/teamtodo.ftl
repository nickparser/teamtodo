<#import "components/major.ftl" as major>

<@major.page>
    <div class="row">
        <div class="col-8">
            <div class="card-columns">
                <#--<#if subjects??>-->
                    <#list subjects as subject>
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">${subject.title}</h5>
                            <p class="card-text">${subject.description}</p>
                            <a href="" class="card-link">More</a>
                        </div>
                    </div>
                    </#list>
                <#--<#else >-->
                    <#--<h2>You don't have any todos</h2>-->
                <#--</#if>-->
            </div>
        </div>
        <div class="col">
            <form action="/teamtodo" method="post">
                <div class="form-group">
                    <label>Enter title</label>
                    <input name="title" type="text" class="form-control" placeholder="Enter title">
                </div>
                <div class="form-group">
                    <label>Enter description</label>
                    <input name="description" type="text" class="form-control" placeholder="Enter description">
                </div>
                <input type="hidden" name="_csrf" value="${_csrf.token}" />
                <button class="btn btn-primary" type="submit">Create</button>
            </form>
        </div>
    </div>
</@major.page>