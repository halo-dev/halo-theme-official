<#include "components/layout.ftl">
<#include "components/comment.ftl">
<@layout title="${metas.doc_menu_title!}：${post.title!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${post.summary!}" canonical="${context!}/archives/${post.url!}" image="${settings.default_share_image!}">
    <section class="hero" style="background-image: url(${settings.background_image!});box-shadow: 0 2px 0 0 #f5f5f5;">
        <div class="hero-body">
            <div class="container">
                <h1 class="title is-spaced">
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
            <div class="columns">
                <div class="column is-one-quarter">
                    <div class="card document-menu">
                        <div class="card-content">
                            <div class="content">
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
                        </div>
                    </div>
                    <div class="card document-toc" style="margin-top: 2rem">
                        <div class="card-content">
                            <p class="title is-5">
                                目录
                            </p>
                            <div class="content">
                                <aside class="menu">
                                    <ul class="menu-list">

                                    </ul>
                                </aside>
                            </div>
                        </div>
                    </div>
                    <div class="card ad-block" style="margin-top: 2rem">
                        <div class="card-content">
                            <div class="content">
                                <ins class="adsbygoogle"
                                     style="display:block"
                                     data-ad-client="ca-pub-5271828906478846"
                                     data-ad-slot="4611196998"
                                     data-ad-format="auto"
                                     data-full-width-responsive="true"></ins>
                                <script>
                                    (adsbygoogle = window.adsbygoogle || []).push({});
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="column markdown-body content is-three-quarters">
                    <div class="card">
                        <div class="card-content">
                            <div class="content">
                                <div class="columns is-gapless is-marginless is-vcentered">
                                    <div class="column"><h1>${post.title!}</h1></div>
                                    <div class="column"><span class="is-pulled-right is-size-7">最后更新时间：${post.editTime?string('yyyy-MM-dd')}</span></div>
                                </div>
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
                            </div>
                        </div>
                    </div>
                    <#if !post.disallowComment!false>
                        <div class="card" style="margin-top: 2rem">
                            <div class="card-content">
                                <p class="title is-5">
                                    评论
                                </p>
                                <div class="content">
                                    <div class="post-comment-wrap">
                                        <@comment post,"post" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </#if>
                </div>
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js"></script>
    <script>
        function async(u, c) {
            var d = document, t = 'script',
                o = d.createElement(t),
                s = d.getElementsByTagName(t)[0];
            o.src = u;
            if (c) {
                o.addEventListener('load', function (e) {
                    c(null, e);
                }, false);
            }
            s.parentNode.insertBefore(o, s);
        }
        function generateCatalog(selector) {
            _containerSelector = 'div.post-content-wrap';

            // init
            var P = $(_containerSelector), a, n, t, l, i, c;
            a = P.find('h2');

            // clean
            $(selector).html('');

            // appending
            a.each(function () {
                n = $(this).prop('tagName').toLowerCase();
                i = "#" + $(this).prop('id');
                t = $(this).text();
                c = $('<a href="' + i + '" rel="nofollow">' + t + '</a>');
                l = $('<li class="' + n + '_nav"></li>').append(c);
                $(selector).append(l);
            });
            return true;
        }
        generateCatalog(".document-toc .menu-list");
    </script>
    <script>
        async("https://cdn.jsdelivr.net/npm/anchor-js@4.2.2/anchor.min.js", function () {
            anchors.options = {
                visible: 'hover',
                placement: 'right'
            };
            anchors.add('.post-content-wrap h1,.post-content-wrap h2,.post-content-wrap h3,.post-content-wrap h4');
        })
    </script>
</@layout>