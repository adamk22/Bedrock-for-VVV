# Bedrock for VVV 2.0+

A provisioning script that works with VVV 2.0+

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

### 3. TODO

-   Optional: Ability to add a theme repository that will install the theme during provisioning
-   Optional: Ability to add plugins/mu-plugins
