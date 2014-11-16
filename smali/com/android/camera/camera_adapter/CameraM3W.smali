.class public Lcom/android/camera/camera_adapter/CameraM3W;
.super Lcom/android/camera/module/CameraModule;
.source "CameraM3W.java"

# interfaces
.implements Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;


# instance fields
.field private mIsLongShotMode:Z

.field private mMeasureWhiteBalanceButton:Landroid/view/View;

.field private mMeasureWhiteBalanceLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraM3W;->mIsLongShotMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/camera_adapter/CameraM3W;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraM3W;->lockCurrentWhiteBalance()V

    return-void
.end method

.method private entertWhiteBalanceLockMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 342
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraM3W;->mMeasureWhiteBalanceLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/zxing/QRCodeManager;->hideViewFinderFrame()V

    .line 344
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraM3W;->mMeasureWhiteBalanceLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraM3W;->hideScreenSettingView()Z

    .line 346
    iget-object v0, p0, Lcom/android/camera/module/CameraModule;->mAudioCaptureManager:Lcom/android/camera/AudioCaptureManager;

    invoke-virtual {v0}, Lcom/android/camera/AudioCaptureManager;->onBackPressed()Z

    .line 347
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators()V

    .line 348
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/SettingButton;->setEnabled(Z)V

    .line 350
    :cond_0
    return-void
.end method

.method private getFaceBeautifyValue()Ljava/lang/String;
    .locals 6

    .prologue
    const v2, 0x7f0d0242

    const v3, 0x7f0d0240

    .line 405
    iget-object v4, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v5, "pref_camera_face_beauty_key"

    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, faceBeauty:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraM3W;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 410
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_skin_beautify_key"

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    :cond_0
    :goto_1
    return-object v0

    .end local v0           #faceBeauty:Ljava/lang/String;
    :cond_1
    move v1, v3

    .line 405
    goto :goto_0

    .line 413
    .restart local v0       #faceBeauty:Ljava/lang/String;
    :cond_2
    const-string v1, "pref_camera_face_beauty_key"

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCurrentSimpleLayoutMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 414
    invoke-virtual {p0, v3}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getProfessionalLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;
    .locals 2
    .parameter "activity"
    .parameter "isBackCamera"
    .parameter "isImageCaptureIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Camera;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_6

    .line 446
    if-nez p2, :cond_0

    .line 447
    const-string v1, "pref_camera_panoramamode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_0
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    const-string v1, "pref_camera_ae_bracket_hdr_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v1, :cond_1

    .line 453
    const-string v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSingleClickBurstMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 456
    const-string v1, "pref_camera_burst_shooting_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 459
    const-string v1, "pref_camera_ubi_focus_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_3
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraM3W;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    const-string v1, "pref_camera_focus_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    const-string v1, "pref_qc_camera_manual_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-static {}, Lcom/android/camera/Device;->isUseNewFocusUI()Z

    move-result v1

    if-nez v1, :cond_4

    .line 465
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_4
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_5

    .line 469
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_5
    :goto_0
    return-object v0

    .line 472
    :cond_6
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    const-string v1, "pref_camera_face_beauty_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-static {}, Lcom/android/camera/Device;->isUseNewFocusUI()Z

    move-result v1

    if-nez v1, :cond_7

    .line 475
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_7
    const-string v1, "pref_qc_camera_iso_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraM3W;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_5

    .line 481
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getSimpleLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;
    .locals 2
    .parameter "activity"
    .parameter "isBackCamera"
    .parameter "isImageCaptureIntent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/Camera;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_5

    .line 491
    if-nez p2, :cond_0

    .line 492
    const-string v1, "pref_camera_panoramamode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    :cond_0
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI4:Z

    if-nez v1, :cond_1

    .line 495
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_1
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraM3W;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    const-string v1, "pref_camera_ae_bracket_hdr_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    if-nez p2, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSingleClickBurstMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    const-string v1, "pref_camera_burst_shooting_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_2
    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUbiFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    const-string v1, "pref_camera_ubi_focus_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_4

    .line 512
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_4
    :goto_0
    return-object v0

    .line 515
    :cond_5
    const-string v1, "pref_camera_countdown_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraM3W;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_4

    .line 518
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getWatermarkValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "off"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_watermark_key"

    const v2, 0x7f0d021f

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "on"

    goto :goto_0

    :cond_1
    const-string v0, "off"

    goto :goto_0
.end method

.method private getZSL()Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f0d022c

    .line 422
    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v2, :cond_0

    .line 423
    const-string v2, "on"

    .line 439
    :goto_0
    return-object v2

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_qc_camera_iso_key"

    const v4, 0x7f0d00d1

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, iso:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_qc_camera_exposuretime_key"

    invoke-virtual {p0, v5}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, exposureTime:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v2}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0d00da

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 437
    :cond_1
    const-string v2, "off"

    goto :goto_0

    .line 439
    :cond_2
    const-string v2, "on"

    goto :goto_0
.end method

.method private initMeasureWhiteBalanceUI()V
    .locals 2

    .prologue
    .line 389
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraM3W;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraM3W;->mMeasureWhiteBalanceLayout:Landroid/view/View;

    .line 390
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/android/camera/camera_adapter/CameraM3W;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/camera_adapter/CameraM3W;->mMeasureWhiteBalanceButton:Landroid/view/View;

    .line 391
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraM3W;->mMeasureWhiteBalanceButton:Landroid/view/View;

    new-instance v1, Lcom/android/camera/camera_adapter/CameraM3W$1;

    invoke-direct {v1, p0}, Lcom/android/camera/camera_adapter/CameraM3W$1;-><init>(Lcom/android/camera/camera_adapter/CameraM3W;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    return-void
.end method

.method private isFlashOnWhenCapture()Z
    .locals 2

    .prologue
    .line 303
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, flashMode:Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->isNeedFlashOn()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private lockCurrentWhiteBalance()V
    .locals 3

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 380
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    .line 381
    .local v0, parameters:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getWBCT()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setWBManualCCT(I)V

    .line 382
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 383
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 384
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraM3W;->mMeasureWhiteBalanceLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SettingButton;->setEnabled(Z)V

    .line 386
    return-void
.end method

.method private qcomUpdateCameraParametersPreference(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V
    .locals 19
    .parameter "parameters"

    .prologue
    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedDenoiseModes()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 72
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_camera_denoise_key"

    const v17, 0x7f0d00d0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, Denoise:Ljava/lang/String;
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Denoise value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setDenoise(Ljava/lang/String;)V

    .line 78
    .end local v2           #Denoise:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_qc_camera_iso_key"

    const v17, 0x7f0d00d1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, iso:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v15

    invoke-static {v8, v15}, Lcom/android/camera/camera_adapter/CameraM3W;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 82
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ISO value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setISOValue(Ljava/lang/String;)V

    .line 87
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_qc_camera_exposuretime_key"

    const v17, 0x7f0d022c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, exposureTime:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxExposureTime()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 91
    .local v6, exposure:I
    if-ltz v6, :cond_2

    .line 92
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setExposureTime(I)V

    .line 93
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ExposureTime value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getExposureTime()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_qc_camera_saturation_key"

    const v17, 0x7f0d00b3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, saturationStr:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSaturation()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 101
    .local v9, saturation:I
    if-ltz v9, :cond_3

    .line 102
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Saturation value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setSaturation(I)V

    .line 107
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_qc_camera_contrast_key"

    const v17, 0x7f0d00af

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, contrastStr:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxContrast()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 111
    .local v4, contrast:I
    if-ltz v4, :cond_4

    .line 112
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Contrast value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setContrast(I)V

    .line 117
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_qc_camera_sharpness_key"

    const v17, 0x7f0d00b7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 120
    .local v12, sharpnessStr:Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSharpness()I

    move-result v16

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 121
    .local v11, sharpness:I
    if-ltz v11, :cond_5

    .line 122
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Sharpness value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setSharpness(I)V

    .line 126
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_camera_touchafaec_key"

    const v17, 0x7f0d00a2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 129
    .local v13, touchAfAec:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedTouchAfAec()Ljava/util/List;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/android/camera/camera_adapter/CameraM3W;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 130
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "TouchAfAec value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 134
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/camera/camera_adapter/CameraM3W;->setPictureFlipIfNeed(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V

    .line 136
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v15, :cond_c

    .line 137
    const-string v15, "on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFaceDetectionMode(Ljava/lang/String;)V

    .line 143
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/CameraModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    if-eqz v15, :cond_7

    .line 144
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/CameraModule;->mFaceView:Lcom/android/camera/ui/FaceView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    move-object/from16 v16, v0

    const-string v17, "pref_camera_show_gender_age_key"

    const-string v18, "on"

    invoke-virtual/range {v16 .. v18}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/ui/FaceView;->setGenderAgeFormat(Ljava/lang/String;)V

    .line 149
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraM3W;->getFaceBeautifyValue()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setStillBeautify(Ljava/lang/String;)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraM3W;->getMultiFaceBeautyValue()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setMultiFaceBeautify(Ljava/lang/String;)V

    .line 152
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraM3W;->getWatermarkValue()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setTimeWatermark(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v15}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v15

    if-nez v15, :cond_13

    .line 156
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v15}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 157
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setHandNight(Z)V

    .line 158
    const-string v15, "Camera"

    const-string v16, "Hand Nigh = true"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_8
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraM3W;->getZSL()Ljava/lang/String;

    move-result-object v14

    .line 188
    .local v14, zsl:Ljava/lang/String;
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "ZSL value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v15, "on"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 190
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    .line 191
    const-string v15, "on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setZSLMode(Ljava/lang/String;)V

    .line 197
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraM3W;->mIsLongShotMode:Z

    if-nez v15, :cond_15

    .line 198
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraM3W;->mIsLongShotMode:Z

    .line 199
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    .line 204
    :cond_a
    :goto_3
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Long Shot mode value = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraM3W;->isLongShotMode()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-static {}, Lcom/android/camera/Device;->isSupportedChromaFlash()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 208
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-nez v15, :cond_16

    const-string v15, "af-bracket-on"

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getUbiFocus()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v16, "pref_auto_chroma_flash_key"

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_16

    const-string v3, "chroma-flash-on"

    .line 212
    .local v3, chromaFlash:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v15, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-virtual {v15, v3}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setChromaFlash(Ljava/lang/String;)V

    .line 214
    .end local v3           #chromaFlash:Ljava/lang/String;
    :cond_b
    const-string v16, "Camera"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Chroma Flash = "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v15, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-virtual {v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getChromaFlash()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 139
    .end local v14           #zsl:Ljava/lang/String;
    :cond_c
    const-string v15, "off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFaceDetectionMode(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v15}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 160
    const-string v15, "Camera"

    const-string v16, "Raw Data = true"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 161
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v15}, Lcom/android/camera/MutexModeManager;->isAoHdr()Z

    move-result v15

    if-eqz v15, :cond_f

    .line 162
    const-string v15, "on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setAoHDR(Ljava/lang/String;)V

    .line 163
    const-string v15, "Camera"

    const-string v16, "Ao HDR = true"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 164
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v15}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v15

    if-eqz v15, :cond_11

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraM3W;->isLiveHdr()Z

    move-result v15

    if-eqz v15, :cond_10

    const-string v15, "on"

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setAoHDR(Ljava/lang/String;)V

    .line 166
    const-string v15, "Camera"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Ao HDR = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/camera_adapter/CameraM3W;->isLiveHdr()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 165
    :cond_10
    const-string v15, "off"

    goto :goto_5

    .line 167
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v15}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 168
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setMorphoHDR(Z)V

    .line 170
    const v15, 0x7f0d0136

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v15}, Lcom/android/camera/camera_adapter/CameraM3W;->setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 172
    const-string v15, "ae-bracket-hdr"

    const-string v16, "AE-Bracket"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v15, "capture-burst-exposures"

    const-string v16, "-6,8,0"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v15, "Camera"

    const-string v16, "Morpho HDR = true"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 175
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v15}, Lcom/android/camera/MutexModeManager;->isUbiFocus()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 176
    const-string v15, "af-bracket-on"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setUbiFocus(Ljava/lang/String;)V

    .line 177
    const-string v15, "Camera"

    const-string v16, "Ubi Focus = true"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 180
    :cond_13
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setHandNight(Z)V

    .line 181
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setMorphoHDR(Z)V

    .line 182
    const-string v15, "ae-bracket-hdr"

    const-string v16, "Off"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v15, "off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setAoHDR(Ljava/lang/String;)V

    .line 184
    const-string v15, "af-bracket-off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setUbiFocus(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 192
    .restart local v14       #zsl:Ljava/lang/String;
    :cond_14
    const-string v15, "off"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 193
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    .line 194
    const-string v15, "off"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setZSLMode(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 200
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraM3W;->mIsLongShotMode:Z

    if-eqz v15, :cond_a

    .line 201
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/camera/camera_adapter/CameraM3W;->mIsLongShotMode:Z

    .line 202
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    goto/16 :goto_3

    .line 208
    :cond_16
    const-string v3, "chroma-flash-off"

    goto/16 :goto_4
.end method

.method private setPictureFlipIfNeed(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V
    .locals 3
    .parameter "parameters"

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraM3W;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isFrontMirror(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 325
    const-string v0, "flip-h"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setPictureFlip(Ljava/lang/String;)V

    .line 332
    :goto_0
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Picture flip value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getPictureFlip()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 327
    :cond_0
    const-string v0, "flip-v"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setPictureFlip(Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_1
    const-string v0, "off"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setPictureFlip(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unlockCurrentWhiteBalance()V
    .locals 5

    .prologue
    .line 365
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 366
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    .line 367
    .local v0, parameters:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v3, "pref_camera_whitebalance_key"

    const v4, 0x7f0d007a

    invoke-virtual {p0, v4}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, whiteBalance:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/camera_adapter/CameraM3W;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 372
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 374
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 375
    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 376
    return-void
.end method

.method private updateFlashStateListener()V
    .locals 3

    .prologue
    .line 282
    invoke-static {}, Lcom/android/camera/Device;->isSupportedFlashIconFlicker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const-string v1, "auto"

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local p0
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/camera/CameraManager$CameraProxy;->setMetaDataCallback(Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;)V

    .line 287
    :cond_0
    return-void

    .line 283
    .restart local p0
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected exitWhiteBalanceLockMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 354
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraM3W;->mMeasureWhiteBalanceLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/camera/camera_adapter/CameraM3W;->mMeasureWhiteBalanceLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 356
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetWhiteBalance()V

    .line 357
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/SettingButton;->setEnabled(Z)V

    .line 358
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingsStatusBar:Lcom/android/camera/ui/SettingsStatusBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/SettingsStatusBar;->updateOnScreenIndicators()V

    .line 361
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiFaceBeautyValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v1, "pref_camera_multiple_face_beauty_key"

    const v2, 0x7f0d025d

    invoke-virtual {p0, v2}, Lcom/android/camera/camera_adapter/CameraM3W;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSettingButtonEnaled()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraM3W;->mMeasureWhiteBalanceLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->getSettingButtonEnaled()Z

    move-result v0

    goto :goto_0
.end method

.method public getSupportedSettingKeys()Ljava/util/List;
    .locals 3
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
    .line 35
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraM3W;->isBackCamera()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraM3W;->getSimpleLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraM3W;->isBackCamera()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraM3W;->getProfessionalLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraM3W;->mIsLongShotMode:Z

    return v0
.end method

.method public isSupportManualExposure()Z
    .locals 1

    .prologue
    .line 526
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 1

    .prologue
    .line 299
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraM3W;->isFlashOnWhenCapture()Z

    move-result v0

    return v0
.end method

.method protected needSetupPreview()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mMutliSnapStopRequest:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Lcom/android/camera/Camera;Landroid/view/View;)V
    .locals 0
    .parameter "activity"
    .parameter "frame"

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/android/camera/module/CameraModule;->onCreate(Lcom/android/camera/Camera;Landroid/view/View;)V

    .line 30
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraM3W;->initMeasureWhiteBalanceUI()V

    .line 31
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 255
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-static {p1, v1}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    .line 260
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 262
    .local v0, orientationCompensation:I
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 263
    iput v0, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    .line 264
    iget v1, p0, Lcom/android/camera/module/BaseModule;->mOrientationCompensation:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/camera_adapter/CameraM3W;->setOrientationIndicator(IZ)V

    .line 265
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/camera_adapter/CameraM3W;->mCameraState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "xiaomi-preview-rotation"

    iget v3, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 267
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/camera/module/CameraModule;->onSettingValueChanged(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const-string v1, "pref_qc_focus_position_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    .line 48
    .local v0, parameters:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFocusPosition(I)V

    .line 49
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 50
    .end local v0           #parameters:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    :cond_2
    const-string v1, "pref_qc_manual_whitebalance_k_value_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    .line 52
    .restart local v0       #parameters:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setWBManualCCT(I)V

    .line 53
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v0}, Lcom/android/camera/CameraManager$CameraProxy;->setParametersAsync(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 54
    .end local v0           #parameters:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    :cond_3
    const-string v1, "pref_qc_measure_whitebalance_value_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 55
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraM3W;->unlockCurrentWhiteBalance()V

    .line 56
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraM3W;->entertWhiteBalanceLockMode()V

    goto :goto_0

    .line 57
    :cond_4
    const-string v1, "pref_camera_hdr_type_key"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHdr()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 59
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraM3W;->onAeBracketHdrClick()V

    .line 60
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    const-string v2, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/SettingView;->setCurrentMode(Ljava/lang/String;)V

    .line 61
    const-string v1, "pref_camera_ae_bracket_hdr_key"

    iput-object v1, p0, Lcom/android/camera/module/BaseModule;->mCurrentSimpleLayoutMode:Ljava/lang/String;

    goto :goto_0

    .line 62
    :cond_5
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isBurstShoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/camera/camera_adapter/CameraM3W;->setCameraParameters(I)V

    goto :goto_0
.end method

.method protected prepareCapture()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    .line 338
    .local v0, parameter:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraM3W;->setPictureFlipIfNeed(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V

    .line 339
    return-void
.end method

.method public scanQRCodeEnabled()Z
    .locals 1

    .prologue
    .line 309
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->scanQRCodeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/camera_adapter/CameraM3W;->mMeasureWhiteBalanceLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .parameter "parameters"
    .parameter "value"

    .prologue
    .line 242
    check-cast p1, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setAutoExposure(Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method protected updateCameraParametersInitialize()V
    .locals 4

    .prologue
    .line 219
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersInitialize()V

    .line 222
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getPhotoPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I

    move-result-object v0

    .line 223
    .local v0, fpsRange:[I
    sget-boolean v1, Lcom/android/camera/Device;->IS_MI4:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 228
    :cond_0
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 275
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    instance-of v0, v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraM3W;->qcomUpdateCameraParametersPreference(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V

    .line 277
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraM3W;->updateFlashStateListener()V

    .line 279
    :cond_0
    return-void
.end method
