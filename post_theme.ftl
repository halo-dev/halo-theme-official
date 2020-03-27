<#include "components/layout.ftl">
<#--<#include "components/comment.ftl">-->
<@layout title="主题：${post.title!} - ${blog_title!}" canonical="${post.fullPath!}" image="${post.thumbnail!}">
    <section class="hero" style="background-image: url(${settings.background_image!});box-shadow: 0 2px 0 0 #f5f5f5;">
        <div class="hero-body">
            <div class="container">
                <h1 class="title is-spaced">
                    主题：${post.title!}
                </h1>
                <#if metas.theme_description??>
                    <h2 class="subtitle">
                        ${metas.theme_description!}
                    </h2>
                </#if>
            </div>
        </div>
    </section>

    <section style="margin-top: 50px">
        <div class="container">
            <div class="tile is-ancestor">
                <div class="tile is-vertical is-7">
                    <div class="tile is-parent">
                        <article class="tile is-child box">
                            <p class="title is-4">缩略图</p>
                            <figure class="image is-4by3">
                                <img src="${post.thumbnail!}">
                            </figure>
                        </article>
                    </div>
                </div>
                <div class="tile is-parent">
                    <article class="tile is-child box">
                        <p class="title is-4">参数</p>
                        <div class="content">
                            <div class="table-container">
                                <table class="table is-hoverable is-fullwidth is-striped">
                                    <!-- Your table content -->
                                    <tbody>
                                    <tr>
                                        <td>ID</td>
                                        <td>${metas.theme_id!}</td>
                                    </tr>
                                    <tr>
                                        <td>名称</td>
                                        <td>${post.title!}</td>
                                    </tr>
                                    <tr>
                                        <td>作者</td>
                                        <td>${metas.theme_author!}</td>
                                    </tr>
                                    <tr>
                                        <td>描述</td>
                                        <td>${metas.theme_description!}</td>
                                    </tr>
                                    <tr>
                                        <td>Github 地址</td>
                                        <td>
                                            <a href="${metas.theme_repo!}" target="_blank">${metas.theme_repo!}</a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>版本</td>
                                        <td>${metas.theme_version!}</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </article>
                </div>
            </div>

            <div class="tile is-ancestor">
                <div class="tile is-parent">
                    <article itemscope itemtype="http://schema.org/Article" class="tile is-child box">
                        <p class="title">详情</p>
                        <div class="markdown-body content">
                            <div class="post-content-wrap">
                                ${post.formatContent!}
                                <ins class="adsbygoogle"
                                     style="display:block; text-align:center;"
                                     data-ad-layout="in-article"
                                     data-ad-format="fluid"
                                     data-ad-client="ca-pub-5271828906478846"
                                     data-ad-slot="5040595920"></ins>
                                <script>
                                    (adsbygoogle = window.adsbygoogle || []).push({});
                                </script>
                            </div>
                            <#--<div class="post-comment-wrap">-->
                                <#--<@comment post,"post" />-->
                            <#--</div>-->
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </section>
</@layout>