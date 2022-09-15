<%@ include file="/init.jsp" %>
<portlet:resourceURL id="/liferay-tt/setAccountStatus" var="ajaxResourceURL" />
<div class="d-flex flex-column align-items-center w-100">
    <div class="container">
        <h1 class="text-ocean"><liferay-ui:message key="lbl-title" /></h1>
        <div class="d-flex p-3 mt-4" id="product-container">
            <% for(int i = 0; i < products.length(); i++){
                JSONObject product = products.getJSONObject(i);
           %>
           <div class="product col-2 mr-4 text-dark p-3">
                <div class="p-2 mb-1 d-none" style="height: 60px;color: white;font-size: 0.8em;border: 1px solid silver;border-radius: 15px;justify-content: center;display: flex;font-family: monospace;box-shadow: 3px 3px silver;">
                    <button onclick="setAccountStatus(this);" style="background: #31afb4;border: none;" class="mx-2 p-2 text-white">
                        <p>Deshabilitar</p></button>
                </div>
                <div class="product-icon mb-1"></div>
                <p class="mb-0"><%=product.getString(LiferayTTApiPortletKeys.CUSTOMER_ID) %></p>
                <p class="mb-0"><%=product.getString(LiferayTTApiPortletKeys.ACCOUNT_TYPE) %></p>
                <p class="text-ocean balance"><b><%=product.getString(LiferayTTApiPortletKeys.CURRENT_AMOUNT) %></b></p>
            </div>
          <%}%>
        </div>
    </div>
</div>
<script>
    function setAccountStatus(ctl) {
        containerButton = $(ctl).parents("div");
        containerProduct = containerButton.parents("div");
		var information = containerButton.children("p");
		var customerId = $(information[0]).text();
        var status = $(ctl).text() == "Desahabilitar"? "disabled":"enabled";
        AUI().use("aui-base", "aui-node", "aui-form-validator", "aui-io-request", function (A) {
            A.io.request("<%= ajaxResourceURL %>",
			    {
			        type :"POST",
			        dataType: "json",
			        data: {
			        <portlet:namespace/><%=LiferayTTPortletKeys.CMD_AJAX%>: "<%=LiferayTTPortletKeys.SET_ACCOUNT_STATUS%>",
			        <portlet:namespace/><%=LiferayTTApiPortletKeys.CUSTOMER_ID%>: customerId,
                    <portlet:namespace/><%=LiferayTTApiPortletKeys.STATUS%>: status
			        },
			        on : {
			            success: function(){
                            if(status == disabled){
                                $(ctl).text("Habilitar");
                            }else{
                                 $(ctl).text("Deshabilitar");
                            }
                            containerButton.addClass("d-none");
                            $(containerProduct.children("div")[1]).removeClass("d-none");												
			            },
			            failure: function(){
			            }
			        }
                }
			);
		});
    }
        
</script>