package com.ruoyi.webservice.config;

import com.ruoyi.webservice.WsConst;
import org.springframework.boot.web.servlet.ServletRegistrationBean;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.ws.config.annotation.EnableWs;
import org.springframework.ws.config.annotation.WsConfigurerAdapter;
import org.springframework.ws.server.EndpointInterceptor;
import org.springframework.ws.soap.SoapVersion;
import org.springframework.ws.soap.saaj.SaajSoapMessageFactory;
import org.springframework.ws.transport.http.MessageDispatcherServlet;
import org.springframework.ws.wsdl.wsdl11.DefaultWsdl11Definition;
import org.springframework.xml.xsd.SimpleXsdSchema;
import org.springframework.xml.xsd.XsdSchema;

import java.util.List;

@EnableWs       //开启webService
@Configuration
public class WebServiceConfig extends WsConfigurerAdapter {
    @Bean
    public ServletRegistrationBean messageDispatcherServlet(ApplicationContext applicationContext) {
        MessageDispatcherServlet servlet = new MessageDispatcherServlet();
        servlet.setApplicationContext(applicationContext);
        servlet.setTransformWsdlLocations(true);    //true 地址会进行转换，不然都是本地地址
        //这里可以设置 请求的工厂类，实现有两个：SaajSoapMessageFactory 和 AxiomSoapMessageFactory
        //默认是 SaajSoapMessageFactory
        //servlet.setMessageFactoryBeanName(messageFactoryBeanName);
        return new ServletRegistrationBean(servlet, "/ws/*");
    }

    //name 就是对应 wsdl名，如 ：/ws/subscribe.wsdl
    @Bean(name = "subscribe")
    public DefaultWsdl11Definition defaultWsdl11Definition(XsdSchema schema) {
        DefaultWsdl11Definition wsdl11Definition = new DefaultWsdl11Definition();
        wsdl11Definition.setPortTypeName("SubscribePort");
        wsdl11Definition.setLocationUri("/ws/subscribe");
        wsdl11Definition.setSchema(schema);
        wsdl11Definition.setTargetNamespace(WsConst.NAMESPACE_URI);
        return wsdl11Definition;
    }

    //可自定义SaajSoapMessageFactory 然后指定其SOAP版本
    @Bean
    public SaajSoapMessageFactory messageFactory() {
        //指定版本
        SaajSoapMessageFactory messageFactory = new SaajSoapMessageFactory();
        messageFactory.setSoapVersion(SoapVersion.SOAP_11);
        return messageFactory;
    }

    @Bean
    public XsdSchema subscribeSchema() {
        return new SimpleXsdSchema(new ClassPathResource("schema/subscribe.xsd"));
    }

    @Override
    public void addInterceptors(List<EndpointInterceptor> interceptors) {
        //可以自定义拦截器
//        System.out.println("=====addInterceptors=====");
//        PayloadValidatingInterceptor validatingInterceptor = new PayloadValidatingInterceptor();
//        validatingInterceptor.setValidateRequest(true);
//        validatingInterceptor.setValidateResponse(true);
//        validatingInterceptor.setXsdSchema(beersSchema());
//        interceptors.add(validatingInterceptor);
    }
}