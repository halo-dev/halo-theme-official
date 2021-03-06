<#include "components/layout.ftl">
<@layout title="${sheet.title!} - ${blog_title!}" canonical="${sheet.fullPath!}" image="${settings.default_share_image!}">
    <section class="hero" style="background-image: url(${settings.background_image!});box-shadow: 0 2px 0 0 #f5f5f5;">
        <div class="hero-body">
            <div class="container">
                <h1 class="title is is-spaced">
                    ${sheet.title!}
                </h1>
                <h2 class="subtitle">
                    你可以在这里找到你喜欢的主题
                </h2>
            </div>
        </div>
    </section>

    <section style="margin-top: 50px">
        <div class="container">
            <@postTag method="listByCategorySlug" categorySlug="${metas.themes_category_slug!'themes'}">
                <#list posts as post>
                    <#if post_index%4=0>
                        <div class="columns">
                    </#if>
                    <div class="column is-3">
                        <div class="card theme-item">
                            <div class="card-image">
                                <figure class="image is-3by2">
                                    <img class="lazyload" data-src="${post.thumbnail!}" alt="${post.title!}"/>
                                </figure>
                            </div>
                            <div class="card-content">
                                <div class="media">
                                    <div class="media-content">
                                        <p class="title is-4">${post.title!}</p>
                                    </div>
                                </div>
                            </div>
                            <footer class="card-footer">
                                <p class="card-footer-item">
                                  <span>
                                      <a href="${post.fullPath!}">详情</a>
                                  </span>
                                </p>
                                <p class="card-footer-item">
                                  <span>
                                    <a href="${post.metas.theme_repo!}" target="_blank">下载</a>
                                  </span>
                                </p>
                            </footer>
                        </div>
                    </div>
                    <#if post_index%4=3>
                        </div>
                    </#if>
                </#list>
            </@postTag>

            <div class="columns">
                <div class="column">
                    <ins class="adsbygoogle"
                         style="display:block"
                         data-ad-client="ca-pub-5271828906478846"
                         data-ad-slot="8003647093"
                         data-ad-format="auto"
                         data-full-width-responsive="true"></ins>
                    <script>
                        (adsbygoogle = window.adsbygoogle || []).push({});
                    </script>
                </div>
            </div>
        </div>
    </section>
</@layout>