<#include "components/layout.ftl">
<@layout title="${sheet.title!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/s/${sheet.url!}" image="${settings.default_share_image!}">
    <section class="hero" style="background-image: url(${settings.background_image!});box-shadow: 0 2px 0 0 #f5f5f5;">
        <div class="hero-body">
            <div class="container">
                <h1 class="title is-spaced">
                    ${sheet.title!}
                </h1>
                <h2 class="subtitle">
                    正在使用 Halo 进行创作的小伙伴儿
                </h2>
            </div>
        </div>
    </section>

    <section style="margin-top: 50px">
        <div class="container">
            <@linkTag method="list">
                <#list links?sort_by('priority') as link>
                    <#if link_index%4=0>
                        <div class="columns">
                    </#if>
                    <div class="column is-3">
                        <div class="card user-wall-item">
                            <div class="card-content">
                                <div class="media">
                                    <div class="media-left">
                                        <figure class="image is-48x48">
                                            <img class="lazyload" data-src="${link.logo!}" alt="${link.name!}">
                                        </figure>
                                    </div>
                                    <div class="media-content">
                                        <p class="title is-4">${link.name!}</p>
                                        <p class="subtitle is-6">
                                            <a href="${link.url!}" target="_blank">${link.url!}</a>
                                        </p>
                                    </div>
                                </div>

                                <div class="content">
                                    “${link.description!}”
                                </div>
                            </div>
                        </div>
                    </div>
                    <#if link_index%4=3>
                        </div>
                    </#if>
                </#list>
            </@linkTag>
        </div>
    </section>
</@layout>