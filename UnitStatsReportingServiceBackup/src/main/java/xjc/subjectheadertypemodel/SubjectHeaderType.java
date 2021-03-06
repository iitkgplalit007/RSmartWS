//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.11 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2019.02.09 at 09:30:17 AM CST 
//


package subjectheadertypemodel;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElementRef;
import javax.xml.bind.annotation.XmlType;
import javax.xml.namespace.QName;
import org.jvnet.hyperjaxb3.xml.bind.annotation.adapters.XmlAdapterUtils;
import org.jvnet.jaxb2_commons.lang.Equals;
import org.jvnet.jaxb2_commons.lang.EqualsStrategy;
import org.jvnet.jaxb2_commons.lang.HashCode;
import org.jvnet.jaxb2_commons.lang.HashCodeStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBEqualsStrategy;
import org.jvnet.jaxb2_commons.lang.JAXBHashCodeStrategy;
import org.jvnet.jaxb2_commons.locator.ObjectLocator;
import org.jvnet.jaxb2_commons.locator.util.LocatorUtils;


/**
 * <p>Java class for SubjectHeaderType complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="SubjectHeaderType"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="SubjectHeading" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "SubjectHeaderType", propOrder = {
    "subjectHeading"
})
@Entity(name = "SubjectHeaderType")
@Table(name = "SUBJECT_HEADER_TYPE")
@Inheritance(strategy = InheritanceType.JOINED)
public class SubjectHeaderType
    implements Equals, HashCode
{

    @XmlElementRef(name = "SubjectHeading", namespace = "http://guidewire.com/bc/gx/subjectheadertypemodel", type = JAXBElement.class, required = false)
    protected JAXBElement<String> subjectHeading;
    @XmlAttribute(name = "Hjid")
    protected Long hjid;

    /**
     * Gets the value of the subjectHeading property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    @Transient
    public JAXBElement<String> getSubjectHeading() {
        return subjectHeading;
    }

    /**
     * Sets the value of the subjectHeading property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setSubjectHeading(JAXBElement<String> value) {
        this.subjectHeading = value;
    }

    /**
     * Gets the value of the hjid property.
     * 
     * @return
     *     possible object is
     *     {@link Long }
     *     
     */
    @Id
    @Column(name = "HJID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    public Long getHjid() {
        return hjid;
    }

    /**
     * Sets the value of the hjid property.
     * 
     * @param value
     *     allowed object is
     *     {@link Long }
     *     
     */
    public void setHjid(Long value) {
        this.hjid = value;
    }

    @Basic
    @Column(name = "SUBJECT_HEADING_ITEM", length = 255)
    public String getSubjectHeadingItem() {
        return XmlAdapterUtils.unmarshallJAXBElement(((JAXBElement<? extends String> ) this.getSubjectHeading()));
    }

    public void setSubjectHeadingItem(String target) {
        setSubjectHeading(XmlAdapterUtils.marshallJAXBElement(String.class, new QName("http://guidewire.com/bc/gx/subjectheadertypemodel", "SubjectHeading"), SubjectHeaderType.class, target));
    }

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if ((object == null)||(this.getClass()!= object.getClass())) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final SubjectHeaderType that = ((SubjectHeaderType) object);
        {
            JAXBElement<String> lhsSubjectHeading;
            lhsSubjectHeading = this.getSubjectHeading();
            JAXBElement<String> rhsSubjectHeading;
            rhsSubjectHeading = that.getSubjectHeading();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "subjectHeading", lhsSubjectHeading), LocatorUtils.property(thatLocator, "subjectHeading", rhsSubjectHeading), lhsSubjectHeading, rhsSubjectHeading)) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object object) {
        final EqualsStrategy strategy = JAXBEqualsStrategy.INSTANCE;
        return equals(null, null, object, strategy);
    }

    public int hashCode(ObjectLocator locator, HashCodeStrategy strategy) {
        int currentHashCode = 1;
        {
            JAXBElement<String> theSubjectHeading;
            theSubjectHeading = this.getSubjectHeading();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "subjectHeading", theSubjectHeading), currentHashCode, theSubjectHeading);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
