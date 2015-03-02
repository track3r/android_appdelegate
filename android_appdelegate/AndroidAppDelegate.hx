/*
 * Copyright (c) 2003-2015 GameDuell GmbH, All Rights Reserved
 * This document is strictly confidential and sole property of GameDuell GmbH, Berlin, Germany
 */
package android_appdelegate;

import msignal.Signal;

/**
    Wraps the logic of the Android activity lifecycle callbacks with signals that the user can bind listeners to.

    @author jxav
 */
extern class AndroidAppDelegate
{
    /**
        Called when the activity is starting.
     */
    public var onCreate(default, null): Signal0;

    /**
        Perform any final cleanup before an activity is destroyed.
     */
    public var onDestroy(default, null): Signal0;

    /**
        Called as part of the activity lifecycle when an activity is going into the background, but has not (yet) been
        killed.
     */
    public var onPause(default, null): Signal0;

    /**
        Called after `onStop` when the current activity is being re-displayed to the user (the user has navigated back
        to it).
     */
    public var onRestart(default, null): Signal0;

    /**
        Called after `onRestart`, or `onPause`, for your activity to start interacting with the user.
     */
    public var onResume(default, null): Signal0;

    /**
        Called after `onCreate` or after `onRestart` when the activity had been stopped, but is now again being
        displayed to the user.
     */
    public var onStart(default, null): Signal0;

    /**
        Called when the activity is no longer visible to the user, because another activity has been resumed and is
        covering this one.
     */
    public var onStop(default, null): Signal0;

    /**
        This is called when the overall system is running low on memory, and actively running processes should trim
        their memory usage. While the exact point at which this will be called is not defined, generally it will happen
        when all background process have been killed. That is, before reaching the point of killing processes hosting
        service and foreground UI that we would like to avoid killing.
     */
    public var onLowMemory(default, null): Signal0;

    /**
        Called when the operating system has determined that it is a good time for a process to trim unneeded memory
        from its process. This will happen for example when it goes in the background and there is not enough memory to
        keep as many background processes running as desired. You should never compare to exact values of the level,
        since new intermediate values may be added -- you will typically want to compare if the value is greater or
        equal to a level you are interested in.

        Refer to: http://developer.android.com/reference/android/content/ComponentCallbacks2.html#onTrimMemory(int).
     */
    public var onTrimMemory(default, null): Signal1<Int>;

    /**
        Retrieves the instance of the app delegate.
     */
    public static function instance(): AndroidAppDelegate;
}