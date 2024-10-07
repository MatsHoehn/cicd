FROM node:alpine

# Set the working directory
WORKDIR /app

# Copy only package.json and yarn.lock first
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Now copy the rest of the application code
COPY . .

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["yarn", "start"]

