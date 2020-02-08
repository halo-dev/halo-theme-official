<nav class="navbar is-transparent has-shadow is-spaced">
    <div class="container">
        <div class="navbar-brand">
            <div class="navbar-burger" data-target="navbarTransparent">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </div>

        <div id="navbarTransparent" class="navbar-menu">
            <div class="navbar-start">
                <@menuTag method="treeByTeam" team="main">
                    <#list menus?sort_by('priority') as menu>
                        <#if menu.children?? && menu.children?size gt 0>
                            <div class="navbar-item has-dropdown is-hoverable">
                                <a class="navbar-link" href="#">
                                    ${menu.name!}
                                </a>
                                <div class="navbar-dropdown is-boxed">
                                    <#list menu.children?sort_by('priority') as child>
                                        <a class="navbar-item" href="${child.url!}" target="${child.target!}">
                                            ${child.name!}
                                        </a>
                                    </#list>
                                </div>
                            </div>
                        <#else>
                            <a class="navbar-item" href="${menu.url!}" target="${menu.target!}">
                                ${menu.name!}
                            </a>
                        </#if>
                    </#list>
                </@menuTag>
            </div>

            <div class="navbar-end">
                <div class="navbar-item">
                    <div class="field is-grouped">
                        <p class="control">
                            <a class="button is-black is-small" href="https://github.com/halo-dev/halo" target="_blank">
                                <span class="icon">
                                    <i class="ri-github-fill"></i>
                                </span>
                                <span>Github</span>
                            </a>
                        </p>
                        <p class="control">
                            <a class="button is-danger is-small" href="https://bbs.halo.run" target="_blank">
                                <span class="icon">
                                    <i class="ri-discuss-fill"></i>
                                </span>
                                <span>BBS</span>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>