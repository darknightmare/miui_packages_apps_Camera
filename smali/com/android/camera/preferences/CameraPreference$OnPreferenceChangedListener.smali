.class public interface abstract Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;
.super Ljava/lang/Object;
.source "CameraPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/preferences/CameraPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPreferenceChangedListener"
.end annotation


# virtual methods
.method public abstract onCameraPickerClicked(I)Z
.end method

.method public abstract onSettingValueChanged(Ljava/lang/String;)V
.end method

.method public abstract onSharedPreferenceChanged()V
.end method
