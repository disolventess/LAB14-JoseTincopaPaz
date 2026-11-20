var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

var port = Environment.GetEnvironmentVariable("PORT") ?? "10000";

app.MapGet("/", () => "Hello, World! Aplicación .NET 8 funcionando en Render.");

app.Run($"http://0.0.0.0:{port}");