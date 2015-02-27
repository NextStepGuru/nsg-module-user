component {

	// Module Properties
	this.title 				= "User Module";
	this.author 			= "Jeremy R DeYoung";
	this.webURL 			= "http://www.nextstep.guru";
	this.description 		= "ColdBox Module for user management, implements ORM, & interfaces automatically with nsg-module-security";
	this.version			= "1.0.1";
	// If true, looks for views in the parent first, if not found, then in the module. Else vice-versa
	this.viewParentLookup 	= true;
	// If true, looks for layouts in the parent first, if not found, then in module. Else vice-versa
	this.layoutParentLookup = true;
	// Module Entry Point
	this.entryPoint			= "user";
	// Model Namespace
	this.modelNamespace		= "user";
	// CF Mapping
	this.cfmapping			= "user";
	// Module Dependencies
	this.dependencies 		= ["nsg-module-security"];

	function configure(){

		// parent settings
		parentSettings = {

		};

		// module settings - stored in modules.name.settings
		settings = {
		};

		// Layout Settings
		layoutSettings = {
		};

		// datasources
		datasources = {

		};

		// SES Routes
		routes = [
			// Module Entry Point
			{pattern="/", handler="home",action="index"},
			{pattern="/:handler?/:action?/:id?"}
		];

		// Custom Declared Points
		interceptorSettings = {
			customInterceptionPoints = ""
		};

		// Custom Declared Interceptors
		interceptors = [
		];

		// Binder Mappings
		binder.mapDirectory( "#moduleMapping#.models" );

	}

	/**
	* Fired when the module is registered and activated.
	*/
	function onLoad(){
	}

	/**
	* Fired when the module is unregistered and unloaded
	*/
	function onUnload(){

	}

}