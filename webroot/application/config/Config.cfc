component extends="preside.system.config.Config" output=false {

	public void function configure() output=false {
		super.configure();

		settings.preside_admin_path         = "heroku_admin";
		settings.system_user                = "sysadmin";
		settings.default_locale             = "en";

		settings.default_log_name           = "heroku";
		settings.default_log_level          = "information";
		settings.sql_log_name               = "heroku";
		settings.sql_log_level              = "information";

		settings.ckeditor.defaults.stylesheets.append( "css-bootstrap" );
		settings.ckeditor.defaults.stylesheets.append( "css-layout" );

		settings.features.websiteUsers.enabled = false;
		settings.autoSyncDB = true;
		settings.showErrors = true;

		settings.uploads_directory     = server.system.environment.S3_BUCKET;
		settings.tmp_uploads_directory = ExpandPath( "/uploads" );
	}
}