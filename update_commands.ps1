using namespace System.IO

$dir = [DirectoryInfo]::new("../JanD")
if($dir.Exists -eq $false){
    $title    = 'Confirmation'
    $question = "Git cloning JanD repository in $([DirectoryInfo]::new("..").FullName), are you sure?"
    
    $choices = New-Object Collections.ObjectModel.Collection[Management.Automation.Host.ChoiceDescription]
    $choices.Add((New-Object Management.Automation.Host.ChoiceDescription -ArgumentList '&Yes'))
    $choices.Add((New-Object Management.Automation.Host.ChoiceDescription -ArgumentList '&No'))
    
    $decision = $Host.UI.PromptForChoice($title, $question, $choices, 1)
    if ($decision -eq 0) {
        $brb = [DirectoryInfo]::new("..").FullName
        Set-Location ..
        git clone https://github.com/Jan0660/JanD
        $dir = [DirectoryInfo]::new("../JanD")
        Write-Host "Finished git cloning."
        Set-Location $brb
    } else {
        Exit
    }
}

# copy readme
# $str = [File]::ReadAllText("../JanD/README.md")
# [File]::WriteAllText("./README.md", "---
# sidebar_position: 2
# title: README
# ---" + $str)
# generate command docs
$commandsFile = [FileInfo]::new("./docs/commands.md").FullName
$brb = [DirectoryInfo]::new(".").FullName
Set-Location ../JanD/JanD.DocGeneration
git reset --hard
git pull --force
dotnet build
dotnet run --no-build | Out-File -FilePath $commandsFile
Set-Location $brb
Write-Host "Finished generating commands docs."
