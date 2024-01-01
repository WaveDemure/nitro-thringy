git clone https://github.com/WaveDemure/nitro-thringy
cd nitro-thringy
docker build -t nitro-gen-site .
clear

echo "open http://localhost:8080/ on your browser"
docker run -p 8080:80 nitro-gen-site

