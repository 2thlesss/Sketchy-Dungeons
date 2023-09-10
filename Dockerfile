# Use the official Swift image from the Docker Hub
FROM swift:5.4

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install necessary packages and dependencies
RUN apt-get update && apt-get install -y \
    libgtk-3-dev \
    libcairo2-dev \
    libpango1.0-dev \
    libgdk-pixbuf2.0-dev \
    libatk1.0-dev \
    libghc-gi-glib-dev

# Build the project
RUN swift build

# Run the app
CMD ["swift", "run"]
