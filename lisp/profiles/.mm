export PATH=/sbin:~/bin:$PATH
# export TEXINPUTS=~/.mytex:$TEXINPUTS

alias ll='ls -l'

import_file ()
{
    if [ -n  $1 ] && [ -f $1 ]; then
       source $1
    fi
}

import_file  ~/.lykcommon
convert_eshell_alias

# s3c6410_toolchain_422=/opt/toolchain/4.2.2-eabi/usr/bin
s3c6410_toolchain_431=/usr/local/arm/4.3.1-eabi-armv6/usr/bin
eclair_toolchain_bin=/data/code/H7000/trunk/bsp/android/eclair/prebuilt/linux-x86/toolchain/arm-eabi-4.4.0/bin


ns4_toolchain=/opt/toolchain/m68000/bin
msp430_toolchain=/opt/mspgcc/bin
# h7000I_toolchain=/usr/local/arm/7000I/bin
h7000I_toolchain=/data/h7k.gcc/bin
ak2_toolchain=/usr/local/arm/4.2.0/bin
# toolchains="${s3c6410_toolchain_431} ${ns4_toolchain} ${msp430_toolchain} ${h7000I_toolchain} ${s3c6410_toolchain_422} ${ak2_toolchain}"
toolchains=""

# android_sdk_tool=$HOME/android/src/out/host/linux-x86/bin
################################################################
#### android 1.5
# android_sdk_tool=$HOME/sdk_android/tools

################################################################
#### android 2.3
android_ndk_dir=${HOME}/ndk_droid/android-ndk-r7
export HOST_AWK=/usr/bin/gawk

## android_ndk_dir=${HOME}/ndk_droid/android-ndk-r6
android_sdk_dir=${HOME}/sdk_droid
android_sdk_tool=${android_sdk_dir}/tools
android_sdk_platform_tool=${android_sdk_dir}/platform-tools

# android_sdk_tool=${HOME}/H7000/trunk/bsp/android/cupcake/out/host/linux-x86/bin

# android_sdk_tool=/home/richard/android/src/out/host/linux-x86/sdk/android-sdk_eng.richard_linux-x86/tools
eclipse_exe_dir=/other/soft/eclipse

emacs_mine=/data/inst/emacs23.2/bin
test_bin=${HOME}/.testbin

append_new_path ${emacs_mine} 
append_new_path ${android_ndk_dir}
append_new_path /home/richard/software/eclipse
append_new_path ${android_sdk_tool} 
append_new_path ${android_sdk_platform_tool} 
append_new_path /data/inst/rtptools-1.18/bin/

export PS1="[\t][\u@\W]\$ "

unique_path

################################################################
# for github, ubuntu's ssh bug
export SSH_AUTH_SOCK=0

# for XBuild system
export PERL5LIB=/etc/perl/CPAN
export PERL5LIB=/home/richard/bin/:$PERL5LIB

export KKBUILD=$HOME/.kkbuild

export ACE_ROOT=/home/richard/soft/ace/ACE_wrappers
export ACE_ROOT_X86=/home/richard/soft/ace/ACE_wrappers-5.6-x86
export ACE_ROOT_ARM=/home/richard/soft/ace/ACE_wrappers-5.6-arm

export TEXINPUTS=${HOME}/texmf/images/Document.Pictures:${HOME}/texmf/images/trunk.docs.material:${TEXINPUTS}

# export LD_LIBRARY_PATH=/home/richard/msrc/opencore/build_config/opencore_dynamic/build/installed_lib/linux:$LD_LIBRARY_PATH
# export LANG=en_US.UTF-8
# export LANGUAGE=en_US.UTF-8
export EDITOR=vim

export HOMESYS_ROOT=/data/git_h7000
export DOOB_ROOT=/home/richard/doob/trunk

