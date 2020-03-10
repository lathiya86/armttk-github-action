# Github action running ARM-TTK in a Docker container

![ARM Tests](https://github.com/whaakman/armttk-github-action-demo/workflows/ARM%20Tests/badge.svg)

This demo leverages the Azure Resource Manager Template Toolkit (ARM-TTK) (https://github.com/Azure/arm-ttk) and runs the toolkit against the files in the repository. 

The container is build from mcr.microsoft.com/powershell:latest and the Entrypoint file can contain as much PowerShell goodness as you like. 
