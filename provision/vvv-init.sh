project="${VVV_SITE_NAME}"

echo "Commencing Bedrock Setup"

# Make a database, if we don't already have one
echo "Creating database"
mysql -u root --password=root -e "CREATE DATABASE IF NOT EXISTS $project"
mysql -u root --password=root -e "GRANT ALL PRIVILEGES ON $project.* TO wp@localhost IDENTIFIED BY 'wp';"

# Download Bedrock
if [ ! -d public_html ]
then

  # Nginx Logs
  echo "Creating logs"
  mkdir -p ${VVV_PATH_TO_SITE}/log
  touch ${VVV_PATH_TO_SITE}/log/error.log
  touch ${VVV_PATH_TO_SITE}/log/access.log

  echo "Installing Bedrock stack using Composer"
  composer create-project roots/bedrock public_html

  # Download Sage
  # echo "Downloading Sage"
  # cd public_html/web/app/themes
  #   git clone https://github.com/roots/sage.git --branch 8.5.3 --single-branch
  #   mv sage $project
fi

# The Vagrant site setup script will restart Nginx for us

echo "$project Bedrock site now installed";