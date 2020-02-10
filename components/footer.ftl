<footer class="footer">
    <div class="container">
        <div class="columns">
            <div class="column is-4">
                <h4 class="bd-footer-title">
                    <strong href="http://purl.org/dc/dcmitype/Text">Copyright</strong>
                    info
                </h4>
                &copy; ${.now?string('yyyy')}. <span>Built by Halo@${version!}</span>
                <@global.footer />
                <div class="bd-footer-tsp">
                    Website content licensed
                    <a rel="license" href="https://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank">CC BY-NC-SA 4.0</a>
                </div>
            </div>
            <div class="column is-4">
                <h4 class="bd-footer-title">
                    <strong>Contribute</strong> on GitHub
                </h4>
                <div>
                    <a href="https://github.com/halo-dev/halo" target="_blank">
                        <img alt="GitHub stars" src="https://img.shields.io/github/stars/halo-dev/halo?style=social"/>
                    </a>
                    <a href="https://github.com/halo-dev/halo/issues" target="_blank">
                        <img alt="GitHub issues" src="https://img.shields.io/github/issues/halo-dev/halo"/>
                    </a>
                    <form action="https://tinyletter.com/halo-dev" method="post" target="popupwindow" onsubmit="window.open('https://tinyletter.com/halo-dev', 'popupwindow', 'scrollbars=yes,width=800,height=600');return true">
                        <div class="field is-grouped">
                            <p class="control is-expanded">
                                <input class="input" type="text" name="email" id="tlemail" placeholder="订阅更新信息（输入邮箱地址）">
                            </p>
                            <input type="hidden" value="1" name="embed"/>
                            <p class="control">
                                <button type="submit" class="button is-primary">订阅</button>
                            </p>
                        </div>
                    </form>
                </div>
            </div>
            <div class="column is-4">
                <h4 class="bd-footer-title"><strong>Contact</strong> with</h4>
                <div>
                    <div class="buttons">
                        <a class="button is-black is-outlined" href="https://github.com/halo-dev" target="_blank">
                            <span class="icon">
                                <i class="ri-github-fill"></i>
                            </span>
                            <span>Github</span>
                        </a>
                        <a class="button is-danger is-outlined" href="https://bbs.halo.run" target="_blank">
                            <span class="icon">
                                <i class="ri-discuss-fill"></i>
                            </span>
                            <span>BBS</span>
                        </a>
                        <a class="button is-info is-outlined" href="https://t.me/halo_dev" target="_blank">
                            <span class="icon">
                                <i class="ri-telegram-fill"></i>
                            </span>
                            <span>Channel</span>
                        </a>
                        <a class="button is-info is-outlined" href="https://t.me/HaloBlog" target="_blank">
                            <span class="icon">
                                <i class="ri-telegram-fill"></i>
                            </span>
                            <span>Group</span>
                        </a>
                        <a class="button is-primary is-outlined" href="https://jq.qq.com/?_wv=1027&k=5tnr930" target="_blank">
                            <span class="icon">
                                <i class="ri-qq-fill"></i>
                            </span>
                            <span>Group</span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>