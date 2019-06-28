@echo off

dotnet publish example\ComponentsDemoWasm\ComponentsDemoWasm.csproj
dotnet-serve -d example\ComponentsDemoWasm\bin\Release\netstandard2.0\publish\ComponentsDemoWasm\dist -m wasm=application/wasm -p 5533
start http://localhost:5533
