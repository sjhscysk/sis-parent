
package com.ruoyi.webservice.gen;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>trainDetailInfoArray complex type的 Java 类。
 * 
 * <p>以下模式片段指定包含在此类中的预期内容。
 * 
 * <pre>
 * &lt;complexType name="trainDetailInfoArray"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence maxOccurs="unbounded"&gt;
 *         &lt;element name="trainDetailInfo" type="{http://www.dc.com/ws/subscribe}trainDetailInfo"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "trainDetailInfoArray", propOrder = {
    "trainDetailInfo"
})
public class TrainDetailInfoArray {

    @XmlElement(required = true)
    protected List<TrainDetailInfo> trainDetailInfo;

    /**
     * Gets the value of the trainDetailInfo property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the trainDetailInfo property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getTrainDetailInfo().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link TrainDetailInfo }
     * 
     * 
     */
    public List<TrainDetailInfo> getTrainDetailInfo() {
        if (trainDetailInfo == null) {
            trainDetailInfo = new ArrayList<TrainDetailInfo>();
        }
        return this.trainDetailInfo;
    }

}
