component entityName="user" table="user" persistent=true extends="models.orm.base" {

	// primary key
	property name="userID" column="userID" fieldtype="id" generator="native" setter="false";

	// non-relational columns
	property name="company" default="";
	property name="first" default="";
	property name="last" default="";
	property name="initials" default="";
	property name="email" default="";
	property name="password" default="#hash(getTickCount())#";
	property name="roles" default="user";
	property name="isActive" default="0"; // {active=1,disabled=0}
	property name="gender" default="0"; // {male=1,female=2}

	property name="lastLoginAt" default="";
	property name="passwordExpiresAt" default="";

	this.constraints = {
		company = { required=false, size="2..255" },
		first = { required=true, size="2..100" },
		last = { required=true, size="2..100"},
		initials = { required=true, size="0..5"},
		email = {required=true, type="email", size="7..255"},
		password = {required=true, size="6..36"},
		token = {required=true, size="0..64"},
		roles = {required=true, size="2..16000"}
	};

	this.editor = {
		fields = {
			"password" = {type="password"},
			"email" = {type="input"}
		}
	}

	// methods
	public user function init() {
		return this;
	}

	function setPassword(required string data){
		if(len(trim(data))){
			password = hash(trim(data));
		}
	}

	function getName(){

		return getFirst() & " " & getLast();
	}

	function setGender(required string data){
		if( isNumeric(data) ){
			gender = arguments.data
		}else{
			switch(data){
				case "male":
					gender = 1;
					break;

				case "female":
					gender = 2;
					break;
				default:
					throw("Unknown Gender #arguments.data#","user");
			}
		}
	}

}