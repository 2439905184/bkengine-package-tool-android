package com.nibiru.lib.controller;

public class TouchPointer {
   private float eP;
   private float eQ;
   private float eR;
   private float eS;
   private float eT;
   private int eU = 1;
   private int id;
   private int intervalTime = 50;
   private int offset = 30;
   private float x;
   private float y;

   public TouchPointer() {
   }

   public TouchPointer(int var1, float var2, float var3) {
      this.id = var1;
      this.x = var2;
      this.y = var3;
   }

   public int getCurrentState() {
      return this.eU;
   }

   public int getId() {
      return this.id;
   }

   public float getIndicateX() {
      return this.eP;
   }

   public float getIndicateY() {
      return this.eQ;
   }

   public int getIntervalTime() {
      return this.intervalTime;
   }

   public int getOffset() {
      return this.offset;
   }

   public float getRadius() {
      return this.eT;
   }

   public float getStartX() {
      return this.eR;
   }

   public float getStartY() {
      return this.eS;
   }

   public float getX() {
      return this.x;
   }

   public float getY() {
      return this.y;
   }

   public void setCurrentState(int var1) {
      this.eU = var1;
   }

   public void setId(int var1) {
      this.id = var1;
   }

   public void setIndicateX(float var1) {
      this.eP = var1;
   }

   public void setIndicateY(float var1) {
      this.eQ = var1;
   }

   public void setIntervalTime(int var1) {
      this.intervalTime = var1;
   }

   public void setOffset(int var1) {
      this.offset = var1;
   }

   public void setOffsetInterval(float var1, float var2) {
      Math.abs(var1);
      Math.abs(var2);
      this.offset = 10;
      this.intervalTime = 10;
   }

   public void setRadius(float var1) {
      this.eT = var1;
   }

   public void setStartX(float var1) {
      this.eR = var1;
   }

   public void setStartY(float var1) {
      this.eS = var1;
   }

   public void setX(float var1) {
      this.x = var1;
   }

   public void setY(float var1) {
      this.y = var1;
   }

   public void update(TouchPointer var1) {
      this.x = var1.x;
      this.y = var1.y;
   }
}
