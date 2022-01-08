component output="false" {

	include "wheels/functions.cfm";

	this.mailservers =[ {
		host: 'smtp.mailgun.org'
		, port: 587
		, username: 'postmaster@sandboxa763ba578bab4c0aad79b2b47d22b23d.mailgun.org'
		, password:
		'encrypted:cbd468f526b712ea1144b4dbbc2070d79d2608c5c7ff09df9fdff679640e1407e0aed2a57621293270e622073f56c97e3c0f39bec65bcd58bcbd595a2b4710b0ebb3cbf58f3a825b48f04caa01bd20f5f6d0a9948ffea53c3e98c69fa19a260872480895493811eacdb92fb64a474ec2'

		, ssl: false
		, tls: false
		, lifeTimespan: createTimeSpan(0,0,1,0)
		, idleTimespan: createTimeSpan(0,0,0,10)
	}];

}
