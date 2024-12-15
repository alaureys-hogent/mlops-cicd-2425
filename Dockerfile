FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json yarn.lock ./
RUN yarn install --frozen-lockfile

# Copy the application code
COPY . .

# Expose port 3000 and define the start command
EXPOSE 3000
CMD ["yarn", "start"]
