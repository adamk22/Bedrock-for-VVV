# Bedrock for VVV 2.0+

A provisioning script for Bedrock that works with VVV 2.0+

## Overview

This template allows you to create a Bedrock configured WordPress instance. This template will create an empty db, install Bedrock and configure Nginx.

# Configuration

### 1. Adding site:

Add this to your `vvv-custom.yml` and run `vagrant up --provision` or `vagrant reload --provision` depending on your vagrant machine state.

```
my-site:
    repo: https://github.com/adamk22/WP-Bedrock-VVV-2.0-Provisioning.git
    hosts:
        - my-site.test
```

### 2. Configuring DB

-   After provisioning, open up `/public_html/.env` and fill in the correct credentials and salt keys.
-   Go to http://my-site.test/wp/wp-admin to start configuring your WordPress instance.

### 3. Configuring Theme

This provisioning script automatically installs a customized forked [starter-theme](https://github.com/adamk22/base-camp) of [Base Camp](https://github.com/suomato/base-camp). If you wish to use your own, just delete the theme from the theme folder or comment out/remove line 26 to 30 of `provision/vvv-init.sh` before running the reprovision command.

-   [See this repo for instructions](https://github.com/adamk22/base-camp)

# TODO

-   Ability to add a theme repository that will install the theme during provisioning
-   Ability to add plugins/mu-plugins
-   Make base theme optional
