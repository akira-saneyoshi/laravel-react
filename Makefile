# Docker
init:
	docker-compose up -d --build
	docker-compose exec api-react composer install
	docker-compose exec api-react php artisan key:generate
	docker-compose exec api-react php artisan migrate --seed
	docker-compose exec front-react yarn
	docker-compose exec front-react yarn dev

up:
	docker-compose up -d

down:
	docker-compose down

build:
	docker-compose build

# next.js
dev:
	docker-compose exec front-react yarn dev

axios:
	docker-compose exec front-react yarn add axios

# laravel
sanctum:
	docker-compose exec api-react composer require laravel/sanctum
	docker-compose exec api-react php artisan vendor:publish --provider="Laravel\Sanctum\SanctumServiceProvider"

route:
	docker-compose exec api-react php artisan route:list
