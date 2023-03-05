oh-my-posh init pwsh --config "YourDir\WindowsPowerShell\cloud-native-omp.json" | Invoke-Expression

#Functions

function whereis ($command){
	Get-Command -Name $command -ErrorAction SilentlyContinue | 
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}

Import-Module Terminal-Icons

Set-PSREADLineOption -PredictionSource History

Set-PSREADLineOption -PredictionviewStyle ListView