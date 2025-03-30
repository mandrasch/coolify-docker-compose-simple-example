FROM craftcms/nginx:8.2

# Install composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /app

# Copy the project files to the container
COPY ./ /app

EXPOSE 80