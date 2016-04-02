# TEAM-SPIRIT
[![wercker status](https://app.wercker.com/status/e2f1ac1ee5f2ccf7edff55349b9b02f7/s "wercker status")](https://app.wercker.com/project/bykey/e2f1ac1ee5f2ccf7edff55349b9b02f7)
## This is the website repo for 3DC!

## Steps to get this running:

1. Install Postgres, get it running and create a local database!

	```shell
	brew update
	brew install postgres
	postgres -D /usr/local/var/postgres
	createdb team_spirit_dev
	```

2. Clone this repository

	``git clone git@github.com:SUTD-3DC/team-spirit.git``

3. Install RVM (Ruby Version Manager)

	``\curl -L https://get.rvm.io | bash -s stable``

4. Get the website running!

	```shell
	cd team-spirit
	rvm install 2.3.0
	bundle install
	cp config/database.yml.sample database.yml
	```

5. Create your secrets.yml file under *config/secrets.yml*

	```shell
	puma
	```

6. If the role 'postgres' does not exist,

	```pg
	CREATE USER postgres PASSWORD="password"
	ALTER DATABASE team_spirit_dev WITH OWNER postgres
	```

The website will be accessible at localhost:9292. Hooray!