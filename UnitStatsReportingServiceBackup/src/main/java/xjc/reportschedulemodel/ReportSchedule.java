//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v2.2.11 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2019.02.09 at 09:30:17 AM CST 
//


package reportschedulemodel;

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
 * <p>Java class for ReportSchedule complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="ReportSchedule"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="DateOfEvaluation" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="DateOfReporting" type="{http://www.w3.org/2001/XMLSchema}int" minOccurs="0"/&gt;
 *         &lt;element name="ReportLevel" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *         &lt;element name="ReportNumber" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "ReportSchedule", propOrder = {
    "dateOfEvaluation",
    "dateOfReporting",
    "reportLevel",
    "reportNumber"
})
@Entity(name = "ReportSchedule")
@Table(name = "REPORT_SCHEDULE")
@Inheritance(strategy = InheritanceType.JOINED)
public class ReportSchedule
    implements Equals, HashCode
{

    @XmlElementRef(name = "DateOfEvaluation", namespace = "http://guidewire.com/bc/gx/reportschedulemodel", type = JAXBElement.class, required = false)
    protected JAXBElement<Integer> dateOfEvaluation;
    @XmlElementRef(name = "DateOfReporting", namespace = "http://guidewire.com/bc/gx/reportschedulemodel", type = JAXBElement.class, required = false)
    protected JAXBElement<Integer> dateOfReporting;
    @XmlElementRef(name = "ReportLevel", namespace = "http://guidewire.com/bc/gx/reportschedulemodel", type = JAXBElement.class, required = false)
    protected JAXBElement<String> reportLevel;
    @XmlElementRef(name = "ReportNumber", namespace = "http://guidewire.com/bc/gx/reportschedulemodel", type = JAXBElement.class, required = false)
    protected JAXBElement<String> reportNumber;
    @XmlAttribute(name = "Hjid")
    protected Long hjid;

    /**
     * Gets the value of the dateOfEvaluation property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    @Transient
    public JAXBElement<Integer> getDateOfEvaluation() {
        return dateOfEvaluation;
    }

    /**
     * Sets the value of the dateOfEvaluation property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    public void setDateOfEvaluation(JAXBElement<Integer> value) {
        this.dateOfEvaluation = value;
    }

    /**
     * Gets the value of the dateOfReporting property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    @Transient
    public JAXBElement<Integer> getDateOfReporting() {
        return dateOfReporting;
    }

    /**
     * Sets the value of the dateOfReporting property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link Integer }{@code >}
     *     
     */
    public void setDateOfReporting(JAXBElement<Integer> value) {
        this.dateOfReporting = value;
    }

    /**
     * Gets the value of the reportLevel property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    @Transient
    public JAXBElement<String> getReportLevel() {
        return reportLevel;
    }

    /**
     * Sets the value of the reportLevel property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setReportLevel(JAXBElement<String> value) {
        this.reportLevel = value;
    }

    /**
     * Gets the value of the reportNumber property.
     * 
     * @return
     *     possible object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    @Transient
    public JAXBElement<String> getReportNumber() {
        return reportNumber;
    }

    /**
     * Sets the value of the reportNumber property.
     * 
     * @param value
     *     allowed object is
     *     {@link JAXBElement }{@code <}{@link String }{@code >}
     *     
     */
    public void setReportNumber(JAXBElement<String> value) {
        this.reportNumber = value;
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
    @Column(name = "DATE_OF_EVALUATION_ITEM", precision = 10, scale = 0)
    public Integer getDateOfEvaluationItem() {
        return XmlAdapterUtils.unmarshallJAXBElement(((JAXBElement<? extends Integer> ) this.getDateOfEvaluation()));
    }

    public void setDateOfEvaluationItem(Integer target) {
        setDateOfEvaluation(XmlAdapterUtils.marshallJAXBElement(Integer.class, new QName("http://guidewire.com/bc/gx/reportschedulemodel", "DateOfEvaluation"), ReportSchedule.class, target));
    }

    @Basic
    @Column(name = "DATE_OF_REPORTING_ITEM", precision = 10, scale = 0)
    public Integer getDateOfReportingItem() {
        return XmlAdapterUtils.unmarshallJAXBElement(((JAXBElement<? extends Integer> ) this.getDateOfReporting()));
    }

    public void setDateOfReportingItem(Integer target) {
        setDateOfReporting(XmlAdapterUtils.marshallJAXBElement(Integer.class, new QName("http://guidewire.com/bc/gx/reportschedulemodel", "DateOfReporting"), ReportSchedule.class, target));
    }

    @Basic
    @Column(name = "REPORT_LEVEL_ITEM", length = 255)
    public String getReportLevelItem() {
        return XmlAdapterUtils.unmarshallJAXBElement(((JAXBElement<? extends String> ) this.getReportLevel()));
    }

    public void setReportLevelItem(String target) {
        setReportLevel(XmlAdapterUtils.marshallJAXBElement(String.class, new QName("http://guidewire.com/bc/gx/reportschedulemodel", "ReportLevel"), ReportSchedule.class, target));
    }

    @Basic
    @Column(name = "REPORT_NUMBER_ITEM", length = 255)
    public String getReportNumberItem() {
        return XmlAdapterUtils.unmarshallJAXBElement(((JAXBElement<? extends String> ) this.getReportNumber()));
    }

    public void setReportNumberItem(String target) {
        setReportNumber(XmlAdapterUtils.marshallJAXBElement(String.class, new QName("http://guidewire.com/bc/gx/reportschedulemodel", "ReportNumber"), ReportSchedule.class, target));
    }

    public boolean equals(ObjectLocator thisLocator, ObjectLocator thatLocator, Object object, EqualsStrategy strategy) {
        if ((object == null)||(this.getClass()!= object.getClass())) {
            return false;
        }
        if (this == object) {
            return true;
        }
        final ReportSchedule that = ((ReportSchedule) object);
        {
            JAXBElement<Integer> lhsDateOfEvaluation;
            lhsDateOfEvaluation = this.getDateOfEvaluation();
            JAXBElement<Integer> rhsDateOfEvaluation;
            rhsDateOfEvaluation = that.getDateOfEvaluation();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "dateOfEvaluation", lhsDateOfEvaluation), LocatorUtils.property(thatLocator, "dateOfEvaluation", rhsDateOfEvaluation), lhsDateOfEvaluation, rhsDateOfEvaluation)) {
                return false;
            }
        }
        {
            JAXBElement<Integer> lhsDateOfReporting;
            lhsDateOfReporting = this.getDateOfReporting();
            JAXBElement<Integer> rhsDateOfReporting;
            rhsDateOfReporting = that.getDateOfReporting();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "dateOfReporting", lhsDateOfReporting), LocatorUtils.property(thatLocator, "dateOfReporting", rhsDateOfReporting), lhsDateOfReporting, rhsDateOfReporting)) {
                return false;
            }
        }
        {
            JAXBElement<String> lhsReportLevel;
            lhsReportLevel = this.getReportLevel();
            JAXBElement<String> rhsReportLevel;
            rhsReportLevel = that.getReportLevel();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "reportLevel", lhsReportLevel), LocatorUtils.property(thatLocator, "reportLevel", rhsReportLevel), lhsReportLevel, rhsReportLevel)) {
                return false;
            }
        }
        {
            JAXBElement<String> lhsReportNumber;
            lhsReportNumber = this.getReportNumber();
            JAXBElement<String> rhsReportNumber;
            rhsReportNumber = that.getReportNumber();
            if (!strategy.equals(LocatorUtils.property(thisLocator, "reportNumber", lhsReportNumber), LocatorUtils.property(thatLocator, "reportNumber", rhsReportNumber), lhsReportNumber, rhsReportNumber)) {
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
            JAXBElement<Integer> theDateOfEvaluation;
            theDateOfEvaluation = this.getDateOfEvaluation();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "dateOfEvaluation", theDateOfEvaluation), currentHashCode, theDateOfEvaluation);
        }
        {
            JAXBElement<Integer> theDateOfReporting;
            theDateOfReporting = this.getDateOfReporting();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "dateOfReporting", theDateOfReporting), currentHashCode, theDateOfReporting);
        }
        {
            JAXBElement<String> theReportLevel;
            theReportLevel = this.getReportLevel();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "reportLevel", theReportLevel), currentHashCode, theReportLevel);
        }
        {
            JAXBElement<String> theReportNumber;
            theReportNumber = this.getReportNumber();
            currentHashCode = strategy.hashCode(LocatorUtils.property(locator, "reportNumber", theReportNumber), currentHashCode, theReportNumber);
        }
        return currentHashCode;
    }

    public int hashCode() {
        final HashCodeStrategy strategy = JAXBHashCodeStrategy.INSTANCE;
        return this.hashCode(null, strategy);
    }

}
