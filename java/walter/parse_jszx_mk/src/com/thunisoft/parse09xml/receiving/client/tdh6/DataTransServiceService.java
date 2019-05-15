
package com.thunisoft.parse09xml.receiving.client.tdh6;

import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import javax.xml.ws.Service;
import javax.xml.ws.WebEndpoint;
import javax.xml.ws.WebServiceClient;
import javax.xml.ws.WebServiceException;
import javax.xml.ws.WebServiceFeature;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.4-b01
 * Generated source version: 2.2
 * 
 */
@WebServiceClient(name = "DataTransServiceService", targetNamespace = "http://sjzh.swap.tdh/", wsdlLocation = "http://143.0.9.43:8085/zxfw/service/dataTransWebService.ws?wsdl")
public class DataTransServiceService
    extends Service
{

    private final static URL DATATRANSSERVICESERVICE_WSDL_LOCATION;
    private final static WebServiceException DATATRANSSERVICESERVICE_EXCEPTION;
    private final static QName DATATRANSSERVICESERVICE_QNAME = new QName("http://sjzh.swap.tdh/", "DataTransServiceService");

    static {
        URL url = null;
        WebServiceException e = null;
        try {
            url = new URL("http://143.0.9.43:8085/zxfw/service/dataTransWebService.ws?wsdl");
        } catch (MalformedURLException ex) {
            e = new WebServiceException(ex);
        }
        DATATRANSSERVICESERVICE_WSDL_LOCATION = url;
        DATATRANSSERVICESERVICE_EXCEPTION = e;
    }

    public DataTransServiceService() {
        super(__getWsdlLocation(), DATATRANSSERVICESERVICE_QNAME);
    }

    public DataTransServiceService(WebServiceFeature... features) {
        super(__getWsdlLocation(), DATATRANSSERVICESERVICE_QNAME, features);
    }

    public DataTransServiceService(URL wsdlLocation) {
        super(wsdlLocation, DATATRANSSERVICESERVICE_QNAME);
    }

    public DataTransServiceService(URL wsdlLocation, WebServiceFeature... features) {
        super(wsdlLocation, DATATRANSSERVICESERVICE_QNAME, features);
    }

    public DataTransServiceService(URL wsdlLocation, QName serviceName) {
        super(wsdlLocation, serviceName);
    }

    public DataTransServiceService(URL wsdlLocation, QName serviceName, WebServiceFeature... features) {
        super(wsdlLocation, serviceName, features);
    }

    /**
     * 
     * @return
     *     returns DataTransService
     */
    @WebEndpoint(name = "DataTransServicePort")
    public DataTransService getDataTransServicePort() {
        return super.getPort(new QName("http://sjzh.swap.tdh/", "DataTransServicePort"), DataTransService.class);
    }

    /**
     * 
     * @param features
     *     A list of {@link javax.xml.ws.WebServiceFeature} to configure on the proxy.  Supported features not in the <code>features</code> parameter will have their default values.
     * @return
     *     returns DataTransService
     */
    @WebEndpoint(name = "DataTransServicePort")
    public DataTransService getDataTransServicePort(WebServiceFeature... features) {
        return super.getPort(new QName("http://sjzh.swap.tdh/", "DataTransServicePort"), DataTransService.class, features);
    }

    private static URL __getWsdlLocation() {
        if (DATATRANSSERVICESERVICE_EXCEPTION!= null) {
            throw DATATRANSSERVICESERVICE_EXCEPTION;
        }
        return DATATRANSSERVICESERVICE_WSDL_LOCATION;
    }

}
