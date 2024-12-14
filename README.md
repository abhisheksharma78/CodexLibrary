# Library Management System Project

## Project Overview

This project is a comprehensive Java Spring Boot application for a Library Management System, demonstrating various Java and Spring Boot concepts.

## Docker Container Management Scripts

### Docker Container Stopper Script

#### Purpose

The `stop-containers.sh` script provides a flexible utility to stop Docker containers with multiple operation modes.

#### Features

- Stop all running containers
- Stop containers with specific filters
- Stop containers by name pattern
- Comprehensive help documentation

#### Usage

```bash
# Show help information
./stop-containers.sh --help

# Stop all running containers
./stop-containers.sh all

# Stop containers with a specific filter
./stop-containers.sh filter status=running

# Stop containers matching a name pattern
./stop-containers.sh name 'web'
```

#### Filtering Options

- `status`: Filter containers by their current status
- `name`: Filter containers by their name
- `before`: Stop containers created before a specific container
- `since`: Stop containers created within a specific time frame

### Prerequisites

- Docker installed
- Bash shell
- Execution permissions on the script

### Script Installation

```bash
# Make the script executable
chmod +x stop-containers.sh
```

## Development Setup

### Tools and Technologies

- Java 17
- Spring Boot
- Maven
- Docker
- Bash

### Initial Setup

1. Clone the repository
2. Ensure Java 17 and Maven are installed
3. Build the project: `mvn clean install`
4. Run the application: `mvn spring-boot:run`

## Upcoming Features

- Enhanced container management
- More robust error handling
- Additional filtering capabilities

## Contribution Guidelines

1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request
