<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

	<head>
		<title>${html_title}</title>

		<meta content="initial-scale=1.0, width=device-width" name="viewport" />

		<@liferay_util["include"] page=top_head_include />

		<!-- Custom JS Bundle -->
		<@liferay.js file_name="${javascript_folder}/dist/bundle.js?<!--@timestamp-->"/>

		<!-- Google fonts -->
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,400;0,600;0,700;1,400&display=swap" rel="stylesheet">
	
	</head>

	<body class="${css_class}">

		<@liferay_ui["quick-access"] contentId="#main-content" />
		<@liferay_util["include"] page=body_top_include />
		<@liferay.control_menu />

		<div class="${prefix}" id="wrapper">

			<#include "${full_templates_path}/header.ftl" />

			<section id="content" class="${(add_space_before_content && !show_breadcrumb)?string("mt-2 mt-md-3","")}">
			
				<h2 class="hide-accessible" role="heading" aria-level="1">${the_title}</h2>
				<#if selectable>
					<@liferay_util["include"] page=content_include />
				<#else>
					${portletDisplay.recycle()}
					${portletDisplay.setTitle(the_title)}
					<@liferay_theme["wrap-portlet"] page="portlet.ftl">
						<@liferay_util["include"] page=content_include />
					</@>
				</#if>

			</section>

			<#include "${full_templates_path}/footer.ftl" />

		</div>

		<div class="${prefix} liferay-instance">
			<@liferay_util["include"] page=body_bottom_include />
			<@liferay_util["include"] page=bottom_include />

		</div>

		<!-- inject:js -->
		<!-- endinject -->
	
	</body>

</html>