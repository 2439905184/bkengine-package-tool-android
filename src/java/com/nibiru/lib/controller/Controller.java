package com.nibiru.lib.controller;

public class Controller {
   public static ControllerService getControllerService() {
      return new ControllerServiceImpl();
   }
}
