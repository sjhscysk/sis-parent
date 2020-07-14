//
// 此文件是由 JavaTM Architecture for XML Binding (JAXB) 引用实现 v2.2.7 生成的
// 请访问 <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// 在重新编译源模式时, 对此文件的所有修改都将丢失。
// 生成时间: 2019.12.09 时间 10:57:19 AM CST 
//


package com.ruoyi.webservice.gen;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>anonymous complex type的 Java 类。
 * 
 * <p>以下模式片段指定包含在此类中的预期内容。
 * 
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;extension base="{http://www.dc.com/ws/subscribe}result">
 *       &lt;sequence>
 *         &lt;element name="data" type="{http://www.dc.com/ws/subscribe}dataCategoryArray"/>
 *       &lt;/sequence>
 *     &lt;/extension>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "data"
})
@XmlRootElement(name = "getSubscribeListResponse")
public class GetSubscribeListResponse
    extends Result
{

    @XmlElement(required = true)
    protected DataCategoryArray data;

    /**
     * 获取data属性的值。
     * 
     * @return
     *     possible object is
     *     {@link DataCategoryArray }
     *     
     */
    public DataCategoryArray getData() {
        return data;
    }

    /**
     * 设置data属性的值。
     * 
     * @param value
     *     allowed object is
     *     {@link DataCategoryArray }
     *     
     */
    public void setData(DataCategoryArray value) {
        this.data = value;
    }

}
