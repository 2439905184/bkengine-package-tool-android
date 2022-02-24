package com.hh128.BkEngine;

import android.app.Activity;
import android.os.Bundle;
import org.cocos2dx.lib.GameControllerActivity;

public class MainActivity extends GameControllerActivity
{     
	static
    {
        System.loadLibrary("openal");
        System.loadLibrary("BKEngine");
    }
    protected void onCreate(Bundle var1)
    { 
        super.onCreate(var1); 
        this.getWindow().addFlags(128); 
        //  this.nativeInitCallbacks(); 
        //连接到cocos
        this.connectController(0); 
        this.connectController(1); 
        this.connectController(2); 
    } 
} 
