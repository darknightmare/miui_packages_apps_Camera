.class public abstract Lcom/android/camera/module/BaseModule;
.super Ljava/lang/Object;
.source "BaseModule.java"

# interfaces
.implements Lcom/android/camera/module/Module;
.implements Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;
.implements Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;
.implements Lcom/android/camera/ui/FlashButton$Callback;
.implements Lcom/android/camera/ui/FocusView$ExposureViewListener;
.implements Lcom/android/camera/ui/SettingView$SettingViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/BaseModule$EvChangeListener;,
        Lcom/android/camera/module/BaseModule$CameraOpenThread;
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/android/camera/Camera;

.field protected mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

.field protected volatile mCameraDisabled:Z

.field protected mCameraId:I

.field protected mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCountDownShutter:Lcom/android/camera/ui/RotateImageView;

.field protected mCurrentSimpleLayoutMode:Ljava/lang/String;

.field protected mErrorCallback:Lcom/android/camera/CameraErrorCallback;

.field protected mEvControl:Lcom/android/camera/ui/EvControlBar;

.field protected mExposureCompensationStep:F

.field protected mFlashModeButton:Lcom/android/camera/ui/FlashButton;

.field protected mGpsIndicator:Landroid/widget/ImageView;

.field protected mHDRExitArea:Landroid/view/View;

.field protected mHDRExitButton:Landroid/widget/TextView;

.field protected mHasPendingSwitching:Z

.field protected mIgnoreFocusChanged:Z

.field protected mIsScanQRCodeIntent:Z

.field protected mIsSimpleLayoutMode:Z

.field protected mLayoutModeManager:Lcom/android/camera/LayoutModeManager;

.field protected mMainThreadId:J

.field protected mMaxExposureCompensation:I

.field protected mMinExposureCompensation:I

.field protected mModulePicker:Lcom/android/camera/ModuleManager;

.field protected mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

.field protected mMutexModePicker:Lcom/android/camera/MutexModeManager;

.field protected mNumberOfCameras:I

.field protected volatile mOpenCameraFail:Z

.field protected mOrientation:I

.field protected mOrientationCompensation:I

.field protected mParameters:Landroid/hardware/Camera$Parameters;

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field protected mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

.field protected mRootView:Landroid/view/View;

.field protected mSettingActivityShow:Z

.field protected mSettingButton:Lcom/android/camera/ui/SettingButton;

.field protected mSettingView:Lcom/android/camera/ui/SettingView;

.field protected mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

.field protected mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

.field protected mShowCameraAppView:Z

.field protected mShutterButton:Lcom/android/camera/ShutterButton;

.field protected mSimpleExitArea:Landroid/view/View;

.field protected mSimpleExitButton:Landroid/widget/TextView;

.field private mSingleTapArea:Landroid/view/View;

.field protected mSkinBeautifyButton:Lcom/android/camera/ui/SwitchIndicatorButton;

.field protected mSwitchingCamera:Z

.field protected mThumbnailBackground:Lcom/android/camera/ui/RotateImageView;

.field protected mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

.field protected mThumbnailView:Lcom/android/camera/ui/RotateImageView;

.field protected mUIStyle:I

.field protected mZoomMax:I

.field private mZoomScaled:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mShowCameraAppView:Z

    .line 89
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mPendingSwitchCameraId:I

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 93
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 154
    iput-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    .line 158
    const-string v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mCurrentSimpleLayoutMode:Ljava/lang/String;

    .line 161
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    .line 1027
    return-void
.end method

.method protected static getColorEffectKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Lcom/android/camera/Device;->isSupporteShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_shader_coloreffect_key"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "pref_camera_coloreffect_key"

    goto :goto_0
.end method

.method private initializeFlashModeButton(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;I)V
    .locals 3
    .parameter "listener"
    .parameter "flashResId"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FlashButton;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/FlashButton;->setCallback(Lcom/android/camera/ui/FlashButton$Callback;)V

    .line 582
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/camera/ui/FlashButton;->initialize(ILjava/util/List;)V

    .line 583
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FlashButton;->setListener(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V

    .line 584
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FlashButton;->setOrientation(IZ)V

    .line 585
    return-void
.end method

.method private initializeSkinBeautifyButton(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSkinBeautifyButton:Lcom/android/camera/ui/SwitchIndicatorButton;

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SwitchIndicatorButton;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mSkinBeautifyButton:Lcom/android/camera/ui/SwitchIndicatorButton;

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSkinBeautifyButton:Lcom/android/camera/ui/SwitchIndicatorButton;

    const v1, 0x7f060006

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SwitchIndicatorButton;->initialize(I)V

    .line 573
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSkinBeautifyButton:Lcom/android/camera/ui/SwitchIndicatorButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SwitchIndicatorButton;->setListener(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V

    .line 574
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSkinBeautifyButton:Lcom/android/camera/ui/SwitchIndicatorButton;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/SwitchIndicatorButton;->setOrientation(IZ)V

    .line 575
    return-void
.end method

.method protected static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 984
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected addMuteToParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter

    .prologue
    .line 863
    const-string v0, "camera-service-mute"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method protected addZoom(I)V
    .locals 4
    .parameter "add"

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v0

    .line 667
    .local v0, value:I
    add-int/2addr v0, p1

    .line 668
    if-gez v0, :cond_1

    .line 669
    const/4 v0, 0x0

    .line 673
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-static {v1}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;)V

    .line 674
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 675
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->updateZoomScale(I)V

    .line 676
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 677
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 678
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Zoom : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-void

    .line 670
    :cond_1
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    if-le v0, v1, :cond_0

    .line 671
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    goto :goto_0
.end method

.method public animateSwitchCameraAfter()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->animateSwitchCameraAfter()V

    .line 325
    return-void
.end method

.method protected animateSwitchCameraBefore()V
    .locals 0

    .prologue
    .line 1121
    return-void
.end method

.method public canIgnoreFocusChanged()Z
    .locals 1

    .prologue
    .line 1122
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreFocusChanged:Z

    return v0
.end method

.method public collapseCameraControls()Z
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mLayoutModeManager:Lcom/android/camera/LayoutModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mLayoutModeManager:Lcom/android/camera/LayoutModeManager;

    invoke-virtual {v0}, Lcom/android/camera/LayoutModeManager;->dismissSettingPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected collapsePopupForSimpleLayoutMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 715
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-nez v1, :cond_1

    .line 725
    :cond_0
    :goto_0
    return v0

    .line 719
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingView;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mode_none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitButton:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    .line 722
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected configLayoutMode()V
    .locals 3

    .prologue
    .line 997
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_layout_mode_key"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->overridePreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1003
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSimpleLayoutMode(Landroid/content/SharedPreferences;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    .line 1004
    return-void

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_layout_mode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->restorePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected currentIsMainThread()Z
    .locals 4

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissSettingView()V
    .locals 0

    .prologue
    .line 1012
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hideScreenSettingView()Z

    .line 1013
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getGLRoot()Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/GLRootView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method protected enableCameraControls(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mLayoutModeManager:Lcom/android/camera/LayoutModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mLayoutModeManager:Lcom/android/camera/LayoutModeManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/LayoutModeManager;->enableSettingView(Z)V

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModulePicker:Lcom/android/camera/ModuleManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModulePicker:Lcom/android/camera/ModuleManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ModuleManager;->setEnabled(Z)V

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraPickerButton;->setEnabled(Z)V

    .line 761
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailMask:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 762
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 763
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    if-eqz v0, :cond_5

    .line 764
    if-eqz p1, :cond_7

    .line 765
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getSettingButtonEnaled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingButton;->setEnabled(Z)V

    .line 770
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCountDownShutter:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCountDownShutter:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 771
    :cond_6
    return-void

    .line 767
    :cond_7
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SettingButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected enterMutexMode(Z)V
    .locals 0
    .parameter "notSupportedFlash"

    .prologue
    .line 779
    return-void
.end method

.method protected exitMutexMode()V
    .locals 0

    .prologue
    .line 777
    return-void
.end method

.method public exitMutexModeStatus()V
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 835
    return-void
.end method

.method protected fadeInExitButton()V
    .locals 2

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-eqz v0, :cond_1

    .line 1017
    const-string v0, "mode_none"

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingView;->getCurrentMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHDRExitButton:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;)V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Lcom/android/camera/Camera;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method protected getCameraRotation()I
    .locals 1

    .prologue
    .line 1103
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultPreferenceId(I)I
    .locals 1
    .parameter

    .prologue
    .line 1083
    const v0, 0x7f0d00e3

    if-ne v0, p1, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->isAntibanding60()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1084
    const p1, 0x7f0d00e4

    .line 1086
    :cond_0
    return p1
.end method

.method protected getMarginValue(Landroid/view/View;)I
    .locals 2
    .parameter

    .prologue
    .line 939
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHDRExitArea:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 942
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0
.end method

.method public getParameter()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method protected getPreferencesLocalId()I
    .locals 2

    .prologue
    .line 963
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 964
    .local v0, preferencesLocalId:I
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 965
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    add-int/lit8 v0, v1, 0x2

    .line 971
    :cond_0
    :goto_0
    return v0

    .line 966
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 967
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    add-int/lit8 v0, v1, 0x4

    goto :goto_0

    .line 968
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isScanQRCodeIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    add-int/lit8 v0, v1, 0x6

    goto :goto_0
.end method

.method protected getPreferredCameraId()I
    .locals 2

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v1}, Lcom/android/camera/Util;->getCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 976
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 977
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 979
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 980
    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getSettingButtonEnaled()Z
    .locals 1

    .prologue
    .line 774
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingView()Lcom/android/camera/ui/SettingView;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method protected getZoomRatio(I)F
    .locals 2
    .parameter "valueIndex"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    return v0
.end method

.method protected getZoomValue()I
    .locals 1

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v0

    return v0
.end method

.method public handleControllerEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    const/4 v1, 0x0

    .line 389
    const-string v0, "com.android.camera.CLOSE_CAMERA"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->finish()V

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    const-string v0, "com.android.camera.CLICK_SHUTTER_BUTTON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->performVolumeKeyClicked(IZ)V

    .line 393
    invoke-virtual {p0, v1, v1}, Lcom/android/camera/module/BaseModule;->performVolumeKeyClicked(IZ)V

    goto :goto_0
.end method

.method protected handleVolumeKeyEvent(ZZI)Z
    .locals 8
    .parameter "up"
    .parameter "pressed"
    .parameter "repeatCount"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 621
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v5, "pref_camera_volumekey_function_key"

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v7, 0x7f0d0177

    invoke-virtual {v6, v7}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, value:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/ModuleManager;->getCurrentMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move v0, v2

    .line 624
    .local v0, isPanorama:Z
    :goto_0
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/module/BaseModule;->mShowCameraAppView:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-nez v4, :cond_2

    .line 641
    :cond_0
    :goto_1
    return v2

    .end local v0           #isPanorama:Z
    :cond_1
    move v0, v3

    .line 623
    goto :goto_0

    .line 627
    .restart local v0       #isPanorama:Z
    :cond_2
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v5, 0x7f0d0174

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 628
    invoke-virtual {p0, p3, p2}, Lcom/android/camera/module/BaseModule;->performVolumeKeyClicked(IZ)V

    goto :goto_1

    .line 630
    :cond_3
    if-nez v0, :cond_5

    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v5, 0x7f0d0175

    invoke-virtual {v4, v5}, Lcom/android/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 632
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    .line 633
    if-eqz p1, :cond_4

    .line 634
    invoke-virtual {p0, v2}, Lcom/android/camera/module/BaseModule;->addZoom(I)V

    goto :goto_1

    .line 636
    :cond_4
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->addZoom(I)V

    goto :goto_1

    :cond_5
    move v2, v3

    .line 641
    goto :goto_1
.end method

.method protected hasCameraException()Z
    .locals 1

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasFrontCamera()Z
    .locals 2

    .prologue
    .line 1007
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mNumberOfCameras:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hideScreenSettingView()Z
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->hide()V

    .line 562
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->dismissSettingPopup()Z

    .line 563
    const/4 v0, 0x1

    .line 565
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initSettingButton()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0c0014

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SettingButton;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    .line 518
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingButton;->enableFilter(Z)V

    .line 519
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    new-instance v1, Lcom/android/camera/module/BaseModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/BaseModule$1;-><init>(Lcom/android/camera/module/BaseModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingButton;->setOnSettingButtonListener(Lcom/android/camera/ui/SettingButton$OnSettingButtonListener;)V

    .line 535
    return-void
.end method

.method protected initializeCameraControls(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;I)V
    .locals 0
    .parameter "listener"
    .parameter "flashResId"

    .prologue
    .line 554
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/BaseModule;->initializeFlashModeButton(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;I)V

    .line 555
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->initializeCameraPickerButton(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V

    .line 556
    invoke-direct {p0, p1}, Lcom/android/camera/module/BaseModule;->initializeSkinBeautifyButton(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V

    .line 557
    return-void
.end method

.method protected initializeCameraPickerButton(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0c001b

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CameraPickerButton;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    .line 591
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hasFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mLayoutModeManager:Lcom/android/camera/LayoutModeManager;

    invoke-virtual {v1}, Lcom/android/camera/LayoutModeManager;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraPickerButton;->initialize(Lcom/android/camera/preferences/PreferenceGroup;)V

    .line 593
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraPickerButton;->setListener(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V

    .line 594
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CameraPickerButton;->setOrientation(IZ)V

    .line 598
    :goto_0
    return-void

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraPickerButton:Lcom/android/camera/ui/CameraPickerButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    goto :goto_0
.end method

.method protected initializeExposureCompensation()V
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mMaxExposureCompensation:I

    .line 657
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    .line 658
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mExposureCompensationStep:F

    .line 659
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mEvControl:Lcom/android/camera/ui/EvControlBar;

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mMaxExposureCompensation:I

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EvControlBar;->setEvMax(I)V

    .line 660
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mEvControl:Lcom/android/camera/ui/EvControlBar;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mMinExposureCompensation:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EvControlBar;->setEvIndex(I)V

    .line 662
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mEvControl:Lcom/android/camera/ui/EvControlBar;

    new-instance v1, Lcom/android/camera/module/BaseModule$EvChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/module/BaseModule$EvChangeListener;-><init>(Lcom/android/camera/module/BaseModule;Lcom/android/camera/module/BaseModule$1;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EvControlBar;->setOnEvChangeListener(Lcom/android/camera/ui/EvControlBar$OnEvChangedListener;)V

    .line 663
    return-void
.end method

.method protected initializeMutexMode()V
    .locals 5

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    if-eqz v0, :cond_0

    .line 829
    :goto_0
    return-void

    .line 783
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 785
    new-instance v1, Lcom/android/camera/module/BaseModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/module/BaseModule$2;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 792
    new-instance v2, Lcom/android/camera/module/BaseModule$3;

    invoke-direct {v2, p0}, Lcom/android/camera/module/BaseModule$3;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 799
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 800
    const-string v4, "enter"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string v1, "exit"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    new-instance v1, Lcom/android/camera/module/BaseModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/module/BaseModule$4;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 817
    new-instance v2, Lcom/android/camera/module/BaseModule$5;

    invoke-direct {v2, p0}, Lcom/android/camera/module/BaseModule$5;-><init>(Lcom/android/camera/module/BaseModule;)V

    .line 824
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 825
    const-string v4, "enter"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    const-string v1, "exit"

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/camera/MutexModeManager;->getMutexModeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    new-instance v1, Lcom/android/camera/MutexModeManager;

    invoke-direct {v1, v0}, Lcom/android/camera/MutexModeManager;-><init>(Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    goto :goto_0
.end method

.method protected initializeZoom()V
    .locals 3

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    .line 648
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraScreenNail;->setOrientation(IZ)V

    .line 651
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    goto :goto_0
.end method

.method protected isBackCamera()Z
    .locals 1

    .prologue
    .line 992
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isFrontCamera()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 988
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 953
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMeteringAreaOnly()Z
    .locals 1

    .prologue
    .line 1065
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedHapticFeedback()Z
    .locals 1

    .prologue
    .line 1068
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedMute()Z
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isScanQRCodeIntent()Z
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 958
    const-string v1, "com.android.camera.action.QR_CODE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.zxing.client.android.SCAN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSettingPopup()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mLayoutModeManager:Lcom/android/camera/LayoutModeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mLayoutModeManager:Lcom/android/camera/LayoutModeManager;

    invoke-virtual {v0}, Lcom/android/camera/LayoutModeManager;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowCaptureButton()Z
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportManualExposure()Z
    .locals 1

    .prologue
    .line 1090
    const/4 v0, 0x0

    return v0
.end method

.method protected isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 948
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVideoRecording()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x0

    return v0
.end method

.method protected isZoomEnabled()Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    return v0
.end method

.method protected mapTapCoordinate(Ljava/lang/Object;)V
    .locals 6
    .parameter "object"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 345
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getGLRoot()Lcom/android/gallery3d/ui/GLRootView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mSingleTapArea:Landroid/view/View;

    invoke-static {v1, v2}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v0

    .line 347
    .local v0, relativeLocation:[I
    instance-of v1, p1, Landroid/graphics/Point;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 348
    check-cast v1, Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    aget v3, v0, v4

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 349
    check-cast p1, Landroid/graphics/Point;

    .end local p1
    iget v1, p1, Landroid/graphics/Point;->y:I

    aget v2, v0, v5

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 350
    .restart local p1
    :cond_1
    instance-of v1, p1, Landroid/graphics/RectF;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 351
    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    aget v3, v0, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->left:F

    move-object v1, p1

    .line 352
    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    aget v3, v0, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->right:F

    move-object v1, p1

    .line 353
    check-cast v1, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->top:F

    aget v3, v0, v5

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 354
    check-cast p1, Landroid/graphics/RectF;

    .end local p1
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    aget v2, v0, v5

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 466
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraPickerClicked(I)Z
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public onCaptureDown()V
    .locals 0

    .prologue
    .line 1060
    return-void
.end method

.method public onCreate(Lcom/android/camera/Camera;Landroid/view/View;)V
    .locals 2
    .parameter "activity"
    .parameter "frame"

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    .line 179
    iput-object p2, p0, Lcom/android/camera/module/BaseModule;->mRootView:Landroid/view/View;

    .line 180
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/BaseModule;->mMainThreadId:J

    .line 181
    invoke-virtual {p1}, Lcom/android/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 182
    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraHolder;->getNumberOfCameras()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mNumberOfCameras:I

    .line 183
    new-instance v0, Lcom/android/camera/CameraErrorCallback;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-direct {v0, v1}, Lcom/android/camera/CameraErrorCallback;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mErrorCallback:Lcom/android/camera/CameraErrorCallback;

    .line 184
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 185
    new-instance v0, Lcom/android/camera/preferences/SettingsOverrider;

    invoke-direct {v0}, Lcom/android/camera/preferences/SettingsOverrider;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingsOverrider:Lcom/android/camera/preferences/SettingsOverrider;

    .line 186
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isSimpleLayoutMode(Landroid/content/SharedPreferences;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->initializeMutexMode()V

    .line 188
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->removeInstance(Landroid/content/Context;)V

    .line 193
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/ui/PopupManager;->removeInstance(Landroid/content/Context;)V

    .line 194
    return-void
.end method

.method public onDown(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->tryRemoveCountDownMessage()V

    .line 361
    return-void
.end method

.method public onExposureValueChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 1072
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->writeExposure(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 1076
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 1078
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators()V

    .line 1079
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exposure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mShowCameraAppView:Z

    if-ne v0, p1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iput-boolean p1, p0, Lcom/android/camera/module/BaseModule;->mShowCameraAppView:Z

    .line 280
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->updateCameraAppView()V

    .line 281
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->dismissSettingView()V

    .line 282
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mShowCameraAppView:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->registerMotionFocusManager(Z)V

    .line 283
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->clearAnimation()V

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModulePicker:Lcom/android/camera/ModuleManager;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mModulePicker:Lcom/android/camera/ModuleManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ModuleManager;->onFullScreenChanged(Z)V

    goto :goto_0
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "key"

    .prologue
    .line 230
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 198
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsScanQRCodeIntent:Z

    if-nez v0, :cond_0

    .line 201
    invoke-static {}, Lcom/android/camera/ModuleManager;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    const-string v0, "pref_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/BaseModule;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V

    .line 208
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mShowCameraAppView:Z

    if-eqz v0, :cond_2

    .line 209
    const/4 v0, 0x1

    .line 212
    :goto_1
    return v0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingButton;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 212
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 460
    return-void
.end method

.method protected onOpenCameraException()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 437
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 438
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    if-ne v0, v6, :cond_0

    .line 439
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "open_camera_fail_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera/CameraSettings;->updateOpenCameraFailTimes()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const v0, 0x7f0d0002

    :goto_0
    invoke-static {v1, v0}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 447
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    if-ne v0, v6, :cond_1

    .line 448
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0d0003

    invoke-static {v0, v1}, Lcom/android/camera/Util;->showErrorAndFinish(Landroid/app/Activity;I)V

    .line 454
    :cond_1
    :goto_1
    return-void

    .line 441
    :cond_2
    const v0, 0x7f0d0001

    goto :goto_0

    .line 452
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->sendOpenFailMessage()V

    goto :goto_1
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 469
    return-void
.end method

.method public onPauseAfterSuper()V
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hideScreenSettingView()Z

    .line 255
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onPause()V

    .line 256
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->cancelHint()V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_layout_mode_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->restorePreference(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public onPauseBeforeSuper()V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    .line 250
    return-void
.end method

.method public onPreviewTextureCopied()V
    .locals 0

    .prologue
    .line 463
    return-void
.end method

.method public onResumeAfterSuper()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mSettingActivityShow:Z

    .line 240
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 243
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 244
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 245
    return-void
.end method

.method public onResumeBeforeSuper()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    .line 235
    return-void
.end method

.method public onScale(FFF)Z
    .locals 2
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scale"

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isZoomEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    const/high16 v1, 0x3f80

    sub-float v1, p3, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 374
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->scaleZoomValue(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 378
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(FF)Z
    .locals 1
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    .line 365
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/module/BaseModule;->mZoomScaled:F

    .line 366
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->hideScreenSettingView()Z

    .line 367
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 481
    return-void
.end method

.method public onSharedPreferenceChanged()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1118
    return-void
.end method

.method public onSingleTapUp(II)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mSingleTapArea:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/module/BaseModule;->mShowCameraAppView:Z

    if-nez v2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return v1

    .line 331
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 332
    .local v0, point:Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->mapTapCoordinate(Ljava/lang/Object;)V

    .line 333
    iget p1, v0, Landroid/graphics/Point;->x:I

    .line 334
    iget p2, v0, Landroid/graphics/Point;->y:I

    .line 335
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->showExposureBar()V

    .line 338
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/camera/module/BaseModule;->onSingleTapUp(Landroid/view/View;II)V

    .line 339
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onSlideTrack(Landroid/graphics/RectF;Z)Z
    .locals 1
    .parameter "rectF"
    .parameter "up"

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 472
    return-void
.end method

.method public onVisibleChanged(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 538
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 264
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIgnoreFocusChanged:Z

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    if-nez v0, :cond_1

    .line 274
    :goto_0
    return-void

    .line 268
    :cond_1
    if-eqz p1, :cond_2

    .line 269
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->register()V

    goto :goto_0

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->unregister()V

    goto :goto_0
.end method

.method public onZoomValueChanged(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1047
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->setZoomValue(I)V

    .line 1051
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    .line 1053
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Zoom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected openCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/Util;->openCamera(Landroid/app/Activity;I)Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    .line 107
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catch Lcom/android/camera/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/camera/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1

    .line 113
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Lcom/android/camera/CameraHardwareException;
    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mOpenCameraFail:Z

    goto :goto_0

    .line 110
    .end local v0           #e:Lcom/android/camera/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, e:Lcom/android/camera/CameraDisabledException;
    iput-boolean v3, p0, Lcom/android/camera/module/BaseModule;->mCameraDisabled:Z

    goto :goto_0
.end method

.method protected performVolumeKeyClicked(IZ)V
    .locals 0
    .parameter "repeatCount"
    .parameter "pressed"

    .prologue
    .line 1106
    return-void
.end method

.method protected playCameraSound(I)V
    .locals 1
    .parameter "soundId"

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isCameraSoundOpen(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p1}, Lcom/android/camera/Camera;->playCameraSound(I)V

    .line 875
    :cond_0
    return-void
.end method

.method public recreateCameraScreenNail()Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method protected registerMotionFocusManager(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    if-nez v0, :cond_0

    .line 1117
    :goto_0
    return-void

    .line 1112
    :cond_0
    if-eqz p1, :cond_1

    .line 1113
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->register()V

    goto :goto_0

    .line 1115
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMotionFocusManager:Lcom/android/camera/MotionFocusManager;

    invoke-virtual {v0}, Lcom/android/camera/MotionFocusManager;->unregister()V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method protected resetCameraSettingsIfNeed()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 740
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->getSettingsFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraAppImpl()Lcom/android/camera/CameraAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraAppImpl;->resetSettingFlag()V

    .line 742
    iput v2, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 743
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 744
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 745
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isSimpleLayoutMode()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLayoutMode(Z)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 747
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 748
    iput v1, p0, Lcom/android/camera/module/BaseModule;->mCameraId:I

    .line 749
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getPreferencesLocalId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLocalId(I)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 750
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 751
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->isSimpleLayoutMode()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->setLayoutMode(Z)Lcom/android/camera/preferences/CameraSettingPreferences;

    .line 753
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 755
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 745
    goto :goto_0

    :cond_2
    move v1, v2

    .line 751
    goto :goto_1
.end method

.method protected resetFaceBeautyParams(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter

    .prologue
    .line 867
    const-string v0, "xiaomi-still-beautify-values"

    const v1, 0x7f0d0240

    invoke-virtual {p0, v1}, Lcom/android/camera/module/BaseModule;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    return-void
.end method

.method protected resetLastSimpleLayoutMode()V
    .locals 0

    .prologue
    .line 1119
    return-void
.end method

.method protected resetSimpleLayoutMode()V
    .locals 2

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-eqz v0, :cond_1

    .line 730
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->resetLastSimpleLayoutMode()V

    .line 731
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    const-string v1, "mode_none"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingView;->setCurrentMode(Ljava/lang/String;)V

    .line 734
    :cond_0
    const-string v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mCurrentSimpleLayoutMode:Ljava/lang/String;

    .line 735
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 737
    :cond_1
    return-void
.end method

.method public scaleZoomValue(F)Z
    .locals 3
    .parameter "contrast"

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int v0, v1, v2

    .line 409
    .local v0, value:I
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->getZoomValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 410
    const/4 v1, 0x0

    .line 418
    :goto_0
    return v1

    .line 412
    :cond_0
    if-gez v0, :cond_2

    .line 413
    const/4 v0, 0x0

    .line 417
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/module/BaseModule;->onZoomValueChanged(I)V

    .line 418
    const/4 v1, 0x1

    goto :goto_0

    .line 414
    :cond_2
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    if-le v0, v1, :cond_1

    .line 415
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mZoomMax:I

    goto :goto_1
.end method

.method protected sendFadeoutEvMsg()V
    .locals 0

    .prologue
    .line 1105
    return-void
.end method

.method protected sendOpenFailMessage()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method protected setOrientationIndicator(IZ)V
    .locals 7
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 887
    const/4 v5, 0x2

    new-array v4, v5, [Landroid/view/View;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mHDRExitArea:Landroid/view/View;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitArea:Landroid/view/View;

    aput-object v6, v4, v5

    .line 888
    .local v4, views:[Landroid/view/View;
    move-object v0, v4

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 889
    .local v3, v:Landroid/view/View;
    invoke-virtual {p0, v3}, Lcom/android/camera/module/BaseModule;->getMarginValue(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0, p1, v3, v5}, Lcom/android/camera/module/BaseModule;->updateRotateLayout(ILandroid/view/View;I)V

    .line 888
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 891
    .end local v3           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected setSingleTapUpListener(Landroid/view/View;)V
    .locals 0
    .parameter "singleTapArea"

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/camera/module/BaseModule;->mSingleTapArea:Landroid/view/View;

    .line 498
    return-void
.end method

.method protected setZoomValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0, p1}, Lcom/android/camera/CameraSettings;->writeZoom(Lcom/android/camera/preferences/CameraSettingPreferences;I)V

    .line 1095
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->updateZoomScale(I)V

    .line 1096
    return-void
.end method

.method protected showBeautyButtonInTopPanel()Z
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x0

    return v0
.end method

.method protected showExposureBar()V
    .locals 0

    .prologue
    .line 550
    return-void
.end method

.method protected showIndicators(Z)V
    .locals 2
    .parameter

    .prologue
    .line 878
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v1, 0x7f0c007e

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 880
    return-void

    .line 878
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected tryRemoveCountDownMessage()V
    .locals 0

    .prologue
    .line 1107
    return-void
.end method

.method protected updateCameraAppView()V
    .locals 0

    .prologue
    .line 1120
    return-void
.end method

.method public updateExitLayoutPanel(I)V
    .locals 8
    .parameter

    .prologue
    const v3, 0x7f0c000f

    const/4 v4, 0x0

    const v2, 0x7f0c000e

    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 915
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSimpleExitArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/widget/RelativeLayout;

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 918
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 919
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v5

    .line 920
    rem-int/lit16 v1, p1, 0xb4

    if-nez v1, :cond_4

    .line 921
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    aput v1, v5, v6

    .line 923
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-eqz v1, :cond_3

    const v1, 0x7f0c0016

    :goto_2
    aput v1, v5, v7

    .line 935
    :cond_0
    :goto_3
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 936
    return-void

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mHDRExitArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v3

    .line 921
    goto :goto_1

    .line 923
    :cond_3
    const v1, 0x7f0c001e

    goto :goto_2

    .line 925
    :cond_4
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    if-nez v1, :cond_6

    .line 926
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    :goto_4
    aput v2, v5, v6

    .line 928
    const v1, 0x7f0c0016

    aput v1, v5, v7

    goto :goto_3

    :cond_5
    move v2, v3

    .line 926
    goto :goto_4

    .line 929
    :cond_6
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mUIStyle:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 930
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    :goto_5
    aput v2, v5, v6

    .line 932
    aput v4, v5, v7

    goto :goto_3

    :cond_7
    move v2, v4

    .line 930
    goto :goto_5
.end method

.method protected updateFlashButton()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 602
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSkinBeautifyButton:Lcom/android/camera/ui/SwitchIndicatorButton;

    if-nez v0, :cond_1

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0c0017

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FlashButton;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    .line 604
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    const v3, 0x7f0c001a

    invoke-virtual {v0, v3}, Lcom/android/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SwitchIndicatorButton;

    iput-object v0, p0, Lcom/android/camera/module/BaseModule;->mSkinBeautifyButton:Lcom/android/camera/ui/SwitchIndicatorButton;

    .line 606
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 607
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/BaseModule;->mSkinBeautifyButton:Lcom/android/camera/ui/SwitchIndicatorButton;

    invoke-virtual {p0}, Lcom/android/camera/module/BaseModule;->showBeautyButtonInTopPanel()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/camera/ui/SwitchIndicatorButton;->setVisibility(I)V

    .line 609
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 614
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 607
    goto :goto_0

    .line 611
    :cond_4
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mFlashModeButton:Lcom/android/camera/ui/FlashButton;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSkinBeautifyButton:Lcom/android/camera/ui/SwitchIndicatorButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/SwitchIndicatorButton;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updateRotateLayout(ILandroid/view/View;I)V
    .locals 3
    .parameter "degree"
    .parameter "view"
    .parameter "marginValue"

    .prologue
    const/4 v2, -0x1

    .line 838
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 841
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    sparse-switch p1, :sswitch_data_0

    .line 859
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 860
    return-void

    .line 843
    :sswitch_0
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 844
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 847
    :sswitch_1
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 848
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 851
    :sswitch_2
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 852
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 855
    :sswitch_3
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 856
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 841
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public updateThumbnailView(Lcom/android/camera/Thumbnail;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 423
    if-eqz p1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    .line 430
    :goto_0
    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 428
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mThumbnailView:Lcom/android/camera/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateZoomScale(I)V
    .locals 2
    .parameter "valueIndex"

    .prologue
    .line 682
    invoke-virtual {p0, p1}, Lcom/android/camera/module/BaseModule;->getZoomRatio(I)F

    move-result v0

    .line 683
    .local v0, zoomScale:F
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraScreenNail;->getGLSurfaceStatusBar()Lcom/android/camera/GLSurfaceStatusBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/GLSurfaceStatusBar;->updateZoom(F)V

    .line 684
    return-void
.end method
