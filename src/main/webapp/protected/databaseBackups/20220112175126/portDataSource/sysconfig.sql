INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','userProfileTypes','User Profile Types Definitions','<?xml version="1.0" encoding="UTF-8"?>
<profiletypes>
	<profiletype typecode="PFL" typedescr="Default user profile">
		<attributes>
			<attribute name="fullname" attributetype="Monotext" description="Full Name" searchable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>userprofile:fullname</role>
				</roles>
			</attribute>
			<attribute name="email" attributetype="Monotext" description="Email" searchable="true">
				<validations>
					<required>true</required>
					<regexp><![CDATA[(?:[a-z0-9!#$%&''*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&''*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])]]></regexp>
				</validations>
				<roles>
					<role>userprofile:email</role>
				</roles>
			</attribute>
		</attributes>
	</profiletype>
</profiletypes>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','imageDimensions','Definition of the resized image dimensions','<Dimensions>
	<Dimension>
		<id>1</id>
		<dimx>90</dimx>
		<dimy>90</dimy>
	</Dimension>
	<Dimension>
		<id>2</id>
		<dimx>130</dimx>
		<dimy>130</dimy>
	</Dimension>
	<Dimension>
		<id>3</id>
		<dimx>150</dimx>
		<dimy>150</dimy>
	</Dimension>
</Dimensions>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','langs','Definition of the system languages','<?xml version="1.0" encoding="UTF-8"?>
<Langs>
  <Lang>
    <code>en</code>
    <descr>English</descr>
    <default>true</default>
  </Lang>
  <Lang>
    <code>it</code>
    <descr>Italian</descr>
  </Lang>
</Langs>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','contentTypes','Definition of the Content Types','<?xml version="1.0" encoding="UTF-8"?>
<contenttypes>
	<contenttype typecode="ANN" typedescr="Announcement" viewpage="announcements_read" listmodel="10051" defaultmodel="10005">
		<attributes>
			<attribute name="Title" attributetype="Longtext" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="StartDate" attributetype="Date" description="Start Date" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="EndDate" attributetype="Date" description="End Date" searcheable="true">
				<validations>
					<required>true</required>
					<rangestart attribute="StartDate" />
				</validations>
			</attribute>
			<attribute name="Summary" attributetype="Hypertext" indexingtype="TEXT" />
			<list name="Documents" attributetype="Monolist">
				<nestedtype>
					<attribute name="Documents" attributetype="Attach" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="CNG" typedescr="Generic Content" viewpage="announcements_read" listmodel="10011" defaultmodel="10001">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="MainBody" attributetype="Hypertext" description="Main Body" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Attaches" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="DLD" typedescr="Download Card" viewpage="download" listmodel="10031" defaultmodel="10003">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="File" attributetype="Attach">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="ShortDescr" attributetype="Hypertext" description="Short Description" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="LongDescr" attributetype="Hypertext" description="Long Description" indexingtype="TEXT" />
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
		</attributes>
	</contenttype>
	<contenttype typecode="NWS" typedescr="News" viewpage="news_read" listmodel="10021" defaultmodel="10002">
		<attributes>
			<attribute name="Date" attributetype="Date" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="MainBody" attributetype="Hypertext" description="Main Body" indexingtype="TEXT">
				<validations />
			</attribute>
			<attribute name="Picture" attributetype="Image" />
			<attribute name="Caption" attributetype="Text" indexingtype="TEXT" />
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Attaches" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attaches" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="RSL" typedescr="Resolution" viewpage="resolutions_read" listmodel="10041" defaultmodel="10004">
		<attributes>
			<attribute name="Number" attributetype="Number" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Date" attributetype="Date" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Title" attributetype="Longtext" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Summary" attributetype="Hypertext" indexingtype="TEXT" />
			<list name="Documents" attributetype="Monolist">
				<nestedtype>
					<attribute name="Documents" attributetype="Attach" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
</contenttypes>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jacms_resourceMetadataMapping','Mapping between resource Metadata and resource attribute fields','<mapping>
    <field key="alt"></field>
    <field key="description"></field>
    <field key="legend"></field>
    <field key="title"></field>
</mapping>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','subIndexDir','Name of the sub-directory containing content indexing files','indexdir20140703142340');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataTypeDefinitions','Definition of the Type Types','<datatypes />');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','dataobjectsubdir','Name of the sub-directory containing dataobject indexing files','index');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','params','Configuration params.','<?xml version="1.0" encoding="UTF-8"?>
<Params>
	<Param name="urlStyle">breadcrumbs</Param>
	<Param name="hypertextEditor">fckeditor</Param>
	<Param name="treeStyle_page">classic</Param>
	<Param name="treeStyle_category">classic</Param>
	<Param name="startLangFromBrowser">false</Param>
	<Param name="firstTimeMessages">false</Param>
	<Param name="useJsessionId">false</Param>
	<Param name="baseUrl">request</Param>
	<Param name="baseUrlContext">true</Param>
	<SpecialPages>
		<Param name="notFoundPageCode">notfound</Param>
		<Param name="homePageCode">homepage</Param>
		<Param name="errorPageCode">errorpage</Param>
		<Param name="loginPageCode">login</Param>
	</SpecialPages>
	<FeaturesOnDemand>
		<Param name="groupsOnDemand">true</Param>
		<Param name="categoriesOnDemand">true</Param>
		<Param name="contentTypesOnDemand">true</Param>
		<Param name="contentModelsOnDemand">true</Param>
		<Param name="apisOnDemand">true</Param>
		<Param name="resourceArchivesOnDemand">true</Param>
	</FeaturesOnDemand>
	<ExtendendPrivacyModule>
		<Param name="extendedPrivacyModuleEnabled">false</Param>
		<Param name="maxMonthsSinceLastAccess">6</Param>
		<Param name="maxMonthsSinceLastPasswordChange">3</Param>
	</ExtendendPrivacyModule>
	<ExtraParams>
		<Param name="legacyPasswordsUpdated">true</Param>
		<Param name="page_preview_hash">GiYHmJm9jmPlNGayTkNq</Param>
	</ExtraParams>
</Params>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','jpmail_config','Configurazione del servizio di invio eMail','<?xml version="1.0" encoding="UTF-8"?>
<mailConfig>
	<senders>
		<sender code="CODE1">EMAIL1@EMAIL.COM</sender>
		<sender code="CODE2">EMAIL2@EMAIL.COM</sender>
	</senders>
	<smtp debug="false">
		<host>localhost</host>
		<port>25000</port>
		<user></user>
		<password></password>
		<security>std</security>
	</smtp>
</mailConfig>');
INSERT INTO sysconfig (version,item,descr,config) VALUES ('production','entandoComponentsReport','The component installation report','<?xml version="1.0" encoding="UTF-8"?>
<reports status="OK">
	<creation>2022-01-12 17:37:09</creation>
	<lastupdate>2022-01-12 17:44:09</lastupdate>
	<components>
		<component code="entando-engine" date="2022-01-12 17:37:10" status="OK">
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<liquibase status="OK">
				<datasource name="portDataSource" status="OK" />
				<datasource name="servDataSource" status="OK" />
			</liquibase>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jacms" date="2022-01-12 17:37:17" status="OK">
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<liquibase status="OK">
				<datasource name="portDataSource" status="OK" />
			</liquibase>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="portalexample_card" date="2022-01-12 17:37:20" status="OK">
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<liquibase status="OK">
				<datasource name="servDataSource" status="OK" />
			</liquibase>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-admin-console" date="2022-01-12 17:37:22" status="OK">
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<liquibase status="OK">
				<datasource name="servDataSource" status="OK" />
			</liquibase>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="entando-portal-ui" date="2022-01-12 17:37:23" status="OK">
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<liquibase status="INIT" />
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="defaultResources" date="2022-01-12 17:37:23" status="OK">
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<liquibase status="OK">
				<datasource name="portDataSource" status="OK" />
			</liquibase>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpredis" date="2022-01-12 17:37:24" status="OK">
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<liquibase status="INIT" />
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpmail" date="2022-01-12 17:44:03" status="OK">
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<liquibase status="OK">
				<datasource name="portDataSource" status="OK" />
			</liquibase>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpversioning" date="2022-01-12 17:44:06" status="OK">
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<liquibase status="OK">
				<datasource name="portDataSource" status="OK" />
			</liquibase>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpseo" date="2022-01-12 17:44:07" status="OK">
			<data status="OK">
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
			</data>
			<liquibase status="OK">
				<datasource name="portDataSource" status="OK" />
			</liquibase>
			<postProcess status="NOT_AVAILABLE" />
		</component>
	</components>
</reports>');
