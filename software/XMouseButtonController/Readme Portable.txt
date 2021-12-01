XMouse Button Control: Portable Edition.
Copyright (c) 2013-2020 Phillip Gibbons
-----------------------------------------------------------------------------

This file describes how to use XMouse Button Control (XMBC) in PORTABLE mode.
Portable mode means that XMBC runs without installation and without making any permanent 
change to the system that is running XMBC. All settings and logging is stored in the same 
folder as the executable, which means (for example) you can run it from a flash/thumb drive.

Please ensure the folder that your run XMBC from is writable and is NOT under "Program Files"
(this will force non-portable mode after a warning message).

There are two versions:

   32bit (x86) should be used if your operating system is 32bit.
   64bit (x64) should be used if your operating system is 64bit (x64). 
   
   NOTE: 64bit Itanium is NOT supported.
   The 32bit version will work on Windows x64 editions but you will loose some functionality.

   Simply run the relevant executable suitable for your OS.

To install an additional language pack as they become available, download it from 
http://www.highrez.co.uk/downloads/xmbc_languages.htm and copy it to the same folder as the 
executable and it should then appear in the list of available languages in the settings dialog.


It is important to remember that on Windows Vista/2008/7 or later, if you are using UAC (User 
Account Control), XMBC will only be able to interact with elevated applications (those running 
as Administrator) if XMBC itself is running as Administrator. To launch XMBC with Administrator 
permissions, right click the executable file and select "Run as Administrator". A UAC prompt 
will ask you to continue or to enter the Administrator credentials. If you don't have access to
this, XMBC will work in normal user mode but will interact only with other windows that are 
launched without administrator access. This means that if the input focus is on an elevated window, 
XMBC will NOT remap any buttons, invert scroll or handle any layer modifier keystrokes, nor will it
detect profiles as the mouse moves, until you physically activate a non-elevated window.

On top of that, in windows 8 and later, some additional functionality will not work in portable mode. 
Things such as ALT+TAB, WIN+X etc. require the application be signed and have UI Access in 
the manifest (which it has) but also that the program EXE be located in \Program Files 
or \Windows\System32. Blame Microsoft for this one.


For information and support, check out the XMBC Forums: http://forums.highrez.co.uk or contact 
the author (Phillip Gibbons) by email at Phil@highrez.co.uk


THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


