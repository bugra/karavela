# Install caravel
pip install caravel

# Create an admin user
fabmanager create-admin --app caravel

# Initialize the database
caravel db upgrade

# Create default roles and permissions
caravel init

# Load some data to play with
caravel load_examples

# Start the development web server
caravel runserver -d
