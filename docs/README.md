# Game Installer Creation
On this research you will find out what a game installer is and how to implement it in your own game. 

## Introduction
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

### What is Microsoft Windows Installer (MSI)?
Microsoft Windows Installer, also known as MSI or Windows Installer, is an installer package file format used by Windows. MSI files are used for installation, storage and removal of programs. This MSI files are database files, used by Windows Installer, and they contain information about an application which is divided into features and components, and every component may hold files, registry data, shortcuts, etc. MSI files are executed by an EXE file that is part of Windows, called MSIEXEC.EXE. This application reads the data in the MSI file and executes the installation.

### Windows Installer functions
- Automatic add and remove, uninstall, reinstall, and repair support. If an application is already installed, Windows Installer will detect it and display a maintenance user interface instead of an application install interface.
- In maintenance mode, Windows Installer detects which parts of an application are installed and can allow a user to add or remove features or reinstall the application. The repair functionality also appears in maintenance mode, but is also automatically run every time a shortcut for the application is activated in Windows 2000. The repair functionality is particularly useful for administrators whose users like to recklessly clean up disk space. The next time the "broken" application runs, Windows Installer checks a key list of files and registry keys, and repairs the application if needed. The install author also gets built-in network install functionality.
- Administrators will also benefit from the Installer's advertising feature. Advertising allows an application to appear to be installed, but files are not actually installed on the system until the application is activated through a shortcut, extension, or COM server. Advertising makes an application available on the desktop, but since it's not installed until it is activated, companies save on licensing fees and disk space. Once a user clicks on a shortcut or double-clicks on a file associated with that application, the application installs automatically.
- The same functionality can be written into the application itself. For example, an application may have a particular feature that is rarely used, so it is not installed by default. A developer could put Windows Installer API calls in the code that activates that feature to make it install on demand. Using installation on demand saves disk space and avoids requiring the user to exit the program and rerun the setup to install features that aren't installed by default. Using Windows 2000, an administrator can control this process by remotely assigning an application to desktops which simply advertises the product on the destination computer and provides the user with application entry points, such as shortcuts and file extensions. The administrator can also publish the application. Publishing does not provide entry points to the user, but only to other applications through COM.

## Market study

## Selected approach

## Possible improvents

## Examples

## Exercises

## Documentation
https://en.wikipedia.org/wiki/Installation_(computer_programs)
https://docs.microsoft.com/en-us/windows/win32/msi/installation-package
https://docs.microsoft.com/en-us/windows/win32/dxtecharts/installation-and-maintenance-of-games
