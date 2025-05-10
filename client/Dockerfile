FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the application files
COPY . .

# Expose the port the frontend runs on
EXPOSE 3000

# Run the React app
CMD ["npm", "start"]
