component entityName="userSocial" table="userSocial" persistent=true extends="models.orm.Base" database="busylife" {

	// primary key
	property name="userSocialID" column="userSocialID" fieldtype="id" generator="native" setter="false";

	// non-relational columns
	property name="userID" default="0";
	property name="referenceID" default="";
	property name="socialserviceID" default="0";
	property name="accessToken" default="";
	property name="clientID" default="";
	property name="clientSecret" default="";
	property name="idToken" default="";
	property name="jsonData" default="";
	property name="expiresAt" default="#now()#" ormtype="timestamp";

	property name="social" fieldtype="one-to-one" cfc="socialservice" fkcolumn="socialserviceID" lazy="true" missingRowIgnore="true" update="false" insert="false";

	this.constraints = {
	};

	this.editor = {
	}
}