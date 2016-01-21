# Website!

## Steps to get this running:

1. Install Postgres, get it running and create a local database!

```shell
  brew update
  brew install postgres
  postgres -D /usr/local/var/postgres
  createdb team_spirit_dev
```

2. Clone this repository

    git clone git@github.com:SUTD-3DC/team-spirit.git

3. Install RVM (Ruby Version Manager)

    \curl -L https://get.rvm.io | bash -s stable

4. Get the website running!

```shell
    cd team-spirit
    rvm install 2.3.0
    bundle install
    cp config/database.yml.sample database.yml
    puma
```