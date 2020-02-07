<#include "components/layout.ftl">
<@layout title="${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}" image="${settings.default_share_image!}">
    <section class="hero is-medium" style="background-image: url(${settings.background_image!});box-shadow: 0 2px 0 0 #f5f5f5;">
        <div class="hero-body">
            <div class="container has-text-centered">
                <p class="title is-size-1 is-spaced">
                    ${settings.index_title!}
                </p>
                <p class="subtitle">
                    ${settings.index_slug!}
                </p>
                <a class="button" href="${settings.index_button_url!}">快速开始</a>
            </div>
        </div>
    </section>

    <section style="margin-top: 50px">
        <div class="container">
            <div class="tile is-ancestor">
                <div class="tile is-parent">
                    <article class="tile is-child box">
                        <p class="title is-4">部署方便</p>
                        <div class="content">
                            <p>采用了应用与用户配置分离的模式。你仅仅只需要一条命令即可运行成功，同时也支持 Docker/Docker Compose 部署。</p>
                        </div>
                    </article>
                </div>
                <div class="tile is-parent">
                    <article class="tile is-child box">
                        <p class="title is-4">较好性能</p>
                        <div class="content">
                            <p>实测在开发环境下（2g RAM/i7 6500u），使用 Apache Benchmark 测试 100 个并发 10000 次请求，吞吐量（Requests per second）在 147.65/sec。</p>
                        </div>
                    </article>
                </div>
                <div class="tile is-parent">
                    <article class="tile is-child box">
                        <p class="title is-4">多款主题</p>
                        <div class="content">
                            <p>完善的主题系统，支持在线安装和更新。开发主题也十分方便，欢迎大家参与主题的开发。</p>
                        </div>
                    </article>
                </div>
            </div>
            <div class="tile is-ancestor">
                <div class="tile is-parent">
                    <article class="tile is-child box">
                        <p class="title is-4">高拓展性</p>
                        <div class="content">
                            <p>提供了完善的 Content API 和 Admin API，你可以用于开发 SPA 应用，微信小程序，桌面端管理软件，APP 端管理软件，各种系统的插件等。</p>
                        </div>
                    </article>
                </div>
                <div class="tile is-parent">
                    <article class="tile is-child box">
                        <p class="title is-4">附件管理</p>
                        <div class="content">
                            <p>同时支持本地上传，阿里云 OSS/又拍云 OSS/七牛云 OSS/SM.MS 等云存储，你可以更方便的管理你文章中的附件。</p>
                        </div>
                    </article>
                </div>
                <div class="tile is-parent">
                    <article class="tile is-child box">
                        <p class="title is-4">评论管理</p>
                        <div class="content">
                            <p>拥有独立的评论插件，使用 Vue 开发，只需在页面引入构建好的 JS 文件即可，完美地和主题相结合。目前已有两款评论组件，你可以非常方便的切换。</p>
                        </div>
                    </article>
                </div>
            </div>
        </div>
    </section>
</@layout>