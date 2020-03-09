<#include "components/layout.ftl">
<@layout title="${sheet.title!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/s/${sheet.url!}" image="${settings.default_share_image!}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma-pricingtable@0.2.0/dist/css/bulma-pricingtable.min.css"/>
    <section class="hero" style="background-image: url(${settings.background_image!});box-shadow: 0 2px 0 0 #f5f5f5;">
        <div class="hero-body">
            <div class="container">
                <h1 class="title is-spaced">
                    ${sheet.title!}
                </h1>
                <h2 class="subtitle">
                    我们提供的服务项目
                </h2>
            </div>
        </div>
    </section>

    <section style="margin-top: 50px">
        <div class="container">
            <div class="columns">
                <div class="column is-one-quarter">
                    <div class="card document-toc">
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
                </div>
                <div class="column markdown-body content is-three-quarters">
                    <div class="card">
                        <div class="card-content">
                            <article itemscope itemtype="http://schema.org/Article" class="content">
                                <div class="columns is-gapless is-marginless is-vcentered">
                                    <div class="column"><h1>${post.title!}</h1></div>
                                    <div class="column"><span class="is-pulled-right is-size-7">最后更新时间：${post.editTime?string('yyyy-MM-dd')}</span></div>
                                </div>
                                <div class="post-content-wrap">
                                    <h2 id="%E5%89%8D%E8%A8%80">前言</h2> <p>考虑到部分用户可能是非软件行业的，可能对部署维护方面不是太了解，又需要一个博客来发表自己的东西，所以我们推出了下面的服务。同时，一直以来我们都是“用爱”来维护这个项目，我们又拒绝在 Halo 本身“动手脚”，不希望在 Halo 上面集成我们自己的服务，让 Halo 保持绝对的纯粹是我们一直的初心，否则我们完全可以考虑闭源并进行收费，所以我们也需要通过一些额外服务来获得经济收入，以帮助 Halo 处于良性发展。如果你正好不想用更多的精力来维护博客，只想好好的产出优质的文章，不妨交给我们来维护，我们确信能做好这件事。</p>
                                    <h2 id="%E6%9C%8D%E5%8A%A1%E9%A1%B9%E7%9B%AE">服务项目</h2>

                                    <div class="pricing-table">
                                        <div class="pricing-plan">
                                            <div class="plan-header">部署</div>
                                            <div class="plan-price"><span class="plan-price-amount"><span class="plan-price-currency">￥</span>50</span>/次</div>
                                            <div class="plan-items">
                                                <div class="plan-item">提供优质的部署服务。</div>
                                                <div class="plan-item">提供配置定时备份服务，如果你愿意的话。</div>
                                                <div class="plan-item">提供部署过程视频录制，如果你需要的话。</div>
                                                <div class="plan-item">-</div>
                                                <div class="plan-item">-</div>
                                            </div>
                                            <div class="plan-footer">
                                                <a href="#%E8%81%94%E7%B3%BB%E6%88%91%E4%BB%AC" class="button is-fullwidth">立即联系</a>
                                            </div>
                                        </div>

                                        <div class="pricing-plan">
                                            <div class="plan-header">部署+维护</div>
                                            <div class="plan-price"><span class="plan-price-amount"><span class="plan-price-currency">￥</span>200</span>/年</div>
                                            <div class="plan-items">
                                                <div class="plan-item">提供前面所有的服务。</div>
                                                <div class="plan-item">提供维持一年的版本更新，也就是 Halo <br />发布新版本的时候，我们会帮你更新。</div>
                                                <div class="plan-item">如果你在使用过程中服务出了任何问题<br />我们将为你线上解决。</div>
                                                <div class="plan-item">你在使用过程中出了任何问题，我们都可以为你解决。</div>
                                            </div>
                                            <div class="plan-footer">
                                                <a href="#%E8%81%94%E7%B3%BB%E6%88%91%E4%BB%AC" class="button is-fullwidth">立即联系</a>
                                            </div>
                                        </div>

                                        <div class="pricing-plan">
                                            <div class="plan-header">部署+维护+模板修改</div>
                                            <div class="plan-price"><span class="plan-price-amount"><span class="plan-price-currency">￥</span>300</span>/年</div>
                                            <div class="plan-items">
                                                <div class="plan-item">提供前面所有的服务。</div>
                                                <div class="plan-item">对现有的模板进行修改，直到你满意<br />不满意可退差价。</div>
                                                <div class="plan-item">-</div>
                                                <div class="plan-item">-</div>
                                            </div>
                                            <div class="plan-footer">
                                                <a href="#%E8%81%94%E7%B3%BB%E6%88%91%E4%BB%AC" class="button is-fullwidth">立即联系</a>
                                            </div>
                                        </div>
                                    </div>

                                    <h2 id="%E5%85%B6%E4%BB%96%E6%9C%8D%E5%8A%A1">其他服务</h2> <p>以上的服务项目都需要你自备服务器和域名，如果你不想自行购买服务器和域名的话，我们也可以代劳，收费标准为 <strong>基础价格+服务器费用+域名费用+100/年的维护费用</strong>，不过目前我们正在寻找靠谱且性价比高的服务器厂商，所以关于这一点暂时待定。</p> <h2 id="%E8%81%94%E7%B3%BB%E6%88%91%E4%BB%AC">联系我们</h2> <ul> <li>QQ：709831589（备注来意）。</li> <li>Telegram：<a href="https://t.me/ruibaby" target="_blank">https://t.me/ruibaby</a></li> </ul> <h2 id="%E6%9C%8D%E5%8A%A1%E6%97%B6%E9%97%B4">服务时间</h2> <ul> <li>周一到周六晚</li> <li>周日全天</li> </ul> <p>其他时间需要工作。</p>
                                </div>
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.min.js"></script>
    <script>
        const url = window.location.pathname;
        $(".menu li a").each(function () {
            if ($(this).attr('href') == url && $(this).attr('href') != '/') {
                $(this).addClass('is-active');
            } else {
                $(this).removeClass('is-active');
            }
        });

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