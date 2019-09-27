dotnet test test/Cortex.BeaconNode.Tests
if (!$?) { throw 'Tests failed' }
$v = (dotnet ./tools/gitversion/GitVersion.dll | ConvertFrom-Json)
dotnet publish src/Cortex.BeaconNode.Host -c Release -p:InformationalVersion=$($v.SemVer)+$($v.ShortSha) -p:Version=$($v.SemVer)
