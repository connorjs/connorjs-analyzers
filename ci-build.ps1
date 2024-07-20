$env:CI = true

try {
	dotnet restore *.sln
	dotnet build -c release --no-restore *.sln
	dotnet pack -c release --no-build *.sln
} finally {
	$env:CI = $null
}
