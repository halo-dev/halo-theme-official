<#macro layout title,keywords,description,canonical,image>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="x-dns-prefetch-control" content="on">
    <link rel="dns-prefetch" href="//cdn.jsdelivr.net">
    <link rel="dns-prefetch" href="//hm.baidu.com">
    <link rel="dns-prefetch" href="//img.shields.io">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="renderer" content="webkit">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0;"/>
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <title>${title!}</title>
    <meta name="description" content="${description!}">
    <meta name="keywords" content="${keywords!}">
    <@global.head />

    <meta itemprop="name" content="${title!}">
    <meta itemprop="description" content="${description!}">
    <meta itemprop="image" content="${image!}">

    <meta property="og:url" content="${canonical!}">
    <meta property="og:type" content="website">
    <meta property="og:title" content="${title!}">
    <meta property="og:description" content="${description!}">
    <meta property="og:image" content="${image!}">

    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:title" content="${title!}">
    <meta name="twitter:description" content="${description!}">
    <meta name="twitter:image" content="${image!}">

    <link rel="canonical" href="${canonical!}">
    <link rel="alternate" type="application/rss+xml" title="${title!}" href="${context!}/atom.xml">

    <#if settings.enabled_cdn!false>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/halo-theme-official@${theme.version!}/source/css/style.min.css"/>
        <script src="https://cdn.jsdelivr.net/npm/halo-theme-official@${theme.version!}/source/js/main.min.js"></script>
    <#else>
        <link rel="stylesheet" href="${static!}/source/css/style.css"/>
        <script src="${static!}/source/js/main.js"></script>
    </#if>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/remixicon@2.3.0/fonts/remixicon.min.css">

    <#if is_post?? || is_sheet??>
        <script src="https://cdn.jsdelivr.net/npm/prismjs@1.19.0/prism.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/prismjs@1.19.0/themes/prism-tomorrow.css"/>
        <#if settings.enabled_cdn!false>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/halo-theme-official@${theme.version!}/source/css/markdown.min.css"/>
        <#else>
            <link rel="stylesheet" href="${static!}/source/css/markdown.css"/>
        </#if>
    </#if>
</head>
<body>
<#include "nav.ftl">
<#nested />
<#include "footer.ftl">
<script>
    console.log("%c    __  __      __\n" +
        "   / / / /___ _/ /___\n" +
        "  / /_/ / __ `/ / __ \\\n" +
        " / __  / /_/ / / /_/ /\n" +
        "/_/ /_/\\__,_/_/\\____/ %c v${version!} https://github.com/halo-dev/halo","color:#4571ca;","color:red");
</script>
</body>
</html>
</#macro>