package com.nibiru.lib;

public interface IBTInputDeviceBroadcast {
   String DEVICE = "device";
   String DEVICE_ID = "device_id";
   String EVENT_ACCELEROMETERCHANGE = "com.nibiru.bluex.accelerometerchange";
   String EVENT_ACCELEROMETERCHANGE_AXIS = "axis";
   String EVENT_ACCELEROMETERCHANGE_VALUE = "value";
   String EVENT_CONNECT = "com.nibiru.bluex.connect";
   String EVENT_CONNECT_ADDRESS = "address";
   int EVENT_CONNECT_CONNING = 2;
   int EVENT_CONNECT_CONN_SUCC = 3;
   String EVENT_CONNECT_CREATE_NOTIFICATION = "registernotification";
   int EVENT_CONNECT_DISCONN_SUCC = 4;
   String EVENT_CONNECT_DRIVER = "driver";
   String EVENT_CONNECT_OP_TYPE = "operation";
   int EVENT_CONNECT_REQ_CONN = 0;
   int EVENT_CONNECT_REQ_DISCONN = 1;
   String EVENT_CONNECT_USE_UI = "use-ui-setup";
   String EVENT_DIRECTIONALCHANGE = "com.nibiru.bluex.directionalchange";
   String EVENT_DIRECTIONALCHANGE_DIRECTION = "direction";
   String EVENT_DIRECTIONALCHANGE_VALUE = "value";
   String EVENT_ERROR = "com.nibiru.bluex.error";
   String EVENT_ERROR_FULL = "stacktrace";
   String EVENT_ERROR_SHORT = "message";
   String EVENT_KEYPRESS = "com.nibiru.bluex.keypress";
   String EVENT_KEYPRESS_ACTION = "action";
   String EVENT_KEYPRESS_ANALOG_EMULATED = "emulated";
   String EVENT_KEYPRESS_KEY = "key";
   String EVENT_KEYPRESS_MODIFIERS = "modifiers";
   String EVENT_STATE = "com.nibiru.bluex.state";
   String EVENT_STATE_BT = "com.nibiru.bluex.btstate";
   String EVENT_STATE_BT_STATE = "btstate";
   String EVENT_STATE_DEVICE = "device";
   String EVENT_STATE_DEVICE_LIST = "devicelist";
   String EVENT_STATE_OP_TYPE = "operation";
   String EVENT_STATE_REQUEST = "com.nibiru.bluex.state.request";
   String EVENT_STATE_REQUEST_TYPE = "statetype";
   int EVENT_STATE_REQ_DEVICE = 815;
   int EVENT_STATE_REQ_DEVICE_LIST = 816;
   String PLAYER_ORDER = "playerorder";
   String SESSION_ID = "sessionid";
}