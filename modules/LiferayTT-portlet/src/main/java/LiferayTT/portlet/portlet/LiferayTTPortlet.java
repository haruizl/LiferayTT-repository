package LiferayTT.portlet.portlet;

import LiferayTT.api.constants.LiferayTTApiPortletKeys;
import LiferayTT.api.impl.LiferayTTImpl;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;
import LiferayTT.portlet.constants.LiferayTTPortletKeys;
import LiferayTT.api.api.LiferayTTApi;

import com.liferay.petra.string.StringPool;
import com.liferay.portal.kernel.json.JSONFactoryUtil;
import com.liferay.portal.kernel.json.JSONObject;
import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;
import com.liferay.portal.kernel.util.HtmlUtil;
import com.liferay.portal.kernel.util.ParamUtil;

import java.io.IOException;

import javax.portlet.Portlet;
import javax.portlet.PortletException;
import javax.portlet.RenderRequest;
import javax.portlet.RenderResponse;
import javax.portlet.ResourceRequest;
import javax.portlet.ResourceResponse;

import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.Reference;

/**
 * @author Hemerson Ruiz
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=liferayTT",
		"com.liferay.portlet.header-portlet-css=/css/main.css",
		"com.liferay.portlet.instanceable=true",
		"javax.portlet.display-name=LiferayTT",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.name=" + LiferayTTPortletKeys.LIFERAYTT,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class LiferayTTPortlet extends MVCPortlet {
	/**
	 * Reference to LiferayTTApi.
	 */
	@Reference
	private LiferayTTApi liferayTTApi;
	/**
	 * Logger.
	 */
	private static final Log LOGGER = LogFactoryUtil.getLog(LiferayTTPortlet.class);
	@Override
	public void doView(RenderRequest renderRequest, RenderResponse renderResponse)
		throws PortletException, IOException {
		liferayTTApi.getProductsInformation();
		super.doView(renderRequest, renderResponse);
	}
	@Override
	public void serveResource(ResourceRequest resourceRequest, ResourceResponse resourceResponse)
		throws IOException, PortletException {

		String cmd = HtmlUtil.escape(
			ParamUtil.getString(resourceRequest, LiferayTTPortletKeys.CMD_AJAX));

		JSONObject jsonResponse = JSONFactoryUtil.createJSONObject();
		switch (cmd) {
		case LiferayTTPortletKeys.SET_ACCOUNT_STATUS:
			String accountStatus = ParamUtil.getString(resourceRequest,
				LiferayTTApiPortletKeys.STATUS);
			String customerId = ParamUtil.getString(resourceRequest,
				LiferayTTApiPortletKeys.CUSTOMER_ID);
				jsonResponse.put(LiferayTTPortletKeys.STATUS_REQUEST,
					liferayTTApi.setAccountStatus(customerId, accountStatus));
			break;
		default:
			LOGGER.error("Command not found");
		}
		writeJSON(resourceRequest, resourceResponse, jsonResponse);
		super.serveResource(resourceRequest, resourceResponse);

	}
}