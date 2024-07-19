$env:CI = true

try {
	dotnet restore
	dotnet build -c release --no-restore
	dotnet pack -c release --no-build
} finally {
	$env:CI = $null
}
