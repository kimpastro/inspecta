## Inspecta
Inspect HTTP Requests with Ease

The intent of this project is to have a tool in order to handle http requests locally.

It uses the power of turbo stream to handle the requests automatically without the need to refresh the page.

---

## Installation
> Make sure that `.env.local` and `.env.test` have the connection strings to your database (by changing the `DATABASE_URL`) and to your redis (by changing `REDIS_URL`).

Run command: `bin/setup` and you are good to go.

It will create databases `inspecta_development` and `inspecta_test`.

## Running
`bin/dev` or just `bin/rails server`

Access `localhost:3000`

## Testing
`bin/bundle exec rspec`

## See it in action
You can check it online [here](https://inspecta.fly.dev).

## Docker Compose
If you have docker-compose installed just run: `docker compose up` and you are good to go.

## License
MIT
