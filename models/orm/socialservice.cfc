component entityName="socialservice" table="socialservice" persistent=true extends="models.orm.Base" database="busylife" {

	// primary key
	property name="socialserviceID" column="socialserviceID" fieldtype="id" generator="native" setter="false";

	// non-relational columns
	property name="name" default="";

	this.constraints = {
	};

	this.editor = {
	}
}