package com.nibiru.lib.controller;

public interface OnVirutalServiceListener {
   void onRevVirtualPlayerOrder(int var1);

   void onVirutalConnFailed();

   void onVirutalConnSuccess();

   void onVirutalServiceFailed();

   void onVirutalServiceSuccess();
}
