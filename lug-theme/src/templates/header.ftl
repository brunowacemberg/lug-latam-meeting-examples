<!-- Header -->
<header class="${prefix}-header-wrapper" id="header" role="banner">

    <div class="${prefix}-header">

        <div class="container px-lg-0">

            <div class="${prefix}-header__upper-section">
                
                <div class="${prefix}-header__upper-section-navigation">

                    <@liferay.navigation_menu
                        instance_id="header-upper-section-navigation"
                    />
                    
                </div>

                <div class="ml-auto">
                    <#if show_sign_in>
                        <a href="${sign_in_url!'#'}"><i class="${prefix}-icon-user"></i> <@liferay.language key="sign-in" /></a>
                    </#if>
                    <#if show_sign_out>
                        <a href="${sign_out_url!'#'}"><i class="${prefix}-icon-user"></i> <@liferay.language key="sign-out" /></a>
                    </#if>
                </div>

            </div>
            
        </div>

        <div class="${prefix}-header__divider">
        </div>

        <div class="container px-lg-0">

            <div class="${prefix}-header__lower-section">

                <div class="${prefix}-header__logo pr-4">
                    <a href="${home_url}">
                        <img src="${company_logo}"/>
                    </a>
                </div>

                <div class="${prefix}-header__lower-section-navigation ml-auto">
                    <@liferay.navigation_menu
                        instance_id="header-lower-section-navigation"
                    />
                </div>

            </div>

        </div>

    </div>

    <#if show_breadcrumb>
        <div class="container px-0 mt-4 mb-5">
            <@liferay.breadcrumbs />
        </div>
    </#if>

</header>
