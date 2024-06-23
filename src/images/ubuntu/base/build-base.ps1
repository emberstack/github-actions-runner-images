# Find the latest versions
$runnerVersion = (Invoke-WebRequest -Uri "https://github.com/actions/runner/releases/latest" -UseBasicParsing).BaseResponse.RequestMessage.RequestUri.Segments[-1].Replace("v","")
Write-Output "runner version: $runnerVersion" 

$runnerContainerHooksVersion= (Invoke-WebRequest -Uri "https://github.com/actions/runner-container-hooks/releases/latest" -UseBasicParsing).BaseResponse.RequestMessage.RequestUri.Segments[-1].Replace("v","")
Write-Output "runner-container-hooks version: $runnerContainerHooksVersion" 

$buildxVersion= (Invoke-WebRequest -Uri "https://github.com/docker/buildx/releases/latest" -UseBasicParsing).BaseResponse.RequestMessage.RequestUri.Segments[-1].Replace("v","")
Write-Output "buildx version: $buildxVersion" 

docker build --build-arg RUNNER_VERSION=$runnerVersion --build-arg RUNNER_CONTAINER_HOOKS_VERSION=$runnerContainerHooksVersion --build-arg BUILDX_VERSION=$buildxVersion -t github-actions-runner:ubuntu-base .