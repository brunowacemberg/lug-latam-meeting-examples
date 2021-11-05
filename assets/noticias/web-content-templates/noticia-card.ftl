<#assign urlTitle = .vars['reserved-article-url-title'].data />
<#assign url = themeDisplay.getPortalURL()+"/-/"+urlTitle />

<div class="lug-card" title="${title.getData()}">

    <div title="${image.getAttribute("alt")!''}" class="lug-card__image bg-secondary" style="background-image: url('${image.getData()}')">
    </div>

    <div class="lug-card__content">
        <h3>${title.getData()}</h3>
        <small><a href="${url}">ver más</a></small>
    </div>

</div>