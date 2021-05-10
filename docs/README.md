# Game Installer Creation
My name is Arnau Bonada, and I'm a student of Degree in Video Game Design and Development in UPC-CITM Terrassa. This is a project research for the Project II subject. On this research you will find out what a game installer is and how to implement it in your own game. 

## Introduction to Installation
First of all, it is necessary to clarify what is meant when talking about installation. Starting with the installation of software, is the act of making the program ready for execution.
There are different processes of installing a piece of software. Because the process is different for each program and each computer, programs often come with an installer, a specialised program responsible for performing everything required for installation.
Installation generally involves code being copied or generated from the installation files to new files on the local computer. This is done for the following reasons:
- Makes easier access by the operating system.
- Creates all the necessary directories.
- Registers the environment variables.
- Provides a separate program for uninstallation, which involves more than just deleting the program folder, because there are registry files and other system code that may need to be modified or removed for a complete uninstall.

The installation of any software, and especially a game, should be as fast, simple and easy as possible. This means that you need to compress and store all the files and folders in one executable, which will allow you to install the game in a short amount of time. The creation of this executable is called **installation package**.

Each installation package includes a ***.msi*** file. This *.msi* file contains:
- An installation database
- A summary information stream
- Data streams for various parts of the installation

And can also contain:
- One or more transforms
- Internal source files
- External source files
- Cabinet files required by the installation

In order to create this installation package it is necessary to use a technique to be able to achieve it, which is called Application Packaging. Application packaging involves the preparation of standard, structured software installations targeted for automated deployment. To enable this level of application management, Microsoft now provides the Microsoft Windows Installer (MSI) service as a part of its desktop operating systems.

## What is Microsoft Windows Installer (MSI)?
Microsoft Windows Installer, also known as MSI or Windows Installer, is an installer package file format used by Windows. The installer service enables customers to provide a better corporate implementation and provides a standard format for component management. MSI files are used for installation, storage and removal of programs. This MSI files are database files, used by Windows Installer, and they contain information about an application which is divided into features and components, and every component may hold files, registry data, shortcuts, etc. MSI files are executed by an EXE file that is part of Windows, called MSIEXEC.EXE. This application reads the data in the MSI file and executes the installation.

### Windows Installer functions
The Windows Installer service was designed to support every phase of the application management life cycle, providing a service to support each step involved in managing a desktop application from deployment through retirement. To support these functions, the Windows Installer needs to receive instructions from an installation package.
<p align="center">
<img src="https://github.com/arnaubonada/Game-Installer-Creation/blob/main/docs/images/fig1.png?raw=true" width="500">
</p>
<p align="center">
Figure 1. Application life-cycle tasks supported by Windows Installer
</p>

Windows Installer has many built-in functions that will save you time and effort:
- Automatic add and remove, uninstall, reinstall, and repair support. If an application is already installed, Windows Installer will detect it and display a maintenance user interface instead of an application install interface.
- In maintenance mode, Windows Installer detects which parts of an application are installed and can allow a user to add or remove features or reinstall the application. The repair functionality also appears in maintenance mode, but is also automatically run every time a shortcut for the application is activated in Windows 2000. The repair functionality is particularly useful for administrators whose users like to recklessly clean up disk space.
- Advertising allows an application to appear to be installed, but files are not actually installed on the system until the application is activated through a shortcut, extension, or COM server. Advertising makes an application available on the desktop, but since it's not installed until it is activated, companies save on licensing fees and disk space. Once a user clicks on a shortcut or double-clicks on a file associated with that application, the application installs automatically.
- The same functionality can be written into the application itself. For example, an application may have a particular feature that is rarely used, so it is not installed by default. A developer could put Windows Installer API calls in the code that activates that feature to make it install on demand. Using installation on demand saves disk space and avoids requiring the user to exit the program and rerun the setup to install features that aren't installed by default. 

### MSI Files and Components
- **.msi file**: A file with .msi extension is a simple database file that can be read by Microsoft Windows Installer service contained in all recent versions of Microsoft Windows. The database contains the files, registry and instructions to the Windows Installer service in order to install the application.
- **Msiexec.exe**: The Msiexec.exe program is a component of Windows Installer. When it is called by Setup, Msiexec.exe uses Msi.dll to read the package (.msi) files, apply any transform (.mst) files, and incorporate command-line options supplied by Setup. The installer performs all installation-related tasks, including copying files to the hard disk, making registry modifications, creating shortcuts on the desktop, and displaying dialog boxes to prompt for user installation preferences when necessary. When Windows Installer is installed on a computer, it changes the registered file type of .msi files so that if you double-click an .msi file, Msiexec.exe runs with that file.
- **MSI Extensions**: Each installation package includes an .msi file containing the installation database, a summary information stream, and data streams for various parts of the installation. The .msi file can also contain one or more transforms, internal source files, and external source files or cabinet files required by the installation.
<p align="center">
<img src="https://github.com/arnaubonada/Game-Installer-Creation/blob/main/docs/images/fig2.png?raw=true" width="500">
</p>
<p align="center">
Figure 2. File name extensions used in the Windows Installer service
</p>

## Signing an Application Packaging
First of all, it is important to understand what digital signature means. A **digital signature** is a mathematical scheme for verifying the authenticity of digital messages or documents. Digital signatures are a standard element of the most cryptographic protocol suites, and are commonly used for software distribution, financial transactions, contract management software, and in other cases where it is important to detect forgery or tampering.

Signing an application package provides the user with verification that the application data has not been modified after being signed, while confirming the identity of the user or the company that signed it. Therefore, signing an Application Packaging files is an important thing since you help ensure that tampered files are not installed on end-user computers.

There are many methods and ways to approach this topic. Since we are making use of .msi files for the deployment of applications, the best option at the moment is **SignTool.exe**. SignTool is a command line tool that is used to sign an application package or a set of applications with a certificate.

We need Microsoft Windows SDK to be able to work with SignTool.exe. The tool is installed in the Bin folder of the Microsoft Windows Software Development Kit (SDK) installation path.

You need to follow this steps:
- Install the certificate you want to sign the file with in the development computer.
- Open a Visual Studio command prompt.
- Change to the directory that contains the .msi file.
- Sign the .msi file using the following command:
```cpp
signtool sign /sha1 CertificateHash SetupNameFile.msi
```
## Test in a Virtual Machine
In order to test the game on diferents Operation Systems and its previous versions, we will need a Virtual Machine. Virtual machines are one of the safest ways to test software. This method allows you to simulate a full operating system, isolated from the rest of your machine. The tool chosen to create virtual machines is **VirtualBox**.

Oracle VM VirtualBox is a free and open-source compatible with Windows, macOS, Linux, Solaris and OpenSolaris. Basically it supports the creation and management of guest virtual machines. It is aimed both for enterprises and home use.
To test the program in the virtual machine, you must follow this steps:
- Install and open VirtualBox. Be sure to install the property platform package according to your current OS
- Click "New" to create a new virtual machine. You can check out our guide here for detailed instructions, but the wizard should make it fairly simple. You will need to download the ISO file according to the OS you want to try.
- Install the operating system of your choice on the virtual machine.
- Before you install anything else, take a snapshot. This will allow you to revert to your original install, without any change of states, after you are done testing.

## NSIS: Packaging Tool
We need to create MSI files to build the installation package in the correct MSI database format, and we must collect information about each application. Items include executable files, installation instructions, configuration parameters, test instructions, and hardware and software dependencies.

Best practices recommend that installation packages be created by experienced packaging engineers, using tools specifically developed for that purpose.
NSIS (Nullsoft Scriptable Install System) is a professional open source system to create Windows installers. It is designed to be as small and flexible as possible and is therefore very suitable for internet distribution.

NSIS is script-based and allows you to create the logic to handle even the most complex installation tasks. Many plug-ins and scripts are already available: you can create web installers, communicate with Windows and other software components, install or update shared components and more.

This are the features of NSIS:
- Small overhead size
- Compatible with all major Windows versions
- Unique compression methods
- Script based
- Multiple languages in one installer
- Many features and checks for the target system
- Custom dialogs and interfaces
- Plug-in system
- Support for web installation and file patching
- Project integration, different releases and automatic builds
- Easy and human readable file formats
- Portable Compiler
- Free to use. See [License](https://nsis.sourceforge.io/License)

### Implement NSIS to your game
Now is the moment to put everything explained previously into practice. First of all, there will be some examples to understand how it works, and then there will be exercises (TODOs) and their respective solutions.

This exercises will help to learn how to create your installer, with NSIS. To start with the Installer, you must install the software. The link can be found [here](https://nsis.sourceforge.io/Download).

Once the .exe is downloaded, you have to click on it and the NSIS Installer will start running. Now, default options are recommended in order to install the program.

## Examples
### Example 1: Create your Installer
To create your own Installer, you need a .zip file. Once you have your ***.zip*** to create your ***.exe***, you have to open the NSIS menu and select "Installer based on .ZIP file". This will open a new window, where you have to select your .zip by clicking "Open...". It is recommended to leave the default options selected. Then click on "Generate".

<p align="center">
<img src="https://github.com/arnaubonada/Game-Installer-Creation/blob/main/docs/images/fig3.png?raw=true" width="500">
</p>
<p align="center">
Figure 3. NSIS Menu
</p>

<p align="center">
<img src="https://github.com/arnaubonada/Game-Installer-Creation/blob/main/docs/images/fig4.png?raw=true" width="500">
</p>
<p align="center">
Figure 4. Software to convert a .zip to a .exe
</p>

### Example 2: Load the Icon of your game
All games have their own installer. And in each installer there is an *.exe* with its own icon. This icon has to be in ***.ico*** format.

First of all, you need to add your icon .ico to your project. To do this, open Visual Studio and choose a folder where you want to save your icon. For example, 

## Exercises

## Documentation
https://en.wikipedia.org/wiki/Installation_(computer_programs)

https://docs.microsoft.com/en-us/windows/win32/msi/installation-package

https://docs.microsoft.com/en-us/windows/win32/dxtecharts/installation-and-maintenance-of-games

https://community.broadcom.com/symantecenterprise/communities/community-home/librarydocuments/viewdocument?DocumentKey=1b1b89b8-c3a0-4bbd-a498-44f76a777eb9&CommunityKey=41d8253b-a238-4563-8718-ed7623beafbc&tab=librarydocuments

https://www.dell.com/downloads/global/power/ps4q05-20050175-Kouletsis.pdf

https://docs.microsoft.com/en-us/previous-versions/visualstudio/visual-studio-2010/ee290833(v=vs.100)

https://en.wikipedia.org/wiki/Digital_signature

https://en.wikipedia.org/wiki/VirtualBox

https://www.virtualbox.org/

https://nsis.sourceforge.io/Main_Page
