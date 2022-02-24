package com.nibiru.lib.controller;

public interface SensorStateService {
   AccEvent getAccEvent(int var1);

   GyroEvent getGyroEvent(int var1);

   MotionSenseEvent getMotionSenseState(int var1);
}
