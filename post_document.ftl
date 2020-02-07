<#include "components/layout.ftl">
<#include "components/comment.ftl">
<@layout title="${metas.doc_menu_title!}：${post.title!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${post.summary!}" canonical="${context!}/archives/${post.url!}" image="${settings.default_share_image!}">
    <section class="hero" style="background-image: url(${settings.background_image!});box-shadow: 0 2px 0 0 #f5f5f5;">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">
                    ${metas.doc_menu_title!}
                </h1>
                <h2 class="subtitle">
                    ${post.title!}
                </h2>
            </div>
        </div>
    </section>

    <section class="section">
        <div class="container">
            <div class="columns is-variable is-8">
                <div class="column is-one-quarter">
                    <aside class="menu">
                        <@menuTag method="treeByTeam" team="${metas.doc_menu_team!}">
                            <#list menus?sort_by('priority') as menu>
                                <p class="menu-label"><span>${menu.name!}</span></p>
                                <#if menu.children?? && menu.children?size gt 0>
                                    <ul class="menu-list">
                                        <#list menu.children?sort_by('priority') as child>
                                            <li><a href="${child.url!}" target="${child.target!}">${child.name!}</a></li>
                                        </#list>
                                    </ul>
                                </#if>
                            </#list>
                        </@menuTag>
                    </aside>
                </div>
                <div class="markdown-body column content is-three-quarters">
                    <div class="columns is-gapless is-marginless is-vcentered">
                        <div class="column"><h1>${post.title!}</h1></div>
                        <div class="column"><span class="is-pulled-right is-size-7">最后更新时间：${post.editTime?string('yyyy-MM-dd')}</span></div>
                    </div>
                    <div class="post-content-wrap">
                        ${post.formatContent!}
                    </div>
                    <div class="post-comment-wrap">
                        <@comment post,"post" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</@layout>