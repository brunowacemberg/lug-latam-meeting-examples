<div class="lug-news-in-cards">
    
    <div class="row">
            
        <#list entries as entry>

            <#assign assetRenderer = entry.getAssetRenderer() />
            <#assign article = assetRenderer.getArticle()/>

            <div class="col-md-6 col-lg-3 mb-4">

                <@liferay_journal["journal-article"] 
                    articleId=article.getArticleId() 
                    groupId=article.getGroupId() 
                    ddmTemplateKey="NOTICIA-CARD"
                />

            </div>


        </#list>
        
    </div>
    
</div>