(require 'android-mode)

(add-to-list 'auto-mode-alist '("\\.\\(aidl\\)\\'" . java-mode))

(setq 
 cscope-database-regexps 
'(
   ( "^/home/richard/ddbs"
     ( "/home/richard/ddbs/frameworks" )
     ( "/home/richard/ddbs/bionic" )
     ( "/home/richard/ddbs/build" )
     ( "/home/richard/ddbs/system" )
     ( "/home/richard/ddbs/external" )
     )
   ( "^/home/richard/msrc/droid-live"
     ( "/home/richard/msrc/droid-live")
     ( "/home/richard/ddbs/external" )
     )

   ( "^/media/psf/share/droid-live"
     ( "/media/psf/share/droid-live" )
     ;; ( "/media/psf/share/droid-live/my_samples/ActionBarSherlock" )
     ( "/home/richard/msrc/android-source/frameworks" )
     ( "/home/richard/android-sdk/adt-bundle-linux-x86-20130522/sdk/sources/android-17" )
     )

   ( "^/home/richard/android-sdk/adt-bundle-linux-x86-20130522/sdk/samples/android-17"
     ( "/home/richard/android-sdk/adt-bundle-linux-x86-20130522/sdk/samples/android-17" )
     ( "/home/richard/android-sdk/adt-bundle-linux-x86-20130522/sdk/sources/android-17" )
     )

   ( "^/media/psf/share/droid-live/my_samples/ApiDemos"
     ( "/media/psf/share/droid-live/my_samples/ApiDemos" )
     ( "/home/richard/msrc/android-source/frameworks" )
     )

   ( "^/home/richard/msrc/android-source"
     ( "/home/richard/msrc/android-source/frameworks" )
     ( "/home/richard/msrc/android-source/dalvik" )
     ( "/home/richard/msrc/android-source/development" )
     ( "/home/richard/msrc/android-source/system" )
     ;; ( "/home/richard/msrc/android-source/bionic" )
     ;; ( "/home/richard/msrc/android-source/build" )
     ;; ( "/home/richard/msrc/android-source/external" )
     )
))
