<#macro comment target,type>
    <#if !post.disallowComment!false>
        <script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"></script>
        <script src="${options.comment_internal_plugin_js!'https://cdn.jsdelivr.net/npm/halo-comment-normal@1.1.1/dist/halo-comment.min.js'}"></script>
        <script>
            // var configs = {
            //     autoLoad: true,
            //     showUserAgent: true
            // }
        </script>
        <halo-comment id="${target.id?c}" type="${type}"/>
    </#if>
</#macro>