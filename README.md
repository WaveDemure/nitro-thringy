<h1 align="center">Discord Nitro promo generator site</h1>

## How to deploy

First install docker 

### Step 1. cloning this repo
```bash
git clone https://github.com/WaveDemure/nitro-thringy
cd nitro-thringy
```
### Step 2. docker image :)
```bash
docker build -t nitro-gen-site .
```

### step 3. run docker image
```bash
docker run -p 8080:80 nitro-gen-site
```
and its running at
```
http://localhost:8080/
```
