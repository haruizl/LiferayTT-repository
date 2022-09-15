package LiferayTT.api.config;

import com.liferay.petra.string.StringPool;
import com.liferay.portal.configuration.metatype.annotations.ExtendedObjectClassDefinition;
import com.liferay.portal.configuration.metatype.annotations.ExtendedObjectClassDefinition.Scope;

import aQute.bnd.annotation.metatype.Meta;

/**
 * LiferayTTConfiguration.java
 * <p>
 * LiferayTT System Configuration
 *
 * @author Hemerson Ruiz
 */
@ExtendedObjectClassDefinition(category = "liferay", scope = Scope.SYSTEM)
@Meta.OCD(
		id = "LiferayTT.api.config.LiferayTTConfiguration", 
		localization = "content/Language", 
		name = "liferay-tt-configuration")
public interface LiferayTTConfiguration {

	
	@Meta.AD(deflt = StringPool.BLANK, name = "liferayTT-gateway-token", required = false)
	String getGatewayToken();

	@Meta.AD(deflt = StringPool.BLANK, name = "liferayTT-products-information-url", required = false)
	String getProductsInformationUrl();

	@Meta.AD(deflt = StringPool.BLANK, name = "liferayTT-set-account-status-url", required = false)
	String setAccountStatusUrl();
}
