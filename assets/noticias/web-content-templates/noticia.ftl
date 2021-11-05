<#assign url = friendlyURLs[themeDisplay.getLanguageId()]!"" />

<div class="lug-article-display" title="${title.getData()}">

    <div title="${image.getAttribute("alt")!''}" class="lug-article-display__image" style="background-image: url('${image.getData()}')">
    </div>

    <div class="lug-article-display__content">
        <h2 class="lug-article-display__title h1">${title.getData()}</h2>
        
        <div>
            ${content.getData()}
        </div>
    </div>

</div>