<#include "components/layout.ftl">
<@layout title="${sheet.title!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/s/${sheet.url!}" image="${settings.default_share_image!}">
    <section class="hero" style="background-image: url(${settings.background_image!});box-shadow: 0 2px 0 0 #f5f5f5;">
        <div class="hero-body">
            <div class="container">
                <h1 class="title is-spaced">
                    ${sheet.title!}
                </h1>
                <h2 class="subtitle">
                    获取 Halo 的最新动态，使用技巧等
                </h2>
            </div>
        </div>
    </section>

    <section style="margin-top: 50px">
        <div class="container">
            <@postTag method="listByCategorySlug" categorySlug="blog">
                <#list posts?sort_by('createTime')?reverse as post>
                    <#if post_index%2=0>
                        <div class="columns">
                    </#if>
                        <div class="column is-6">
                            <a href="${context!}/archives/${post.url!}">
                                <div class="card blog-item">
                                    <div class="card-content">
                                        <div class="media">
                                            <div class="media-content">
                                                <p class="title is-4">${post.title!}</p>
                                            </div>
                                        </div>

                                        <div class="content">
                                            ${post.summary!}...
                                            <br>
                                            <br>
                                            <time datetime="2016-1-1">${post.createTime?string('yyyy-MM-dd HH:mm:ss')}</time>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    <#if post_index%2=1>
                        </div>
                    </#if>
                </#list>
            </@postTag>
        </div>
    </section>
</@layout>