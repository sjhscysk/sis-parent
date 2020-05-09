
package com.ruoyi.webservice.gen;

import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>dataCategoryArray complex type的 Java 类。
 * 
 * <p>以下模式片段指定包含在此类中的预期内容。
 * 
 * <pre>
 * &lt;complexType name="dataCategoryArray"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence maxOccurs="unbounded"&gt;
 *         &lt;element name="dataCategory" type="{http://www.dc.com/ws/subscribe}dataCategory"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "dataCategoryArray", propOrder = {
    "dataCategory"
})
public class DataCategoryArray {

    @XmlElement(required = true)
    protected List<DataCategory> dataCategory;

    /**
     * Gets the value of the dataCategory property.
     * 
     * <p>
     * This accessor method returns a reference to the live list,
     * not a snapshot. Therefore any modification you make to the
     * returned list will be present inside the JAXB object.
     * This is why there is not a <CODE>set</CODE> method for the dataCategory property.
     * 
     * <p>
     * For example, to add a new item, do as follows:
     * <pre>
     *    getDataCategory().add(newItem);
     * </pre>
     * 
     * 
     * <p>
     * Objects of the following type(s) are allowed in the list
     * {@link DataCategory }
     * 
     * 
     */
    public List<DataCategory> getDataCategory() {
        if (dataCategory == null) {
            dataCategory = new ArrayList<DataCategory>();
        }
        return this.dataCategory;
    }

}
