(require 'android-mode)
;; (defcustom android-mode-sdk-dir "/home/richard/sdk_android/")

(add-to-list 'auto-mode-alist '("\\.\\(aidl\\)\\'" . java-mode))

;; (setq 
;;  cscope-database-regexps
;;  '(
;;    ( "^/home/richard/gingerbread/frameworks" 
;;      ( "/home/richard/gingerbread/frameworks" ))

;;    ( "^/home/richard/gingerbread/bionic" 
;;      ( "/home/richard/gingerbread/bionic" ))

;;    ( "^/home/richard/gingerbread/bootable" 
;;      ( "/home/richard/gingerbread/bootable" ))

;;    ( "^/home/richard/gingerbread/build" 
;;      ( "/home/richard/gingerbread/build" ))

;;    ( "^/home/richard/gingerbread/cts" 
;;      ( "/home/richard/gingerbread/cts" ))

;;    ( "^/home/richard/gingerbread/dalvik" 
;;      ( "/home/richard/gingerbread/dalvik" ))

;;    ( "^/home/richard/gingerbread/development" 
;;      ( "/home/richard/gingerbread/development" ))

;;    ( "^/home/richard/gingerbread/device" 
;;      ( "/home/richard/gingerbread/device" ))

;;    ( "^/home/richard/gingerbread/external" 
;;      ( "/home/richard/gingerbread/external" ))

;;    ( "^/home/richard/gingerbread/hardware" 
;;      ( "/home/richard/gingerbread/hardware" ))

;;    ( "^/home/richard/gingerbread/libcore" 
;;      ( "/home/richard/gingerbread/libcore" ))

;;    ( "^/home/richard/gingerbread/system" 
;;      ( "/home/richard/gingerbread/system" ))

;;    ( "^/home/richard/gingerbread/vendor" 
;;      ( "/home/richard/gingerbread/vendor" ))
;;    ))


;;		(setq cscope-database-regexps
;;		      '(
;;			( "^/users/jdoe/sources/proj1"
;;			  ( t )
;;			  ( "/users/jdoe/sources/proj2")
;;			  ( "/users/jdoe/sources/proj3/mycscope.out")
;;			  ( "/users/jdoe/sources/proj4")
;;			  t
;;			  ( "/some/master/directory" ("-d" "-I/usr/local/include") )
;;			  )
;;			( "^/users/jdoe/sources/gnome/"
;;			  ( "/master/gnome/database" ("-d") )
;;			  )
;;			))


(setq 
 cscope-database-regexps
 '(

   ( "^/home/richard/msrc/galaxy_tab/kernel/samsung/2.6.35-tab"
     ( "/home/richard/msrc/galaxy_tab/kernel/samsung/2.6.35-tab")
     ( "/home/richard/msrc/galaxy_tab/frameworks" )
     ( "/home/richard/msrc/galaxy_tab/device" )
     ( "/home/richard/msrc/galaxy_tab/bionic" )
     ( "/home/richard/msrc/galaxy_tab/build" )
     ( "/home/richard/msrc/galaxy_tab/system" )
     ( "/home/richard/msrc/galaxy_tab/hardware" )
     ( "/home/richard/msrc/galaxy_tab/libcore" )
     )

   ( "^/home/richard/prog/java"
     ( "/home/richard/prog/java" )
     ( "/home/richard/msrc/galaxy_tab/frameworks" )
     ( "/home/richard/msrc/galaxy_tab/dalvik" )
     )

   ( "^/home/richard/msrc/SampleCode"
     ( "/home/richard/msrc/galaxy_tab/frameworks" )
     ( "/home/richard/msrc/galaxy_tab/dalvik" )
     )

   ( "^/home/richard/msrc/DroidDemos"
     ("/home/richard/msrc/DroidDemos")
     ( "/home/richard/msrc/galaxy_tab/frameworks" )
     ( "/home/richard/msrc/galaxy_tab/build" )
     ( "/home/richard/msrc/galaxy_tab/device" )
     ( "/home/richard/msrc/galaxy_tab/hardware" )
     ;; ( "/home/richard/msrc/galaxy_tab/libcore" )
     ;; ( "/home/richard/msrc/galaxy_tab/system" )
     )

   ( "^/home/richard/ndk_droid/android-ndk-r7"
     ("/home/richard/ndk_droid/android-ndk-r7" )
     ( "/home/richard/msrc/galaxy_tab/frameworks" )
     ( "/home/richard/msrc/galaxy_tab/build" )
     ( "/home/richard/msrc/galaxy_tab/device" )
     ( "/home/richard/msrc/galaxy_tab/hardware" )
     )


   ( "^/home/richard/msrc/spydroid-ipcamera-read-only/trunk"
     ( "/home/richard/msrc/spydroid-ipcamera-read-only/trunk" )
     ( "/home/richard/msrc/galaxy_tab/frameworks" )
     ( "/home/richard/msrc/galaxy_tab/build" )
     ( "/home/richard/msrc/galaxy_tab/device" )
     ( "/home/richard/msrc/galaxy_tab/hardware" )
     ;; ( "/home/richard/msrc/galaxy_tab/libcore" )
     ;; ( "/home/richard/msrc/galaxy_tab/system" )
     )

   ( "^/home/richard/msrc/galaxy_tab"
     ( "/home/richard/msrc/galaxy_tab/frameworks" )
     ( "/home/richard/msrc/galaxy_tab/droid_tests" )
     ( "/home/richard/msrc/galaxy_tab/external/stlport" )
     ( "/home/richard/msrc/galaxy_tab/device" )
     ( "/home/richard/msrc/galaxy_tab/bionic" )
;;     ( "/home/richard/msrc/galaxy_tab/dalvik" )
     ( "/home/richard/msrc/galaxy_tab/build" )
     ( "/home/richard/msrc/galaxy_tab/system" )
     ( "/home/richard/msrc/galaxy_tab/hardware" )
     ( "/home/richard/msrc/galaxy_tab/libcore" )
     ( "/home/richard/msrc/galaxy_tab/kernel/samsung/2.6.35-tab")
     ;; ( "/home/richard/msrc/galaxy_tab/cts" )
     )

   ( "^/data/android-ics"
     ( "/data/android-ics/frameworks" )
     ( "/data/android-ics/device" )
     ( "/data/android-ics/bionic" )
     ( "/data/android-ics/dalvik" )
     ( "/data/android-ics/development" )
     ( "/data/android-ics/build" )
     ( "/data/android-ics/system" )
     ( "/data/android-ics/hardware" )
     ( "/data/android-ics/libcore" )
     )

   ( "^/home/richard/msrc/droid_build_systems/try_droid_build"
     ( "/home/richard/msrc/droid_build_systems/try_droid_build/frameworks" )
     ( "/home/richard/msrc/droid_build_systems/try_droid_build/bionic" )
     ( "/home/richard/msrc/droid_build_systems/try_droid_build/build" )
     ( "/home/richard/msrc/droid_build_systems/try_droid_build/system" )
     ( "/home/richard/msrc/droid_build_systems/try_droid_build/external" )
     )

   ( "^/media/linux/ddbs"
     ( "/media/linux/ddbs/frameworks" )
     ( "/media/linux/ddbs/bionic" )
     ( "/media/linux/ddbs/build" )
     ( "/media/linux/ddbs/system" )
     ( "/media/linux/ddbs/external" )
     )


   ( "^/home/richard/msrc/cyanmod"
     ( "/home/richard/msrc/cyanmod/frameworks" )
     ( "/home/richard/msrc/cyanmod/build" )
     ( "/home/richard/msrc/cyanmod/device" )
     ( "/home/richard/msrc/cyanmod/system" )
     ;; ( "/home/richard/msrc/cyanmod/hardware" )
     ;; ( "/home/richard/msrc/cyanmod/libcore" )
     ;; ( "/home/richard/msrc/cyanmod/cts" )
     )

   ( "^/home/richard/gbread"
     ( "/home/richard/gbread/frameworks" )
     ;;     ( "/home/richard/gbread/bootable" )
     ( "/home/richard/gbread/build" )
     ( "/home/richard/gbread/cts" )
     ;;     ( "/home/richard/gbread/dalvik" )
     ;;     ( "/home/richard/gbread/development" )
     ( "/home/richard/gbread/device" )
     ;;     ( "/home/richard/gbread/external" )
     ( "/home/richard/gbread/hardware" )
     ( "/home/richard/gbread/libcore" )
     ( "/home/richard/gbread/system" )
;;     ( "/home/richard/gbread/vendor" )
     ( "/home/richard/gbread/external/alsa-lib" )
     ( "/home/richard/gbread/external/alsa-utils" )
     ( "/home/richard/gbread/external/libaudio" )
     ;;     ( "/home/richard/msrc/kernel/droidKernel" )
     )

   ( "^/home/richard/msrc/droid_build_systems/awareness"
     ( "/home/richard/msrc/droid_build_systems/awareness/frameworks" )
     ( "/home/richard/msrc/droid_build_systems/awareness/build" )
     ( "/home/richard/msrc/droid_build_systems/awareness/system" )
     ( "/home/richard/msrc/droid_build_systems/awareness/external" )
     ( "/home/richard/msrc/droid_build_systems/awareness/hardware" )
     ( "/home/richard/msrc/droid_build_systems/awareness/bionic" )
     ( "/home/richard/msrc/droid_build_systems/awareness/sdk" )
     ( "/home/richard/msrc/droid_build_systems/awareness/device" )
     )

   ( "^/home/richard/gdroid"
     ( "/home/richard/gdroid/frameworks" )
     ( "/home/richard/gdroid/vendor" )
     ;;     ( "/home/richard/gdroid/bootable" )
     ( "/home/richard/gdroid/build" )
     ( "/home/richard/gdroid/cts" )
     ;;     ( "/home/richard/gdroid/dalvik" )
     ;;     ( "/home/richard/gdroid/development" )
     ( "/home/richard/gdroid/device" )
     ;;     ( "/home/richard/gdroid/external" )
     ( "/home/richard/gdroid/hardware" )
     ( "/home/richard/gdroid/libcore" )
     ( "/home/richard/gdroid/system" )
     ( "/home/richard/gdroid/external/alsa-lib" )
     ( "/home/richard/gdroid/external/alsa-utils" )
     ( "/home/richard/gdroid/external/libaudio" )
     ;;     ( "/home/richard/msrc/kernel/droidKernel" )
     )

   ;; ( "^/home/richard/msrc/kernel/droidKernel"
   ;;   ( "/home/richard/msrc/kernel/droidKernel" )
   ;;   ( "/home/richard/gdroid/frameworks" )
   ;;   )


   ( "^/home/richard/samsung_droid/210droid"
     ( "/home/richard/samsung_droid/210droid/frameworks" )
     ;;     ( "/home/richard/samsung_droid/210droid/bootable" )
     ( "/home/richard/samsung_droid/210droid/build" )
     ( "/home/richard/samsung_droid/210droid/cts" )
     ;;     ( "/home/richard/samsung_droid/210droid/dalvik" )
     ;;     ( "/home/richard/samsung_droid/210droid/development" )
     ( "/home/richard/samsung_droid/210droid/device" )
     ;;     ( "/home/richard/samsung_droid/210droid/external" )
     ( "/home/richard/samsung_droid/210droid/vendor" )
     ( "/home/richard/samsung_droid/210droid/hardware" )
     ( "/home/richard/samsung_droid/210droid/system" )
     ( "/home/richard/samsung_droid/210droid/external" )
     )

   ( "^/home/richard/share/wince"
     ( "/home/richard/share/wince/wince_root" )
     ( "/home/richard/share/wince/c100os" )
     )

   ( "^/home/richard/Gbread2"
     ( "/home/richard/Gbread2/frameworks" )
     )

   ( "^/home/richard/msrc/Cnxt92755/N265/output/build/linux-2.6.32"
     ( "/home/richard/msrc/Cnxt92755/N265/target" )
     ( "/home/richard/msrc/Cnxt92755/N265/output/build/linux-2.6.32" )
     )


   ( "^/home/richard/msrc/zstack"
     ( "/home/richard/msrc/zstack/Components" )
     ( "/home/richard/msrc/zstack/Projects/zstack" )
     )

   ( "^/home/richard/msrc/std_buildroot/buildroot/megatron_driver_test"
     ( "/home/richard/msrc/std_buildroot/buildroot/megatron_driver_test" )
     ( "/home/richard/msrc/std_buildroot/buildroot/output/build" )
     ( "/data/git_h7000/apps" )
     )

   ( "^/media/linux/Nor4/output/build/linux-2.6.32"
     ( "/media/linux/Nor4/output/build/linux-2.6.32" )
     ( "/media/linux/Nor4/target" )
     )



 )
 )

