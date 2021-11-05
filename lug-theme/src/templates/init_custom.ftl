<#-- Project Prefix -->
<#assign prefix = "lug" />

<#-- Project Specific Variables -->
<#assign is_private_page = !layout.isPublicLayout() />

<#assign add_space_before_content = getterUtil.getBoolean(themeDisplay.getThemeSetting("add-space-before-content"))/>
<#assign show_breadcrumb = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-breadcrumb"))/>