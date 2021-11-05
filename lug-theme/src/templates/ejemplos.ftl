

<#assign mobileNavigationPreferencesMap = {
    "displayStyle": "ddmTemplate_NAVIGATION-MENU_HEADER-NAVIGATION-MOBILE",
    "siteNavigationMenuType": "1"
} />

<@liferay.navigation_menu
    default_preferences=freeMarkerPortletPreferences.getPreferences(mobileNavigationPreferencesMap)
    instance_id="header_navigation_menu_mobile"
/>