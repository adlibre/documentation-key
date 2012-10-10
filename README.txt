# Documentation Key

A minimalistic configuration documentation system for network systems.

Uses a git and asciidoc to produce minimal documentation which is version
controlled and can be distributed, or kept self contained on removable media. 

## Requirements

* Bash shell (Unix type system)
* git
* asciidoc
* unix2dos (sysutils package)

## Getting started

1. Clone this repo.
2. Edit config.sh
3. Run ./initialise.sh
4. Start editing documentation (asciidoc format).
5. Eun ./make.sh to generate HTML output.
6. Commit your changes to your local git repo (created by initialise.sh).

--------------------------------------------------------------------------------

THIS DOCUMENT AND THE DOCUMENTS CONTAINED WITHIN THIS
DIRECTORY TREE ARE CONFIDENTIAL! DO NOT DISCLOSE TO UNTRUSTED PARTIES.

---------------------------------------------------
Infrastructure Documentation
---------------------------------------------------

This documentation details just about everything you need to access the 
hosting environment. Documentation for servers, passwords etc.

The HTML documentation you are after is most likely in
./html-output

The source files are checked out to
./documentation

Sysadmin scripts are checked out to 
./scripts

and the cvs repository is in 
./cvsroot
(You shouldn't have to care about old versions)

To make the html output from the source files run
./make.sh
(You shouldn't have to do this)

To clean up junky ~ files run
./clean.sh
(You shouldn't have to do this)

To export another to copy to USB key run 
./export.sh
(Also, you shouldn't have to do this, as the source copy is on my latop)


