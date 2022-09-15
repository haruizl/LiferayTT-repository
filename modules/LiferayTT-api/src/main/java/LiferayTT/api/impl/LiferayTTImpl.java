package LiferayTT.api.impl;

import com.liferay.portal.configuration.metatype.bnd.util.ConfigurableUtil;
import com.liferay.portal.kernel.json.JSONArray;
import com.liferay.portal.kernel.json.JSONFactoryUtil;
import com.liferay.portal.kernel.json.JSONObject;
import com.liferay.portal.kernel.log.Log;
import com.liferay.portal.kernel.log.LogFactoryUtil;

import java.net.URI;
import java.net.URL;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.text.MessageFormat;
import java.util.Map;

import org.osgi.service.component.annotations.Component;
import org.osgi.service.component.annotations.Activate;
import org.osgi.service.component.annotations.Modified;

import LiferayTT.api.api.LiferayTTApi;
import LiferayTT.api.config.LiferayTTConfiguration;

/**
 * LiferayTTImpl.java
 * <p>
 * API Implementation
 *
 * @author Hemerson Ruiz
 */
@Component(immediate = true, service = LiferayTTApi.class, configurationPid = "LiferayTT.api.config.LiferayTTConfiguration")
public class LiferayTTImpl implements LiferayTTApi {
	@Activate
	@Modified
	protected void activate(Map<Object, Object> properties) {
	    configuration = ConfigurableUtil.createConfigurable(
	                LiferayTTConfiguration.class, properties);
	}

	/**
	 * LiferayTTConfiguration 
	 */
	private volatile LiferayTTConfiguration configuration;
	/**
	 * Class log.
	 */
	private static final Log LOGGER = LogFactoryUtil.getLog(LiferayTTImpl.class);
	
	@Override
	public JSONArray getProductsInformation() {
		JSONArray products = JSONFactoryUtil.createJSONArray();
		try {
			HttpRequest request = HttpRequest.newBuilder()
					.uri(URI.create(configuration.getProductsInformationUrl()))
					.header("filters", "eyJjdXN0b21lcklkIjoiMTIzNDUifQ==")
					.method("GET", HttpRequest.BodyPublishers.noBody())
					.build();
			HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
			products = JSONFactoryUtil.createJSONArray(response.body().toString());
		}catch(Exception e) {
			LOGGER.error("Error getting products");
		}
		return products;
	}


	@Override
	public JSONObject setAccountStatus(String customerId, String accountStatus) {
		JSONObject customer = JSONFactoryUtil.createJSONObject();
		try {
			HttpRequest request = HttpRequest.newBuilder()
					.uri(URI.create(MessageFormat.format(configuration.setAccountStatusUrl(),
							customerId)))
					.header("customer", "eyJjdXN0b21lcklkIjoiMTIzNDUifQ==")
					.method("GET", HttpRequest.BodyPublishers.ofString("{\"accountStatus\":\"enabled\"}"))
					.build();
			HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
			System.out.println(response.body());
		}catch(Exception e) {
			LOGGER.error("Error setting account status");
		}
		return customer;
	}

}
