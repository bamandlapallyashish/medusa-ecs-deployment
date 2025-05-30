[
  {
    "name": "${app_name}",
    "image": "${ecr_image}",
    "essential": true,
    "portMappings": [
      {
        "containerPort": 9000,
        "hostPort": 9000
      }
    ],
    "environment": [
      {
        "name": "DATABASE_URL",
        "value": "postgres://${db_username}:${db_password}@${db_host}/${db_name}"
      },
      {
        "name": "REDIS_URL",
        "value": "${redis_url}"
      },
      {
        "name": "NODE_ENV",
        "value": "production"
      },
      {
        "name": "PORT",
        "value": "9000"
      }
    ],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/${app_name}",
        "awslogs-region": "${aws_region}",
        "awslogs-stream-prefix": "ecs"
      }
    }
  }
]
