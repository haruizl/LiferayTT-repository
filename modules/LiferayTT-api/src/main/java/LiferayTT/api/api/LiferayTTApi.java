package LiferayTT.api.api;
import com.liferay.portal.kernel.json.JSONArray;
import com.liferay.portal.kernel.json.JSONObject;

/**
 * LiferayTTApi.java
 * 
 * @author Hemerson Ruiz
 */
public interface LiferayTTApi {

	public JSONArray getProductsInformation();
	
	public JSONObject setAccountStatus(String customerId, String accountStatus);
}