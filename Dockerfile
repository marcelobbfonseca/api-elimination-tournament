# Use an official Ruby runtime as a parent image
FROM ruby:3.2.1

# Set the working directory to /app
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install the gems specified in the Gemfile
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose port 3000 for the Rails server
EXPOSE 3000

# Set the default command to run the Rails server
CMD ["rails", "server", "-b", "0.0.0.0"]