# dco -*-Shell-Script-*-
# cshrc
#
setenv PATH /bin:/usr/bin
setenv JAVA_HOME ~/tools/jdk1.6.0_32/
setenv J2RE_HOME $JAVA_HOME/jre
#setenv CLASSPATH .:~/projects/java/jakarta
#setenv OPENMAP_HOME /data/downloads/openmap-4.6.2/
#setenv TOMCAT_HOME /var/nowhere
#setenv ACE_ROOT ~/tools/ACE_wrappers
#setenv LD_LIBRARY_PATH /usr/local/lib:/usr/lib:.
setenv GOPATH ~/go
setenv PYTHONPATH ~/usr/lib/python2.7/site-packages/ 
#setenv PYTHON_ROOT /usr/lib/python2.4
#setenv PYTHON_INCLUDES /usr/include/python2.4
#setenv PYTHON_VERSION 2.4
#setenv BOOST_ROOT /usr/lib/boost
#setenv BOOST_ROOT /usr/local/include/boost-1_33
#setenv BOOST_BUILD_PATH /data/downloads/boost/tools/build/v2
#setenv BOOST_BUILD_PATH /home/dohlemac/bin/boost/tools/build/v2
setenv KDEDIRS /usr/bin/kdevelop
setenv CVS_RSH /usr/bin/ssh
setenv GSOAP_HOME /home/dohlemacher/tools/gsoap-linux-2.7
setenv GLG_EVAL_STRING CA0BBFB6-48BC3FE1-EVAL
setenv QTDIR "/home/$USER/tools/qtsdk-2010.05/"

# Do nothing if interactive shell.
if ($?prompt == 0) exit
if ($?USER == 0 || $?prompt == 0) exit

set VERBOSE=0 
if ($VERBOSE == "1") echo "\033[36mSourcing .cshrc\033[m"

if ($VERBOSE == "1") echo "\033[36mSourcing .makerc\033[m"
source ~/.makerc

###echo hostname
setenv HOST `/bin/uname -n`
setenv THISHOST $HOST
setenv HOSTNAME $HOST

if ($VERBOSE == "1") echo "\033[36mSourcing .hostspecific\033[m"
source ${HOME}/.hostspecific

###echo aliases
unalias *

if ($VERBOSE == "1") echo "\033[36mSourcing .aliases\033[m"
source ${HOME}/.aliases
if ($VERBOSE == "1") echo "\033[36mSourcing .paths\033[m"
source ${HOME}/.paths

if ( $?tcsh == "1" ) then
    	set autolist=ambiguous
    	set autoexpand
    	set autocorrect
    	set color
    	unset autologout
	    # set pushdtohome
    	set pushdsilent
endif

if ($VERBOSE == "1") echo "\033[36mSourcing .complete\033[m"
source ${HOME}/.complete

if ( $DCO_WINTYPE == solarisWindow) tcsh -l 

# override some arch specific stuff
if ( $TERM == "iris-ansi-net" ) then
        setenv TERM vt100
        resize
endif

###echo environment
if ($VERBOSE == "1") echo "\033[36mSourcing .environment\033[m"
source ${HOME}/.environment

#stty erase
set mail = ${HOME}/.mail/Inbox
setenv VISUAL vi
set history=100
#set ignoreeof
set noclobber
set time = 20
set filec
setenv ANGBAND_X11_FONT "-*-courier-bold-r-*-*-*-160-100-100-*-*-*-*"
setenv PAGER less

alias xterm 'xterm -bg black -fg white'

setenv LESS '-eaM'
#setenv LESSCHARSET latin1 # breaks man page display
unsetenv LESSCHARSET
set nobeep
setenv PKG_CONFIG_PATH '/usr/lib/pkgconfig:/usr/local/lib/pkgconfig'
# setenv LD_ASSUME_KERNEL '2.4.1' # Matlab/glibc 2.3 workaround.
setenv PROMPT_COMMAND 'echo -ne "\033]30;`echo $PWD | sed -e "s/^.*\(.\[20\|\)$/\1/" `\007\033]31;$PWD\007"'

# Modifiy keys
#  Caps Lock -> Left Control 
#xmodmap -e 'remove Lock = Caps_Lock'
#xmodmap -e 'keysym Caps_Lock = Control_L'
#xmodmap -e 'add Control = Control_L'

setenv SHELL '/bin/tcsh'

# Below are the color init strings for the basic file types. A color init
# string consists of one or more of the following numeric codes:
# Attribute codes:
# 00=none 01=bold 04=underscore 05=blink 07=reverse 08=concealed
# Text color codes:
# 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
# 90=dark grey 91=light red 92=light green 93=yellow 94=light blue 95=light purple 96=turquoise
# Background color codes:
# 40=black 41=red 42=green 43=yellow 44=blue 45=magenta 46=cyan 47=white
# 100=dark grey background 101=light red background 102=light green background 103=yellow background 
# 104=light blue background 105=light purple background 106=turquoise background
setenv LS_COLORS 'no=00:fi=00:di=01;34:ln=00;31:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.sh=01;32:*.csh=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.JPG=01;35:*.GIF=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:*.c=33:*.h=33:*.cpp=33:*.py=33:*.pl=33:*.C=33:*.txt=01;36:*.rpm=00;93:*.htm=35:*.html=35:*.o=01;93:*.a=01;95:*.la=01;95:*.so=01;95'

if ($VERBOSE == "1") echo "\033[36mSourcing .hostspecificfinal\033[m"
source ${HOME}/.hostspecificfinal


