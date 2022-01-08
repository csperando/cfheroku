
component extends="controller" {

	function config() {
		// usesLayout(name="layout", template="layout");
	}

	function emailTest() {

		VALIDATION = 'pubkey-917bc5663ff0091eecc7e1238bf576cd';
		API_KEY = 'debc6fdc746ce4f6dbaf41d00cc01506-0be3b63b-774f3cdb';
		FROM = 'postmaster@sandboxa763ba578bab4c0aad79b2b47d22b23d.mailgun.org';
		// FROM2 = 'mailgun@sandboxa763ba578bab4c0aad79b2b47d22b23d.mailgun.org';
		URL_PATH = 'https://api.mailgun.net/v3/';
		DOMAIN = 'sandboxa763ba578bab4c0aad79b2b47d22b23d.mailgun.org';

	}
}
