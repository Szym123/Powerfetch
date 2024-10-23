# PowerFetch

Another copy of neofetch written in python. This program displays some information about the operating system and the computer in an aesthetically pleasing way.

# Config

* **InfoTitle** - print user name and computer name
* **InfoLine** - print a horizontal line 
* **InfoBios** - print bios version
* **InfoGpu** - print GPU name
* **InfoKernel** - print kernel version
* **InfoDisk** - print information on disk consumption 
* **InfoMashinName** - print information about the brand and manufacturer of the computer
* **InfoOs** - print name and version of operating system
* **InfoCpu** - print CPU name
* **InfoPowershell** - print your current powershell version
* **InfoTerminal** - print name of current terminal
* **InfoUpTime** - print uptime
* **InfoLenguage** - print system languages
* **InfoBattery** - print battery charge level
* **InfoRam** - print ram usage

# Color Configuration

The colors are set using the numbers listed in the table below, you can assign them separately to each of the categories below.

* **AsciiArt** - set the color of ascii art
* **Line** - set the color of the line
* **Title** - set the color of the title
* **Descriptions** - set the color of the information line descriptions
* **Information** - set the color of the informational text

<center>

| Colors      | Numberr     |
| :---------: | :---------: |
| Black       | 30          |
| Red         | 31          |
| Green       | 32          |
| Yellow      | 33          |
| Blue        | 34          |
| Magenta     | 35          |
| Cyan        | 36          |
| White       | 37          |
| Default     | 39          |

</center>

```powershell
$ColorConfig=[ordered]@{
    AsciiArt="34";
    Line="35";
    Title="32";
    Descriptions="32";
    Information="36";
}
```

Template showing a list with set colors.

# Ascii Art

```powershell
$MyAscii=@(
    "$($e)[$($ColorConfig["AsciiArt"])m                         $($e)[0m"
    "$($e)[$($ColorConfig["AsciiArt"])m      THIS IS PLACE      $($e)[0m"
    "$($e)[$($ColorConfig["AsciiArt"])m       FOR YOUR ART      $($e)[0m"
    "$($e)[$($ColorConfig["AsciiArt"])m                         $($e)[0m"
)
```

This is the template for your Ascii Art, if you apply it powerfech will handle the color for the art. If one you plan to set your image is possible you just need to type it in such a way in round brackets.

> [!WARNING]
> In order to display correctly, all the lines of an artt must be of identical length. 

To select which art to display, assign its name to the **$CustomAscii** variable. If using ANCI notation, specify the length of the displayed part of the line.