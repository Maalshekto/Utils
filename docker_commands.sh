# Get Docker networks Subnet
docker network ls -q | xargs docker network inspect -f '{{ .Name }} {{range .IPAM.Config}}{{ .Subnet }} {{end}}'

# Get Docker containers IP
docker ps -q | xargs docker inspect -f '{{ .Name }} {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'
