# wait-for-db.sh

#!/bin/bash

# Wait for PostgreSQL to be ready
dockerize -wait tcp://db:5432 -timeout 60s

# Execute the provided command (e.g., Django migrations)
exec "$@"
