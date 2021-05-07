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


Functions:


## Market study

## Selected approach

## Possible improvents

## Examples

## Exercises

## Documentation
https://en.wikipedia.org/wiki/Installation_(computer_programs)
https://docs.microsoft.com/en-us/windows/win32/msi/installation-package
https://docs.microsoft.com/en-us/windows/win32/dxtecharts/installation-and-maintenance-of-games
