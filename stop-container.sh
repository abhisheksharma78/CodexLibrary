#!/bin/bash

# Display help information
display_help() {
    echo "Docker Container Stopper - Utility to stop Docker containers"
    echo 
    echo "Usage: $0 [OPTION] [ARGUMENT]"
    echo 
    echo "Options:"
    echo "  all                   Stop all running containers"
    echo "  filter FILTER         Stop containers matching a specific filter"
    echo "  name PATTERN          Stop containers with names matching the pattern"
    echo "  --help, -h            Display this help message"
    echo 
    echo "Filter Examples:"
    echo "  status=running        Stop all running containers"
    echo "  before=container_name Stop containers created before a specific container"
    echo "  since=24h             Stop containers created in the last 24 hours"
    echo 
    echo "Name Pattern Examples:"
    echo "  'web'                 Stop containers with 'web' in their name"
    echo "  'prod-*'              Stop containers starting with 'prod-'"
    echo 
    echo "Examples:"
    echo "  $0 all                # Stop all containers"
    echo "  $0 filter status=running   # Stop all running containers"
    echo "  $0 name 'web'         # Stop containers with 'web' in name"
    echo 
    echo "Note: Requires Docker to be installed and running."
}

# Stop all running containers
stop_all_containers() {
    docker ps -q | xargs -r docker stop
}

# Stop containers with optional filtering
stop_filtered_containers() {
    local filter="${1:-}"
    
    if [ -n "$filter" ]; then
        docker ps -q --filter "$filter" | xargs -r docker stop
    else
        stop_all_containers
    fi
}

# Stop containers by name pattern
stop_containers_by_name() {
    local name_pattern="${1}"
    
    docker ps -q --filter "name=$name_pattern" | xargs -r docker stop
}

# Main execution
main() {
    # Check for help flag
    if [[ "$1" == "--help" || "$1" == "-h" ]]; then
        display_help
        exit 0
    fi

    case "$1" in
        "all")
            echo "Stopping all running containers..."
            stop_all_containers
            ;;
        "filter")
            echo "Stopping filtered containers..."
            stop_filtered_containers "$2"
            ;;
        "name")
            echo "Stopping containers by name..."
            stop_containers_by_name "$2"
            ;;
        *)
            echo "Error: Invalid option"
            display_help
            exit 1
            ;;
    esac
}

# Run the main function with provided arguments
main "$@"