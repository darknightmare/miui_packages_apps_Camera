.class Lcom/android/camera/ui/SettingPopupView$4;
.super Ljava/lang/Object;
.source "SettingPopupView.java"

# interfaces
.implements Lcom/android/camera/ui/AbstractSettingPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/SettingPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SettingPopupView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SettingPopupView;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingPopupView;->mFaceBeauty:Lcom/android/camera/ui/FaceBeautyPopup;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingPopupView;->mFaceBeauty:Lcom/android/camera/ui/FaceBeautyPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceBeautyPopup;->reloadPreference()V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/HorizontalSettingPopup;->reloadPreference()V

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectSurfacePopup;->reloadPreference()V

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_3

    .line 409
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$4;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 411
    :cond_3
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 414
    return-void
.end method
