<#macro login act, btn>
    <form action="${act}" method="post">
        <div class="form-group">
            <label>Enter username</label>
            <input name="username" type="text" class="form-control" placeholder="username">
        </div>
        <div class="form-group">
            <label>Enter password</label>
            <input name="password" type="password" class="form-control" placeholder="password">
        </div>
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit">${btn}</button>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button class="btn btn-primary" type="submit">Sing out</button>
    </form>
</#macro>