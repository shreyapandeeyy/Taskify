
# Use a Debian-based image for better native module compatibility
FROM node:22-bullseye-slim

# Set the working directory
WORKDIR /app

# Install build tools needed for bcrypt (and other native modules)
RUN apt-get update && apt-get install -y python3 g++ make

# Copy ONLY package files first (optimizes Docker layer caching)
COPY package*.json ./

# Install dependencies
# --force or --build-from-source can help ensure a clean bcrypt build
RUN npm install --force
RUN npm uninstall bcrypt
RUN npm i bcrypt


# Now copy the rest of your code
COPY . .

RUN npx prisma db push
RUN npx prisma generate


# Build the Next.js application
RUN npx next build

# Expose port 80
EXPOSE 80

# Run the app on port 80
CMD ["npx", "next", "start", "-p", "80"]
