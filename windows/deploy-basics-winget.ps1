$apps = @(
    # Browsers
    @{name = "BraveSoftware.BraveBrowser" },
    @{name = "Google.Chrome" },
    @{name = "Mozilla.Firefox" },

    # Various desktop tooling
    @{name = "SumatraPDF.SumatraPDF" },
    @{name = "TheDocumentFoundation.LibreOffice" },
    @{name = "TimKosse.FileZilla.Client" },
    @{name = "VSCodium.VSCodium" },
    @{name = "7zip.7zip" },
    @{name = "Joplin.Joplin" },
    @{name = "AltDrag.AltDrag" },

    # Dev tools
    @{name = "OpenJS.NodeJS" },

    # Communication
    @{name = "Discord.Discord" },

    # Media consumption and creation
    @{name = "VideoLAN.VLC" },
    @{name = "GIMP.GIMP" },
    @{name = "KDE.Krita" },
    @{name = "BlenderFoundation.Blender" },
    @{name = "Inkscape.Inkscape" },
    @{name = "darktable.darktable" },
    @{name = "LMMS.LMMS" },
    @{name = "Audacity.Audacity" },
    @{name = "HandBrake.HandBrake" },
    @{name = "Toinane.Colorpicker" },
    @{name = "OBSProject.OBSStudio" },

    # System utilities
    @{name = "Piriform.CCleaner" },

    # Gaming
    @{name = "Valve.Steam" },
    @{name = "EpicGames.EpicGamesLauncher" },
    @{name = "ElectronicArts.EADesktop" },
    @{name = "Ubisoft.Connect" }
);
Foreach ($app in $apps) {
    # Loop over and install apps not already installed
    $listApp = winget list --exact -q $app.name
    if (![String]::Join("", $listApp).Contains($app.name)) {
        Write-host "Installing:" $app.name
        if ($app.source -ne $null) {
            winget install --exact --silent $app.name --source $app.source --accept-package-agreements
        }
        else {
            winget install --exact --silent $app.name
        }
    }
    else {
        Write-host "Skipping Install of " $app.name
    }
}

## Remap Caps to Ctrl
reg import .\files\caps-to-control.reg
