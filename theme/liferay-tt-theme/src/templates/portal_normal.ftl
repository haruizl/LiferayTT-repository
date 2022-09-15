<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${html_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">
<@liferay_util["include"] page=body_top_include />
<@liferay.control_menu />
<div class="d-flex flex-column min-vh-100">
	<div class="d-flex flex-column flex-fill" id="wrapper">
		<#if show_header>
			<header id="banner">
				<div class="navbar navbar-classic navbar-top navbar-light py-3" id="navbar">
					<div class="container-fluid container-fluid-max-xl user-personal-bar">
						<div class="align-items-center autofit-row">
							<a class="${logo_css_class} align-items-center d-md-inline-flex d-sm-none d-none logo-md" href="${site_default_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
								<img alt="${logo_description}" class="mr-2" height="80" src="/o/liferay-tt-theme/images/Logo.png" />

								<#if show_site_name>
									<h2 class="font-weight-bold h2 mb-0 text-dark" role="heading" aria-level="1">${site_name}</h2>
								</#if>
							</a>

							<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />

							<div class="autofit-col autofit-col-expand">
								<#if show_header_search>
									<div class="justify-content-md-end mr-4 navbar-form" role="search">
										<@liferay.search_bar default_preferences="${preferences}" />
									</div>
								</#if>
								<#include "${full_templates_path}/navigation.ftl" />
							</div>

							<div class="col-1" style="background: rgb(49, 175, 180);text-align: center;">
							<#if !is_signed_in>
								<div class="sign-in">
									<a data-redirect="${is_login_redirect_required?string}" href="${sign_in_url}" id="sign-in" rel="nofollow" class="text-white text-default">Iniciar sesión</a>
								</div>
							</#if>
							<#if is_signed_in>
								<a data-redirect="${is_login_redirect_required?string}" href="${sign_out_url}" id="sign-in" rel="nofollow" class="text-white text-default">Cerrar sesión</a>
							</#if>	
							</div>
						</div>
					</div>
				</div>
			</header>
		</#if>
		<#if !is_signed_in>
		<section class="${portal_content_css_class} flex-fill" id="content">
			<div class="layout-content portlet-layout" id="main-content" role="main">
				<style data-senna-track="temporary" type="text/css">
					.portlet-borderless .portlet-content {padding: 0;}
					.fragment-heading-text-colored a {color: inherit;}
				</style>
				<div class=" mb-lg-0 ml-lg-0 mr-lg-0 mt-lg-0 pb-lg-6 pl-lg-0 pr-lg-0 pt-lg-6 pb-sm-5 pt-sm-5 pb-5 pt-5 mt-0 pb-md-6 pt-md-6 mt-md-0" style="box-sizing: border-box;border-style: solid; border-width: 0px;opacity: 1.0;"> 
 					<div class=" container-fluid container-fluid-max-xl mb-lg-0 mt-lg-0 pb-lg-0 pl-lg-2 pr-lg-2 pt-lg-0 pl-sm-3 pr-4 pl-4 pr-md-3 pl-md-3" style="box-sizing: border-box;border-style: solid; border-width: 0px;opacity: 1.0;"> 
  						<div class=" mb-lg-0 ml-lg-0 mr-lg-0 mt-lg-0 pb-lg-0 pl-lg-0 pr-lg-0 pt-lg-0 pr-sm-0 pl-sm-0 pr-0 pl-0 pr-md-0 pl-md-0" style="box-sizing: border-box;border-style: solid; border-width: 0px;opacity: 1.0;overflow: hidden;"> 
   							<div class="d-flex flex-column align-items-center"> 
    							<div class="col" style="/* display: flex; *//* justify-content: center; *//* align-items: center; */align-content: center;/* font-size: 20px; *//* text-align: center; */"> 
     								<div class="" style="display: flex;justify-content: center;"> 
      									<div class="col-5 text-center" style="box-sizing: border-box;border-style: solid;border-width: 0px;opacity: 1.0;/* display: flex; *//* justify-content: center; *//* align-items: center; */"> 
       										<div id="fragment-0-vwda"> 
       											<h1 class="component-heading mb-0 text-break" data-lfr-editable-id="element-text" data-lfr-editable-type="text" id="home-title">Bienvenido a nuestro servicio en l&iacute;nea</h1>
       										</div>
     									</div> 
   							  		</div> 
    							</div> 
								<div class="col-4 flex-column mt-5"> 
     								<div class=""> 
      									<div class=" mb-lg-0 ml-lg-0 mr-lg-0 mt-lg-0 pb-lg-0 pl-lg-0 pr-lg-0 pt-lg-0" style="box-sizing: border-box;border-style: solid; border-width: 0px;opacity: 1.0;"> 
       										<div id="fragment-0-ughz"> 
        										<div class="portlet-boundary portlet-boundary_com_liferay_login_web_portlet_LoginPortlet_  portlet-static portlet-static-end portlet-borderless portlet-login " id="p_p_id_com_liferay_login_web_portlet_LoginPortlet_"> 
         											<span id="p_com_liferay_login_web_portlet_LoginPortlet"></span> 
         											<section class="portlet" id="portlet_com_liferay_login_web_portlet_LoginPortlet"> 
          												<div class="portlet-content"> 
           													<div class=" portlet-content-container"> 
            													<div class="portlet-body"> 
             														<div class="login-container"> 
              															<form action="${sign_in_url}?auth=fuCtcnYE" class="form sign-in-form " data-fm-namespace="_com_liferay_login_web_portlet_LoginPortlet_" id="_com_liferay_login_web_portlet_LoginPortlet_loginForm" method="post" name="_com_liferay_login_web_portlet_LoginPortlet_loginForm" autocomplete="on"> 
               																<fieldset class="input-container"> 
                																<input class="field form-control" id="_com_liferay_login_web_portlet_LoginPortlet_formDate" name="_com_liferay_login_web_portlet_LoginPortlet_formDate" type="hidden" value="1663162191787"> 
                																<input class="field form-control" id="_com_liferay_login_web_portlet_LoginPortlet_saveLastPath" name="_com_liferay_login_web_portlet_LoginPortlet_saveLastPath" type="hidden" value="false"> 
                																<input class="field form-control" id="_com_liferay_login_web_portlet_LoginPortlet_redirect" name="_com_liferay_login_web_portlet_LoginPortlet_redirect" type="hidden" value=""> 
                																<input class="field form-control" id="_com_liferay_login_web_portlet_LoginPortlet_doActionAfterLogin" name="_com_liferay_login_web_portlet_LoginPortlet_doActionAfterLogin" type="hidden" value="false"> 
                																<div class="inline-alert-container lfr-alert-container"></div> 
                																<fieldset class="fieldset ">
                 																	<div class=""> 
                  																		<div class="form-group input-text-wrapper"> 
                   																			<label class=" control-label" for="_com_liferay_login_web_portlet_LoginPortlet_login"> Direcci&oacute;n de correo </label> 
                   																			<input class="field clearable form-control" id="_com_liferay_login_web_portlet_LoginPortlet_login" name="_com_liferay_login_web_portlet_LoginPortlet_login" type="text" value="usuario@mail.co" aria-required="true"> 
                  																		</div> 
                  																		<div class="form-group input-text-wrapper"> 
                   																			<label class=" control-label" for="_com_liferay_login_web_portlet_LoginPortlet_password"> Contrase&ntilde;a </label> 
                   																			<input class="field form-control" id="_com_liferay_login_web_portlet_LoginPortlet_password" name="_com_liferay_login_web_portlet_LoginPortlet_password" type="password" value="" aria-required="true"> 
                  																		</div> 
                  																		<span id="CapsLockSpan" style="display: none;">Caps Lock is on.</span> 
                  																		<div class="form-group form-inline input-checkbox-wrapper"> 
                  																			<label class="" for="_com_liferay_login_web_portlet_LoginPortlet_rememberMe"> <input class="field" id="_com_liferay_login_web_portlet_LoginPortlet_rememberMe" name="_com_liferay_login_web_portlet_LoginPortlet_rememberMe" onclick="" type="checkbox"> Recu&eacute;rdame </label> 
                  																		</div> 
                 																	</div>
                																</fieldset> 
                																<div class="button-holder "> 
                 																	<button class="btn  btn-primary" id="_com_liferay_login_web_portlet_LoginPortlet_ofqt" type="submit" style="background: rgb(49, 175, 180);border: none;"> <span class="lfr-btn-label">Acceder</span> </button> 
                																</div> 
                																<input class="field form-control" id="_com_liferay_login_web_portlet_LoginPortlet_checkboxNames" name="_com_liferay_login_web_portlet_LoginPortlet_checkboxNames" type="hidden" value="rememberMe"> 
               																</fieldset> 
              															</form> 
             														</div> 
           									 					</div> 
           													</div> 
          												</div> 
         											</section> 
        										</div> 
       										</div> 
										</div>
      								</div> 
     							</div> 
    						</div> 
  						</div> 
  					</div> 
 				</div> 
			</div>
		</section>
		</#if>	
		<#if show_footer>
			<footer id="footer" role="contentinfo">
				<div class="container">
					<div class="row">
						<div class="col-md-12 text-center text-md-left">
							<@liferay.language_format
								arguments='<a class="text-white" href="http://www.liferay.com" rel="external">Liferay</a>'
								key="haruizl"
							/>
						</div>
					</div>
				</div>
			</footer>
		</#if>
	</div>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />
<script type="text/javascript">
	// <![CDATA[
	(function() {var $ = AUI.$;var _ = AUI._;
		var signInLink = document.querySelector('.sign-in > a');
		if (signInLink && signInLink.dataset.redirect === 'false') {
			var signInURL = signInLink.href;
			var modalSignInURL = Liferay.Util.addParams(
				'windowState=exclusive',
				signInURL
			);
			var setModalContent = function (html) {
				var modalBody = document.querySelector('.liferay-modal-body');
				if (modalBody) {
					var fragment = document
						.createRange()
						.createContextualFragment(html);
					modalBody.innerHTML = '';
					modalBody.appendChild(fragment);
				}
			};
			var loading = false;
			var redirect = false;
			var html = '';
			var modalOpen = false;
			var fetchModalSignIn = function () {
				if (loading || html) {
					return;
				}

				loading = true;
				Liferay.Util.fetch(modalSignInURL)
					.then((response) => {
						return response.text();
					})
					.then((response) => {
						if (!loading) {
							return;
						}
						loading = false;
						if (!response) {
							redirect = true;
							return;
						}
						html = response;
						if (modalOpen) {
							setModalContent(response);
						}
					})
					.catch(() => {
						redirect = true;
					});
			};
			signInLink.addEventListener('mouseover', fetchModalSignIn);
			signInLink.addEventListener('focus', fetchModalSignIn);
			signInLink.addEventListener('click', (event) => {
				event.preventDefault();
				if (redirect) {
					Liferay.Util.navigate(signInURL);
					return;
				}
				Liferay.Util.openModal({
				bodyHTML: html ? html : '<span class="loading-animation">',
				height: '400px',
				onClose: function () {
					loading = false;
					redirect = false;
					html = '';
					modalOpen = false;
				},
				onOpen: function () {
					modalOpen = true;

					if (html && document.querySelector('.loading-animation')) {
						setModalContent(html);
					}
				},
				size: 'md',
				title: '\u0053\u0069\u0067\u006e\u0020\u0049\u006e',				});
			});
		}
	})();
// ]]>
</script>	
</body>


</html>