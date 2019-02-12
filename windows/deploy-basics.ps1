Configuration deployBasics
{
    Import-DscResource -Module cChoco
    Node "localhost"
    {
        LocalConfigurationManager
        {
            DebugMode = "ForceModuleImport"
        }

        cChocoInstaller installChoco
        {
            InstallDir = "c:\choco"
        }

        cChocoPackageInstallerSet installBrowsers
        {
            Ensure = "Present"
            Name = @(
                "googlechrome"
                "firefox"
            )
            DependsOn = "[cChocoInstaller]installChoco"
        }

        cChocoPackageInstallerSet installProductivity
        {
            Ensure = "Present"
            Name = @(
                "foxitreader"
                "libreoffice-fresh"
                "putty"
                "winscp"
                "vscode"
                "cmder"
                "git"
                "7zip"
                "nodejs"
                "keepassxc"
                "synctrayzor"
                "deluge"
                "altdrag"

            )
            DependsOn = "[cChocoInstaller]installChoco"
        }

        cChocoPackageInstallerSet installMedia
        {
            Ensure = "Present"
            Name = @(
                "mpv"
                "vlc"
                "gimp"
                "krita"
                "blender"
                "inkscape"
                "darktable"
                "lmms"
                "audacity"
                "handbrake"
                "virtualbox"
                "obs-studio"
                "greenshot"
                "jcpicker"
            )
            DependsOn = "[cChocoInstaller]installChoco"
        }

        cChocoPackageInstallerSet installSystemUtils
        {
            Ensure = "Present"
            Name = @(
                "sysinternals"
                "ccleaner"
                "geforce-experience"

            )
            DependsOn = "[cChocoInstaller]installChoco"
        }

        cChocoPackageInstallerSet installGaming
        {
            Ensure = "Present"
            Name = @(
                "steam"
                "epicgameslauncher"
                "origin"
                "uplay"
            )
            DependsOn = "[cChocoInstaller]installChoco"
        }
    }
}

deployBasics

Start-DscConfiguration .\deployBasics -wait -Verbose -force