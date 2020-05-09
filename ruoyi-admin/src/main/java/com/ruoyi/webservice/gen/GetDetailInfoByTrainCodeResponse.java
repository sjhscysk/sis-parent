
package com.ruoyi.webservice.gen;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>anonymous complex type的 Java 类。
 * 
 * <p>以下模式片段指定包含在此类中的预期内容。
 * 
 * <pre>
 * &lt;complexType&gt;
 *   &lt;complexContent&gt;
 *     &lt;extension base="{http://www.dc.com/ws/subscribe}result"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="data" type="{http://www.dc.com/ws/subscribe}trainDetailInfoArray" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/extension&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
    "data"
})
@XmlRootElement(name = "getDetailInfoByTrainCodeResponse")
public class GetDetailInfoByTrainCodeResponse
    extends Result
{

    protected TrainDetailInfoArray data;

    /**
     * 获取data属性的值。
     * 
     * @return
     *     possible object is
     *     {@link TrainDetailInfoArray }
     *     
     */
    public TrainDetailInfoArray getData() {
        return data;
    }

    /**
     * 设置data属性的值。
     * 
     * @param value
     *     allowed object is
     *     {@link TrainDetailInfoArray }
     *     
     */
    public void setData(TrainDetailInfoArray value) {
        this.data = value;
    }

}
