## Inspecta
Inspect HTTP Requests with Ease

The intent of this project is to have a tool in order to handle http requests locally.

It uses the power of turbo stream to handle the requests automatically without the need to refresh the page.

---

## Running with docker
```bash
# Change port 80 to whatever you want.
docker run --rm -p 80:3000 kimpastro/inspecta:1.0
```
Access: `http://localhost`

## Running without docker

```bash
# setup the app
bin/setup

# then start the server with
bin/dev
```
Access: `http://localhost:3000`
