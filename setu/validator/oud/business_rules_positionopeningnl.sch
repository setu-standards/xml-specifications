<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" schemaVersion="nl.setu.2007.businessrules.positionopeningnl">
	<sch:title>Business rules voor het controleren van een timecard bericht (SETU Standard for Vacancies versie 1.0).</sch:title>
	<sch:ns prefix="setu" uri="http://ns.hr-xml.org/2007-04-15"/>
	<sch:ns prefix="xsd" uri="http://www.w3.org/2001/XMLSchema"/>
    
    <sch:pattern id="codes" name="CodeLists">
        <!-- Lijst met waarden voor rule vacature PositionRecordInfo.2; SETU codelist vacancyRoles -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.PositionRecordInfo.2">
            <dt>owner</dt>
            <dt>recruiter</dt>
            <dt>distributer</dt>
            <dt>publicist</dt>
        </di>	

        <!-- Lijst met waarden voor rule urenbriefje PositionRecordInfo.3; SETU codelist vacancyStatus -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.PositionRecordInfo.3">
            <dt>x:put</dt>
            <dt>x:edit</dt>
            <dt>x:delete</dt> 
            <dt>x:duplicate</dt>
            <dt>x:activate</dt>
            <dt>x:deactivate</dt>
            <dt>x:prolong</dt>
        </di>
        
        <!-- Lijst met waarden voor rule vacature SupplierId.1; SETU codelist vacancyIdOwner -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.SupplierId.1">
            <dt>owner</dt>
            <dt>recruiter</dt>
            <dt>distributer</dt>
            <dt>publicist</dt>
            <dt>KVK</dt>
            <dt>OIN</dt>
            <dt>BTW</dt>
            <dt>Fi</dt>
        </di>

        <!-- Lijst met waarden voor rule vacature SocialMedia.1; SETU codelist socialMedia -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.SocialMedia.1">
            <dt>facebook</dt>
            <dt>twitter</dt>
            <dt>linkedin</dt>
            <dt>hyves</dt>
            <dt>google+</dt>
        </di>
        
        <!-- Lijst met waarden voor rule vacature RecruiterType.1; SETU codelist recruiterType -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.RecruiterType.1">
            <dt>direct</dt>
            <dt>intermediary</dt>
            <dt>media-agency</dt>
            <dt>rpo</dt>
        </di>
            
        <!-- Lijst met waarden voor rule vacature PhysicalLocation.2 -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.PhysicalLocation.2">
            <dt>municipality</dt>
            <dt>region</dt>
            <dt>province</dt>
            <dt>country</dt>
        </di>
        
        <!-- Lijst met waarden voor rule vacature JobCategory.1; SETU codelist jobCategory -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.JobCategory.1">
            <dt>1</dt>
            <dt>2</dt>
            <dt>3</dt>
            <dt>4</dt>
            <dt>5</dt>
            <dt>6</dt>
            <dt>7</dt>
            <dt>8</dt>
            <dt>9</dt>
            <dt>10</dt>
            <dt>11</dt>
            <dt>12</dt>
            <dt>13</dt>
            <dt>14</dt>
            <dt>15</dt>
            <dt>16</dt>
            <dt>17</dt>
            <dt>18</dt>
            <dt>19</dt>
            <dt>20</dt>
            <dt>21</dt>
            <dt>22</dt>
            <dt>23</dt>
            <dt>24</dt>
            <dt>25</dt>
            <dt>26</dt>
            <dt>27</dt>
            <dt>28</dt>
            <dt>29</dt>
        </di>	
        
        <!-- Lijst met waarden voor rule vacature BasePay.2; SETU codelist salaryPeriod -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.BasePay.2">
            <dt>Hourly</dt>
            <dt>Daily</dt>
            <dt>Weekly</dt>
            <dt>x:FourWeekly</dt>
            <dt>Montly</dt>
            <dt>Annually</dt>
        </di>	
        
        <!-- Lijst met waarden voor rule vacature ContractDetails.1; SETU codelist durationContract -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.ContractDetails.1">
            <dt>permanent</dt>
            <dt>predetermined</dt>
            <dt>predeterminedprospectpermanent</dt>
        </di>
        
        <!-- Lijst met waarden voor rule vacature ContractDetails.2; SETU codelijst typeOfContract -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.ContractDetails.2">
            <dt>direct</dt>
            <dt>temporaryandsecondment</dt>
            <dt>intern</dt>
            <dt>freelance</dt>
            <dt>franchise</dt>
            <dt>trainee</dt>
        </di>
        
        <!-- Lijst met waarden voor rule vacature ContractDetails.3; SETU codelist contractFeatures -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.ContractDetails.3">
            <dt>1</dt>
            <dt>2</dt>
            <dt>3</dt>
            <dt>4</dt>
            <dt>5</dt>
            <dt>6</dt>
            <dt>7</dt>
            <dt>8</dt>
            <dt>9</dt>
            <dt>10</dt>
            <dt>11</dt>
            <dt>12</dt>
            <dt>13</dt>
            <dt>14</dt>
            <dt>15</dt>
            <dt>16</dt>
            <dt>17</dt>
            <dt>18</dt>
            <dt>19</dt>
            <dt>20</dt>
            <dt>21</dt>
            <dt>22</dt>
        </di>
        
        <!-- Lijst met waarden voor rule vacature Requirements.1; SETU codelist educationDegree -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.Requirements.1">
            <dt>1</dt>
            <dt>2</dt>
            <dt>3</dt>
            <dt>4</dt>
            <dt>5</dt>
            <dt>6</dt>
        </di>
        
        <!-- Lijst met waarden voor rule vacature Requirements.3; SETU codelist careerLevel -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.Requirements.3">
            <dt>ManagingDirector</dt>
            <dt>Manager</dt>
            <dt>Professional-Experienced</dt>
            <dt>Starter</dt>
            <dt>Student</dt>
        </di>
        
        <!-- Lijst met waarden voor rule vacature ApplicationMethod.1; SETU codelist applicationMethodType -->
        <sch:let name="OrderType" value="',RFQ,order,'"/>
        <di id="nl.setu.2007.businessrule.positionopeningnl.list.ApplicationMethod.1">
            <dt>Post</dt>
            <dt>Email</dt>
            <dt>Telephone</dt>
            <dt>SocialMedia</dt>
            <dt>ApplicationFormURL</dt>
            <dt>VacancyURL</dt>
            <dt>JobboardURL</dt>
            <dt>InPerson</dt>
        </di>
    </sch:pattern>
    
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.PositionOpeningNL.1">
		<sch:title>Controleren of het xml:lang attribuut aanwezig is en gevuld is.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL">
			<sch:assert test="(count(@xml:lang) = 1) and (normalize-space(@xml:lang) != '')"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PositionOpeningNL.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.NumberToFill.1">
		<sch:title>Controleren of het element NumberToFill aanwezig is en zo ja, of de waarde groter of gelijk aan 1 is.</sch:title>
		<sch:p>In de context wordt het element PositionOpeningNL geselecteerd. Er wordt gekeken of het element NumberToFill
			aanwezig is en zo ja, of deze een waarde heeft groter of gelijk aan 1. 
			Anders wordt een foutmelding gegeven.</sch:p>
		<sch:rule context="/setu:PositionOpeningNL">
			<sch:assert test=" if ((count(setu:NumberToFill) = 1) and (setu:NumberToFill castable as xsd:integer))
								then (setu:NumberToFill &gt;= 1)
								else 'true'"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.NumberToFill.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.PositionRecordInfo.1">
		<sch:title>Controleren of het Id element minimaal 1x en maximaal 4x voorkomt.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionRecordInfo">
			<sch:assert test="(count(setu:Id) &gt;= 1) and (count(setu:Id) &lt; 5)"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PositionRecordInfo.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>

	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.PositionRecordInfo.2">
		<sch:title>Controleren of het idOwner attribuut onder het Id element aanwezig is en een van de toegestane waardes bevat. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionRecordInfo/setu:Id">
			<sch:assert test=" (count(@idOwner) = 1) and 
								(document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.PositionRecordInfo.2']/*[ lower-case(.) = lower-case(current()/@idOwner) ])"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PositionRecordInfo.2">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.PositionRecordInfo.3">
		<sch:title>Controleren of het Status element onder het PositionRecordInfo element aanwezig is en een van de toegestane waardes bevat. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionRecordInfo">
			<sch:assert test=" (count(setu:Status) = 1) and 
								(document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.PositionRecordInfo.3']/*[ lower-case(.) = lower-case(current()/setu:Status) ])"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PositionRecordInfo.3">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.SupplierId.1">
		<sch:title>Controleren of het idOwner attribuut onder het SupplierId element aanwezig is en een van de toegestane waardes bevat. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionSupplierNL/setu:SupplierId">
			<sch:assert test=" (count(@idOwner) = 1) and 
								(document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.SupplierId.1']/*[ lower-case(.) = lower-case(current()/@idOwner) ])"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.SupplierId.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.SocialMedia.1">
		<sch:title>Controleren of het element SocialMediumParty een van de toegestane waardes bevat. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="//setu:SocialMedia">
			<sch:assert test=" document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.SocialMedia.1']/*[ lower-case(.) = lower-case(current()/setu:SocialMedium/setu:SocialMediumParty) ]"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.SocialMedia.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.Role.1">
		<sch:title>Controleren of het element Role een van de toegestane waardes bevat. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionSupplierNL/setu:Role">
			<sch:assert test=" document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.PositionRecordInfo.2']/*[ lower-case(.) = lower-case(current())]"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.Role.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.RecruiterType.1">
		<sch:title>Controleren of het element RecruiterType aanwezig is en zo ja, een van de toegestane waardes bevat. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionSupplierNL">
			<sch:assert test=" if (count(setu:RecruiterType) = 1)
								then ((normalize-space(setu:Role) = 'recruiter') and
								(document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.RecruiterType.1']/*[ lower-case(.) = lower-case(current()/setu:RecruiterType) ]))
								else 'true'"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.RecruiterType.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.ContactInfo.1">
		<sch:title>Controleren of het attribuut purpose aanwezig is en de waarde 'x:moreinfo' bevat.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:Organization/setu:ContactInfo">
			<sch:assert test="(count(@purpose) = 1) and (normalize-space(@purpose) = 'x:moreinfo')"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContactInfo.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.ContactInfo.2">
		<sch:title>Controleren of het element ContactName/FormattedName aanwezig is en gevuld is.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:Organization/setu:ContactInfo">
			<sch:assert test="(count(setu:ContactName/setu:FormattedName) = 1) and 
								(normalize-space(setu:ContactName/setu:FormattedName) != '')"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContactInfo.2">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.ContactInfo.3">
		<sch:title>Controleren of het element ContactMethod aanwezig is.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:Organization/setu:ContactInfo">
			<sch:assert test="count(setu:ContactMethod) = 1"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContactInfo.3">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.PositionDetail.1">
		<sch:title>Controleren of het element PositionDetail aanwezig is.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL">
			<sch:assert test="count(setu:PositionDetail) = 1"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PositionDetail.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.PhysicalLocation.1">
		<sch:title>Controleren of het element Area/Value aanwezig is en gevuld is.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:PositionDetail/setu:PhysicalLocation">
			<sch:assert test="(count(setu:Area/setu:Value) = 1) and 
								(normalize-space(setu:Area/setu:Value) != '')"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PhysicalLocation.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.PhysicalLocation.2">
		<sch:title>Controleren of het attribuut type van het element Area aanwezig is en een van de toegestane waardes bevat.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:PositionDetail/setu:PhysicalLocation/setu:Area">
			<sch:assert test="if (count(@type) = 1) 
								then (document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.PhysicalLocation.2']/*[ lower-case(.) = lower-case(current()/@type) ])
								else 'true'"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PhysicalLocation.2">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.JobCategory.1">
		<sch:title>Controleren of het element JobCategory/CategoryCode aanwezig is en een waarde uit de codelijst jobCategory bevat </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:PositionDetail">
			<sch:assert test="(count(setu:JobCategory/setu:CategoryCode) = 1) and 
								(document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.JobCategory.1']/*[ lower-case(.) = lower-case(current()/setu:JobCategory/setu:CategoryCode) ])"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.JobCategory.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.BasePay.1">
		<sch:title>Controleren of het element BasePay aanwezig is en zo ja, of de attributen currencyCode en baseInterval en de elementen BasePayAmountMin en BasePayAmountMax aanwezig zijn en gevuld zijn. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:PositionDetail/setu:RenumerationPackage">
			<sch:assert test=" if (count(setu:BasePay) = 1) 
								then (count(setu:BasePay/@currencyCode) = 1) and (normalize-space(setu:BasePay/@currencyCode) != '')
								and (count(setu:BasePay/@baseInterval) = 1) and (normalize-space(setu:BasePay/@baseInterval) != '')
								and (count(setu:BasePay/setu:BasePayAmountMin) = 1) and (normalize-space(setu:BasePay/setu:BasePayAmountMin) != '')
								and (count(setu:BasePay/setu:BasePayAmountMax) = 1) and (normalize-space(setu:BasePay/setu:BasePayAmountMax) != '')
								else 'true'"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.BasePay.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>	
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.BasePay.2">
		<sch:title>Controleren of de waarde van het attribuut baseInterval uit de codelijst salaryPeriod komt.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:PositionDetail/setu:RenumerationPackage/setu:BasePay">
			<sch:assert test= "(document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.BasePay.2']/*[ lower-case(.) = lower-case(current()/@baseInterval) ])"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.BasePay.2">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.ContractDetails.1">
		<sch:title>Controleren of de waarde van het element ContractDuration uit de codelijst durationContract komt.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:PositionDetail/setu:ContractDetails">
			<sch:assert test= "(document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.ContractDetails.1']/*[ lower-case(.) = lower-case(current()/setu:ContractDuration) ])"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContractDetails.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.ContractDetails.2">
		<sch:title>Controleren of de waarde van het element TypeOfContract uit de codelijst typeOfContract komt.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:PositionDetail/setu:ContractDetails">
			<sch:assert test= "(document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.ContractDetails.2']/*[ lower-case(.) = lower-case(current()/setu:TypeOfContract) ])"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContractDetails.2">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.ContractDetails.3">
		<sch:title>Controleren of de waarde in het element ContractFeature uit de codelijst contractFeatures komt. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:PositionDetail/setu:ContractDetails/setu:ContractFeatures">
			<sch:assert test= " document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.ContractDetails.3']/*[ lower-case(.) = lower-case(current()/setu:ContractFeature) ]"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContractDetails.3">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.Requirements.1">
		<sch:title>Controleren of het element EducationDegree aanwezig is en zo ja, of de waarde uit de codelijst educationDegree komt. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:PositionDetail/setu:Requirements">
			<sch:assert test= " if (count(setu:EducationDegree) = 1)
								then (document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.Requirements.1']/*[ lower-case(.) = lower-case(current()/setu:EducationDegree) ])
								else 'true'"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.Requirements.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.Requirements.2">
		<sch:title>Controleren of het element WorkingAndThinkingLevel aanwezig is en zo ja, of de waarde uit de codelijst educationDegree komt. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:PositionDetail/setu:Requirements">
			<sch:assert test= " if (count(setu:WorkingAndThinkingLevel) = 1)
								then (document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.Requirements.1']/*[ lower-case(.) = lower-case(current()/setu:WorkingAndThinkingLevel) ])
								else 'true'"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.Requirements.2">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.Requirements.3">
		<sch:title>Controleren of het element CareerLevel aanwezig is en zo ja, of de waarde uit de codelijst careerLevel. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:PositionProfileNL/setu:PositionDetail/setu:Requirements">
			<sch:assert test= " if (count(setu:CareerLevel) = 1)
								then (document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.Requirements.3']/*[ lower-case(.) = lower-case(current()/setu:CareerLevel) ])
								else 'true'"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.Requirements.3">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.ApplicationMethod.1">
		<sch:title>Controleren of het element MethodType aanwezig is en zo ja, of de waarde uit de codelijst applicationMethodType. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:ApplicationInformationNL/setu:HowToApply/setu:ApplicationMethod">
			<sch:assert test= " if (count(setu:MethodType) = 1)
								then (document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.ApplicationMethod.1']/*[ lower-case(.) = lower-case(current()/setu:MethodType) ])
								else 'true'"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ApplicationMethod.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.InPerson.1">
		<sch:title>Controleren of het element InPerson aanwezig is en zo ja, of het element TravelDirections aanwezig is en gevuld is.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:ApplicationInformationNL/setu:HowToApply/setu:ApplicationMethod/setu:ContactMethodApplication">
			<sch:assert test=" if(count(setu:InPerson) = 1)
								then (count(setu:InPerson/setu:TravelDirections) = 1) and 
								(normalize-space(setu:InPerson/setu:TravelDirections) != '')
								else 'true'"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.InPerson.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.ContactInformation.1">
		<sch:title>Controleren of het element ApplicationMethod aanwezig is en zo ja, of het element ContactInformation en het element ContactPersons aanwezig zijn.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:ApplicationInformationNL/setu:HowToApply">
			<sch:assert test=" if(count(setu:ApplicationMethod) &gt; 0)
								then (count(setu:ApplicationMethod/setu:ContactInformation) &gt;= 0) and (count(setu:ApplicationMethod/setu:ContactInformation/setu:ContactPersons) &gt;= 0)
								else 'true'"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContactInformation.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.DistributeTo.1">
		<sch:title>Controleren of het element DistributeTo aanwezig is en zo ja, of het element Id/IdValue aanwezig is en gevuld is.</sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:DistributionGuidelines">
			<sch:assert test=" if(count(setu:DistributeTo) &gt; 0)
								then (count(setu:DistributeTo/setu:Id/setu:IdValue) = 1) and (normalize-space(setu:DistributeTo/setu:Id/setu:IdValue) != '')
								else 'true'"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.DistributeTo.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.DistributeTo.2">
		<sch:title>Controleren of het element DistributeTo aanwezig is en zo ja, of het idOwner attribuut onder het Id element aanwezig is en een van de toegestane waardes bevat. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:DistributionGuidelines">
			<sch:assert test=" if(count(setu:DistributeTo) &gt; 0)
								then ((count(setu:DistributeTo/setu:Id/@idOwner) = 1) and 
								(document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.SupplierId.1']/*[ lower-case(.) = lower-case(current()/setu:DistributeTo/setu:Id/@idOwner) ]))
								else 'true'"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.DistributeTo.2">
			</sch:assert>
		</sch:rule>
	</sch:pattern>
	
	<sch:pattern id="nl.setu.2007.businessrules.positionopeningnl.businessrule.PublisherId.1">
		<sch:title>Controleren of het element PublisherPublication aanwezig is en zo ja, of het idOwner attribuut onder het PublisherId element aanwezig is en een van de toegestane waardes bevat. </sch:title>
		<sch:p></sch:p>
		<sch:rule context="/setu:PositionOpeningNL/setu:AdvertisementInfo/setu:PublicationDate/setu:PublicationDatesPublisher">
			<sch:assert test=" if(count(setu:PublisherPublication) &gt; 0)
								then ((count(setu:PublisherPublication/@idOwner) = 1) and 
								(document('lists_business_rules_positionopeningnl.xml')/dl/di[@id='nl.setu.2007.businessrule.positionopeningnl.list.SupplierId.1']/*[ lower-case(.) = lower-case(current()/setu:PublisherPublication/@idOwner) ]))
								else 'true'"
					flag="error"
					diagnostics="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PublisherId.1">
			</sch:assert>
		</sch:rule>
	</sch:pattern>

	<!-- 
		A number of XSLT operations are required when elements from external lists are referred to:
			1. document(): select the elements from a list (this returns a list of strings, seperated by \n and \t characters)
			2. tokenize(): split the returned elements into a sequence
			3. string-join(): join the sequence-elements to one string (implode)
			4. substring(): remove the first comma from the resulting string by starting at character position 2
			5. normalize-space(): normalize the resulting string to remove spaces and other whitespaces such as tabs 
	-->
	<sch:diagnostics>
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PositionOpeningNL.1" xml:lang="en">
			The languague of the vacancy must be specified in the xml:lang attribute of the PositionOpeningNL element.
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.NumberToFill.1" xml:lang="en">
			The element NumberToFill must be an integer with a value equal or higher than 1.
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PositionRecordInfo.1" xml:lang="en">
			The element Id in the element PositionRecordInfo must be present at least once and at most 4 times. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PositionRecordInfo.2" xml:lang="en">
			The attribute idOwner of the element Id in the element PositionRecordInfo must be present and contain a value from the code list vacancyRoles. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PositionRecordInfo.3" xml:lang="en">
			The element Status in the element PositionRecordInfo must be present and contain a value from the code list vacancyStatus.  
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.SupplierId.1" xml:lang="en">
			The attribute idOwner of the element SupplierId must be present and contain a value from the code list vacancyIdOwner. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.SocialMedia.1" xml:lang="en">
			The element SocialMediumParty of the element SocialMedia must contain a value from the code list socialMedia. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.Role.1" xml:lang="en">
			The element Role of the element PositionSupplierNL must contain a value from the code list vacancyRoles. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.RecruiterType.1" xml:lang="en">
			The element RecruiterType may only be filled when the element Role contains the value 'recruiter' and then should contain a value from the code list recruiterType. 
		</sch:diagnostic>

		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContactInfo.1" xml:lang="en">
			The attribute purpose of the element ContactInfo must be present and must contain the value 'x:moreinfo'. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContactInfo.2" xml:lang="en">
			The element ContactName/FormattedName of the element ContactInfo must be present and must contain a value. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContactInfo.3" xml:lang="en">
			The element ContactMethod of the element ContactInfo must be present. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PositionDetail.1" xml:lang="en">
			The element PositionDetail of the element PositionProfileNL must be present. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PhysicalLocation.1" xml:lang="en">
			The element Area/Value of the element PhysicalLocation must be present and must contain a value. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PhysicalLocation.2" xml:lang="en">
			The attribute type of the element Area should contain one of the following values: 'municipality', 'region', 'province' or 'country'.  
		</sch:diagnostic>
						
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.JobCategory.1" xml:lang="en">
			The element JobCategory/CategoryCode must contain a value from the code list jobCategory. 
		</sch:diagnostic>

		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.BasePay.1" xml:lang="en">
			The element BasePay must contain the attributes currencyCode and baseInterval and must contain the elements BasePayAmountMin and BasePayAmountMax.
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.BasePay.2" xml:lang="en">
			The attribute baseInterval of the element BasePay must contain a value from the code list salaryPeriod. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContractDetails.1" xml:lang="en">
			The element ContractDuration of the element ContractDetails must contain a value from the code list durationContract. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContractDetails.2" xml:lang="en">
			The element TypeOfContract of the element ContractDetails must contain a value from the code list typeOfContract. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContractDetails.3" xml:lang="en">
			The element ContractFeature must contain a value from the code list contractFeatures. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.Requirements.1" xml:lang="en">
			The element EducationDegree must contain a value from the code list educationDegree. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.Requirements.2" xml:lang="en">
			The element WorkingAndThinkingLevel must contain a value from the code list educationDegree. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.Requirements.3" xml:lang="en">
			The element CareerLevel must contain a value from the code list careerLevel. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ApplicationMethod.1" xml:lang="en">
			The element MethodType must contain a value from the code list applicationMethodType. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.InPerson.1" xml:lang="en">
			The element TravelDirections must be present and contain a value because the InPerson element is present. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.ContactInformation.1" xml:lang="en">
			In case a ApplicationMethod is specified, the container ContactInformation and the container ContactPersons must be present and filled. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.DistributeTo.1" xml:lang="en">
			In case the DistributeTo container is used, the Id of the party must be specified in the element Id/IdValue. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.DistributeTo.2" xml:lang="en">
			The attribute idOwner of the element DistributeTo/Id must be present and contain a value from the code list vacancyIdOwner. 
		</sch:diagnostic>
		
		<sch:diagnostic id="nl.setu.2007.businessrules.positionopeningnl.diagnostic.PublisherId.1" xml:lang="en">
			The attribute idOwner of the element PublisherId must be present and contain a value from the code list vacancyIdOwner. 
		</sch:diagnostic>
		
	</sch:diagnostics>
</sch:schema>