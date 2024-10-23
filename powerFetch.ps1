$e=[char]0x1B# Character code compatible with Powershell 5

####################################################################################

# ===== MAIN CONFIG =====
# Information are printed line by line,
# In every line first information is name of function
# " FUNCTION NAME , PARAMETERS... "
$DefaltConfig=@(
    "InfoTitle,@";# (2)Character separating the hostname from the user name

    "InfoLine,-";# (2)The character the line is made of

    "InfoBios,Bios";# (2)Title of printed information
    "InfoGpu,GPU";# (2)--||--
    "InfoKernel,Kernel";# (2)--||--
    "InfoPowershell,Shell";# (2)--||--
    "InfoTerminal,Terminal";# (2)--||--
    "InfoUpTime,UpTime";# (2)--||--
    "InfoLenguage,Lenguage";# (2)--||--

    "InfoMashinName,Computer,OFF";# (2)Title of printed information
                                  # (3)Add name of computer manufacturer

    "InfoCpu,CPU,OFF";# (2)Title of printed information
                      # (3)Add clock frequency

    "InfoOs,OS,OFF,ON";# (2)Title of printed information
                       # (3)Add name of os manufacturer
                       # (4)Add architecture versions

    "InfoDisk,Disk,ON,ON,=,-,ON";# (2)Title of printed information
                                 # (3)Information in absolute terms
                                 # (4)Bar, (5)Symbol for filled section, (6)Empty part symbol
                                 # (5)Information in percentages
    "InfoBattery,Battery,OFF,ON,=,-,ON";# --||--
    "InfoRam,Memory,ON,ON,=,-,ON";# --||--
)

####################################################################################

# ===== COLOR CONFIG =====
$DefaltColor=[ordered]@{
    AsciiArt="34";# Ascii art color
    Line="35";# Line color
    Title="32";# Title color
    Descriptions="32";# Colour of descriptive text
    Information="36";# Colour of informatrion text
}

####################################################################################

# ===== COLECTION OF ART =====
$Wim11Ascii=@(
    "$($e)[$($DefaltColor["AsciiArt"])mUUUUUUUUUUUUUUU   UUUUUUUUUUUUUUU$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])mUUYUYUYUYUYUYUU   UYUYUUYUYUYUYUU$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])mUUUUUUUUUUUUUUY   UUUUUUUUUUUUUUY$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])mUYUUYUUYUUYUUUU   UYUUYUYUUYUUYUU$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])mUUUUUUUUUUUUYUU   UUUUUUUUUUUUUUU$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])mUYUYUYUYUYUUUUY   UYUYUYUYUYUYUUY$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])mUUUUUUUUUUUYUUU   UUUUUUUUUUUUUUU$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m                                 $($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])mUUYUUYUUYUUUUYU   UYUUYUUYUUYUUYU$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])mUUUUUUUUUUYUUUU   UUUUUUUUUUUUYUU$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])mUYUYUYUYUUUUYUU   YUYUYUYUYUYUUUU$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])mUUUUUUUUUYUUUUY   UUUUUUUUUUUUUYU$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])mUUYUUYUUUUUYUUU   UUYUUYUUYUUYUUU$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])mUUUUUUUYUYUUUYU   UUUUUUUUUUUUUUY$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])mUYUYUYUUUUUYUUU   YUYUYUYUYUYUYUU$($e)[0m"
)

$Wim10Ascii=@(
    "$($e)[$($DefaltColor["AsciiArt"])m                         ';ll<{(l$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m          '''^ !|(((((((((((((((l$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m _)((((((((((( l((((((((((((((((l$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m ?(((((((((((( l(((((|(((|((((((l$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m ?(((|((|((((( !(((|(((((((((|((l$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m ?(((((((((|(( l((((((((((((((((l$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m ?(((((((((((( l(((((((|((|((((|l$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m                                 $($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m ?(((|((|((((( >((|(((((((((((((l$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m ?(((((((((|(( i(((((|((((((|(((l$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m ?(((((((((((( >((((((((|(((((((l$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m ?((|((|(((((| >(((|((((((((((|(l$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m ?((((((((|((( l((((((((((|(((((l$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m      .''',_|| !(((((|((|(((((((l$($e)[0m"
    "$($e)[$($DefaltColor["AsciiArt"])m                       ^Ill_1|((l$($e)[0m"
)

####################################################################################

# ===== LOAD ALL CONFIG =====
$Config=$DefaltConfig
# Load main config
$ColorConfig=$DefaltColor
# Load colors
$AutoAscii="ON"
# ON/OFF loading ascii depending on the os
$CustomAscii=$Wim10Ascii
$PrintedSize=33
# Load art and size of printeble part of them

####################################################################################

# ===== RETURN CIM INSTANCE =====
#    ===== DO NOT TOUCH =====
$BiosInfo=Get-CimInstance Win32_BIOS
$OsInfo=Get-CimInstance Win32_OperatingSystem
$ComputerInfo=Get-CimInstance Win32_ComputerSystem
$ProcesorInfo=Get-CimInstance Win32_Processor
$DiskInfo=Get-CimInstance Win32_LogicalDisk
$VideoInfo=Get-CimInstance Win32_VideoController

####################################################################################

# ===== RETURN LOGO OF YOUR OS =====
function getAutoArt
{
    param([Parameter()][string]$AsciiArt)

    if ($AsciiArt -eq "ON")
    {
        $Information=$OsInfo.Caption
    }
    else
    {
        return $CustomAscii
    }
    
    switch -regex ($Information)
    {
        (".?Windows 10.?"){return $Wim10Ascii}
        (".?Windows 11.?"){return $Wim11Ascii}
        Default{return $Wim11Ascii}
    }
}

####################################################################################

# ===== RETURN ASCII LINE =====
function getLine
{
    param([Parameter()][string]$TextBefore,[Parameter()][string]$Symbol)

    $Line=""

    if($TextBefore.Length -eq 0)
    {
        Write-Host "Line canot be in first line"
        Exit
    }

    for($i=0; $i -lt $TextBefore.Length;$i++) 
    {
        $Line+=$Symbol
    }
    return $Line
}

####################################################################################

# ===== RETURN PERCENT =====
function getPercent
{
    param([Parameter()][float]$NumberA,[Parameter()][float]$NumberB)
    $Result=[math]::Round(($NumberA/$NumberB)*100)
    return "($($Result)%)"
}

####################################################################################

# ===== RETURN FILL BAR =====
function getBar
{
    param([Parameter()][int]$NumberA,[Parameter()][int]$NumberB,[Parameter()][string]$OnSymbol,[Parameter()][string]$OffSymbol)

    $Bar="["
    $Result=[math]::Round(($NumberA/$NumberB)*10)

    for($i=0;$i -lt 10;$i++)
    {
        if($i -lt $Result)
        {
            $Bar+=$OnSymbol
        }
        else
        {
            $Bar+=$OffSymbol
        }
    }

    $Bar+="]"
    return $Bar
}

####################################################################################

# ===== RETURN BIOS VERSION =====
function getBios
{
    return $BiosInfo.version
}

####################################################################################

# ===== RETURN OS NAME =====
function getOs 
{
    param([Parameter()][string]$CompanyName,[Parameter()][string]$Architecture)  

    $Table="$($OsInfo.Caption)".Split(" ")

    if($CompanyName -ne "ON")
    {
        $Table=$Table[1..($Table.Length-1)]
    }

    if($Architecture -eq "ON")
    {
        $Table+="[$($OsInfo.OSArchitecture)]"
    }

    return "$($Table)"
}

####################################################################################

# ===== RETURN KERNEL VERSION =====
function getKernel
{
    return $OsInfo.Version
}

####################################################################################

# ===== RETURN COMPUTER NAME =====
function getMashinName
{
    param([Parameter()][string]$CompanyName)

    if($CompanyName -eq "ON")
    {
        return "$($ComputerInfo.Manufacturer) $($ComputerInfo.SystemFamily)"
    }
    else
    {
        return "$($ComputerInfo.SystemFamily)"
    }
}

####################################################################################

# ===== RETURN CPU NAME =====
function getCpu
{
    param([Parameter()][string]$Frequency)

    $Table="$($ProcesorInfo.Name)".Split(" ")

    if ($Frequency -ne "ON")
    {
        $Table=$Table[0..($Table.Length-3)]
    }

    return "$($Table)"
}

####################################################################################

# ===== RETURN TERMINAL NAME =====
function getTerminal
{
    $Information=Get-Process -PID $PID
    return $Information.Parent.ProcessName
}

####################################################################################

# ===== RETURN DISK INFORMATION =====
function getDisk
{    
    $Table=@()
    foreach($Disk in $DiskInfo)
    {
        $Table+=$Disk.DeviceID
        $Table+=[math]::Round(($Disk.Size-$Disk.FreeSpace)/1gb)
        $Table+=[math]::Round($Disk.Size/1gb)
    }

    return $Table
}

####################################################################################

# ===== RETURN CURENT UP TIME =====
function getUpTime
{
    $Result=$OsInfo.LocalDateTime-$OsInfo.LastBootUpTime

    $String=""
    if($Result.Days -ne 0)
    {
        $String+="$($Result.Days) days "
    }

    if($Result.Hours -ne 0)
    {
        $String+="$($Result.Hours) hours "
    }

    if($Result.Minutes -ne 0)
    {
        $String+="$($Result.Days) minutes"
    }

    return $String
}

####################################################################################

# ===== RETURN POWERSHELL VERSION =====
function getPowershell
{
    return "PowerShell $($PSVersionTable.PSVersion)"
}

####################################################################################

# ===== RETURN TITLE TEXT =====
function getTitle
{
    param([Parameter()][string]$Character)

    $Table="$($ComputerInfo.UserName)".Split("\")
    return "$($Table[1])$($Character)$($Table[0])"
}

####################################################################################

# ===== RETURN OS LANGUAGE =====
function getLenguage
{
    if($OsInfo.MUILanguages.Length -eq 1)
    {
        return $OsInfo.MUILanguages
    }

    return $OsInfo.MUILanguages -join ", "
}

####################################################################################

# ===== RETURN BATERY INFORMATION =====
function getBattery
{
    Add-Type -AssemblyName System.Windows.Forms
    $Information=[System.Windows.Forms.SystemInformation]::PowerStatus

    if($Information.BatteryChargeStatus -eq "NoSystemBattery")
    {
        return "There is no battery"
    }

    if($Information.PowerLineStatus -eq "Online")
    {
        return "Charging ", [math]::Round($Information.BatteryLifePercent*100)
    }

    return [math]::Round($Information.BatteryLifePercent*100)
}

####################################################################################

# ===== RETURN RAM CONSUMPTION =====
function getRam
{
    $Used=[math]::Round(($OsInfo.TotalVisibleMemorySize-$OsInfo.FreePhysicalMemory)/1mb,2)
    $All=[math]::Round($OsInfo.TotalVisibleMemorySize/1mb,2)
    return $Used,$All
}

####################################################################################

# ===== RETURN RAM CONSUMPTION =====
function getGpu
{
    return $VideoInfo.VideoProcessor
}

####################################################################################

# ===== COMBINE PERCENT, BAR AND TEXT =====
function getGoodLook
{
    param([Parameter()][float]$NumberA,[Parameter()][float]$NumberB,[Parameter()][array]$Config,[Parameter()][string]$Unit="")

    $String=""
    if($Config[1] -eq "ON")
    {
        $String+=getBar -NumberA $NumberA -NumberB $NumberB -OnSymbol $Config[2] -OffSymbol $Config[3]
        $String+=" "
    }

    if($Config[0] -eq "ON")
    {
        $String+="$($NumberA)$($Unit) /$($NumberB)$($Unit) "
    }

    if($Config[4] -eq "ON")
    {
        $String+=getPercent -NumberA $NumberA -NumberB $NumberB
    }

    return $String
}

####################################################################################

# ===== Use auto ascii =====
$CustomAscii=getAutoArt -AsciiArt $AutoAscii

####################################################################################

$SpaceForInfo=$Host.UI.RawUI.MaxWindowSize.Width

if ($SpaceForInfo -le $PrintedSize)
{
    Write-Host "Window is too small"
    exit
}

$SpaceForInfo-=$PrintedSize+4

####################################################################################

# ===== GENERATE TABLE OF INFORMATION =====
$List=@()
foreach($Item in $Config)
{
    $Table=$Item.Split(",")

    switch ($Table[0])
    {
        "InfoTitle"{
            $List+="$(getTitle -Character $Table[1])"
            break
        }
        "InfoLine"{
            #$List+="$($e)[$($ColorConfig["Line"])m$(getLine -TextBefore $List[$List.Length-1] -Symbol $Table[1])$($e)[0m"
            $List+="$(getLine -TextBefore $List[$List.Length-1] -Symbol $Table[1])"
            break
        }
        "InfoMashinName"{
            $List+="$($Table[1])~ $(getMashinName -CompanyName $Table[2])"
            break
        }
        "InfoOs"{
            $List+="$($Table[1])~ $(getOs -CompanyName $Table[2] -Architecture $Table[3])"
            break
        }
        "InfoCpu"{
            $List+="$($Table[1])~ $(getCpu -Frequency $Table[2])"
            break
        }
        "InfoBios"{
            $List+="$($Table[1])~ $(getBios)"
            break
        }
        "InfoKernel"{
            $List+="$($Table[1])~ $(getKernel)"
            break
        }
        "InfoPowershell"{
            $List+="$($Table[1])~ $(getPowershell)"
            break
        }
        "InfoTerminal"{
            $List+="$($Table[1])~ $(getTerminal)"
            break
        }
        "InfoUpTime"{
            $List+="$($Table[1])~ $(getUpTime)"
            break
        }
        "InfoLenguage"{
            $List+="$($Table[1])~ $(getLenguage)"
            break
        }
        "InfoGpu"{
            $List+="$($Table[1])~ $(getGpu)"
            break
        }
        "InfoDisk"{
            $Results=getDisk

            for ($i = 0; $i -lt $Results.Count; $i+=3)
            {
                if($i -eq 0)
                {
                    $String=getGoodLook -NumberA $Results[$i+1] -NumberB $Results[$i+2] -Config $Table[2..6] -Unit " GiB"
                    $List+="$($Table[1])~ ($($Results[$i]))~ $String"
                }
                else
                {
                    $String=getGoodLook -NumberA $Results[$i+1] -NumberB $Results[$i+2] -Config $Table[2..6] -Unit " GiB"
                    $List+="$(" "*($Table[1].Length+1))~($($Results[$i]))~ $String"
                }
            }
            break
        }
        "InfoBattery"{
            $Results=getBattery

            if($Results.Length -eq 1)
            {
                if($Results -is [string])
                {
                    $List+="$($Table[1])~ $($Results)"
                }
                else
                {
                    $String=getGoodLook -NumberA $Results -NumberB 100 -Config $Table[2..6]
                    $List+="$($Table[1])~ $($String)"
                }
                
            }

            if($Results.Length -eq 2)
            {
                $String=getGoodLook -NumberA $Results[1] -NumberB 100 -Config $Table[2..6]
                $List+="$($Table[1])~ $($Results[0])$($String)"
            }
            break
        }
        "InfoRam"{
            $Results=getRam
            $String=getGoodLook -NumberA $Results[0] -NumberB $Results[1] -Config $Table[2..6] -Unit " GiB"
            $List+="$($Table[1])~ $($String)"
            break
        }
    }
}

####################################################################################

for($i=0;$i -lt $List.Count;$i++)
{
    if($SpaceForInfo -lt $List[$i].Length)
    {
        $List[$i]=$List[$i].SubString(0,$SpaceForInfo)
    }

    $Collection=$List[$i].Split("~")

    if($Collection.Length -eq 1)
    {
        if($Config[$i] -match ".*InfoTitle.*")
        {
            $List[$i]="$e[$($ColorConfig["Title"])m$($Collection[0])$e[0m"
        }
        else
        {
            $List[$i]="$e[$($ColorConfig["Line"])m$($Collection[0])$e[0m"
        }
    }
    elseif($Collection.Length -eq 2)
    {
        $List[$i]="$e[$($ColorConfig["Descriptions"])m$($Collection[0]):$e[0m$e[$($ColorConfig["Information"])m$($Collection[1])$e[0m"
    }
    elseif($Collection.Length -eq 3)
    {
        $List[$i]="$e[$($ColorConfig["Descriptions"])m$($Collection[0])$($Collection[1]):$e[0m $e[$($ColorConfig["Information"])m$($Collection[2])$e[0m"
    }
}

####################################################################################

# ===== ALIGNS THE SIZE OF THE ART AND INFORMATION TABLE =====
if ($List.Length -gt $CustomAscii.Length)
{
    $String=" "*($PrintedSize)
    for ($i = $CustomAscii.Length; $i -lt $List.Count; $i++)
    {
        $CustomAscii+=$String
    }
}

####################################################################################

# ===== PRINT EVERYTHING =====
Write-Host ""
for($i=0;$i -lt $CustomAscii.Length; $i++) {
    try
    {
        $Line=" "+$CustomAscii[$i]+"   "+$List[$i]
    }
    catch
    {
        $Line=$CustomAscii[$i]
    }

    Write-Host $Line
}
Write-Host ""

####################################################################################