echo-apps:
	@echo "TOFUE"
dotnet-run:
	dotnet run
run:
	docker build -t chm .
	docker run -d -p 9191:9191 --name chm chm
migrate:
	dotnet ef dbcontext scaffold "Host=localhost;Database=chm;Username=dbadmin;Password=dbadmin" Npgsql.EntityFrameworkCore.PostgreSQL -f  -o  Models 