FROM php:7.4-apache

# Update package lists
RUN apt-get update

# Install required packages
RUN apt-get install -y \
    nano \
    libpng-dev \
    libjpeg-dev \
    libpq-dev \
    libzip-dev \
    zip \
    unzip \
    libicu-dev \
    libxml2-dev \
    libonig-dev \
    cron \
    curl

# Install PHP extensions
RUN docker-php-ext-install \
    gd \
    mbstring \
    pdo \
    pdo_mysql \
    pdo_pgsql \
    zip \
    intl \
    opcache \
    bcmath \
    soap \
    mysqli \
    sqlite

# Enable Apache modules
RUN a2enmod rewrite

# Create the logs directory for Apache
RUN mkdir /etc/apache2/logs/

# Set the permissions for the logs directory
RUN chmod -R 777 /etc/apache2/logs/

# Set the document root to /var/www/html
ENV APACHE_DOCUMENT_ROOT /var/www/html
RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
RUN sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf

# Expose port 8080
EXPOSE 8080

# Copy the apache2 configuration
COPY apache2.conf /etc/apache2/apache2.conf

# Copy the Codeigniter app to the container
COPY . /var/www/html/

# Start the container in interactive mode and run a shell
CMD ["bash"]
