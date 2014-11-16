.class public Lcom/android/camera/camera_adapter/CameraHMQC;
.super Lcom/android/camera/module/CameraModule;
.source "CameraHMQC.java"


# instance fields
.field private mIsLongShotMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraHMQC;->mIsLongShotMode:Z

    return-void
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
    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 199
    if-nez p2, :cond_0

    .line 200
    const-string v1, "pref_camera_panoramamode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    const-string v1, "pref_camera_ae_bracket_hdr_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    const-string v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraHMQC;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    const-string v1, "pref_camera_focus_mode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    const-string v1, "pref_qc_camera_iso_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    sget-boolean v1, Lcom/android/camera/Device;->IS_HM2A:Z

    if-eqz v1, :cond_1

    .line 211
    const-string v1, "pref_camera_scenemode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_2
    :goto_0
    return-object v0

    .line 217
    :cond_3
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraHMQC;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    const-string v1, "pref_qc_camera_iso_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_2

    .line 223
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
    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 233
    if-nez p2, :cond_0

    .line 234
    const-string v1, "pref_camera_panoramamode_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_0
    const-string v1, "pref_audio_capture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraHMQC;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v1, "pref_camera_ae_bracket_hdr_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v1, "pref_camera_hand_night_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_1
    :goto_0
    return-object v0

    .line 245
    :cond_2
    const-string v1, "pref_camera_countdown_key"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {}, Lcom/android/camera/camera_adapter/CameraHMQC;->getColorEffectKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getShowBeforeKeyguard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    const-string v1, "pref_settings"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getZSL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3LTE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraHMQC;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    const-string v0, "off"

    .line 192
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "on"

    goto :goto_0
.end method

.method private qcomUpdateCameraParametersPreference(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V
    .locals 13
    .parameter "parameters"

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedDenoiseModes()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 32
    iget-boolean v10, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v10, :cond_9

    const-string v0, "denoise-off"

    .line 34
    .local v0, Denoise:Ljava/lang/String;
    :goto_0
    const-string v10, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Denoise value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setDenoise(Ljava/lang/String;)V

    .line 38
    .end local v0           #Denoise:Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_qc_camera_iso_key"

    const v12, 0x7f0d00d1

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraHMQC;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, iso:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/camera/camera_adapter/CameraHMQC;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 42
    const-string v10, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ISO value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p1, v3}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setISOValue(Ljava/lang/String;)V

    .line 47
    :cond_1
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_qc_camera_saturation_key"

    const v12, 0x7f0d00b3

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraHMQC;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, saturationStr:Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSaturation()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 51
    .local v4, saturation:I
    if-ltz v4, :cond_2

    .line 52
    const-string v10, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Saturation value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p1, v4}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setSaturation(I)V

    .line 57
    :cond_2
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_qc_camera_contrast_key"

    const v12, 0x7f0d00af

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraHMQC;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, contrastStr:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxContrast()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 61
    .local v1, contrast:I
    if-ltz v1, :cond_3

    .line 62
    const-string v10, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Contrast value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p1, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setContrast(I)V

    .line 67
    :cond_3
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_qc_camera_sharpness_key"

    const v12, 0x7f0d00b7

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraHMQC;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 70
    .local v7, sharpnessStr:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSharpness()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 71
    .local v6, sharpness:I
    if-ltz v6, :cond_4

    .line 72
    const-string v10, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sharpness value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p1, v6}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setSharpness(I)V

    .line 76
    :cond_4
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_camera_touchafaec_key"

    const v12, 0x7f0d00a2

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraHMQC;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 79
    .local v8, touchAfAec:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSupportedTouchAfAec()Ljava/util/List;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/camera/camera_adapter/CameraHMQC;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 80
    const-string v10, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TouchAfAec value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p1, v8}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setTouchAfAec(Ljava/lang/String;)V

    .line 84
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/camera/camera_adapter/CameraHMQC;->setPictureFlipIfNeed(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V

    .line 86
    iget-boolean v10, p0, Lcom/android/camera/module/CameraModule;->mFaceDetectionEnabled:Z

    if-eqz v10, :cond_a

    .line 87
    const-string v10, "on"

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFaceDetectionMode(Ljava/lang/String;)V

    .line 93
    :goto_1
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v10

    if-nez v10, :cond_d

    .line 94
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 95
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setHandNight(Z)V

    .line 96
    const-string v10, "Camera"

    const-string v11, "Hand Nigh = true"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraHMQC;->getZSL()Ljava/lang/String;

    move-result-object v9

    .line 109
    .local v9, zsl:Ljava/lang/String;
    const-string v10, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ZSL value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v10, "on"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 111
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    .line 112
    const-string v10, "on"

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setZSLMode(Ljava/lang/String;)V

    .line 118
    :cond_7
    :goto_3
    iget-boolean v10, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    if-eqz v10, :cond_f

    iget-boolean v10, p0, Lcom/android/camera/module/CameraModule;->mMultiSnapStatus:Z

    if-eqz v10, :cond_f

    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraHMQC;->mIsLongShotMode:Z

    if-nez v10, :cond_f

    .line 119
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraHMQC;->mIsLongShotMode:Z

    .line 120
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    .line 125
    :cond_8
    :goto_4
    const-string v10, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Long Shot mode value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraHMQC;->isLongShotMode()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void

    .line 32
    .end local v1           #contrast:I
    .end local v2           #contrastStr:Ljava/lang/String;
    .end local v3           #iso:Ljava/lang/String;
    .end local v4           #saturation:I
    .end local v5           #saturationStr:Ljava/lang/String;
    .end local v6           #sharpness:I
    .end local v7           #sharpnessStr:Ljava/lang/String;
    .end local v8           #touchAfAec:Ljava/lang/String;
    .end local v9           #zsl:Ljava/lang/String;
    :cond_9
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const-string v11, "pref_camera_denoise_key"

    const v12, 0x7f0d00d0

    invoke-virtual {p0, v12}, Lcom/android/camera/camera_adapter/CameraHMQC;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 89
    .restart local v1       #contrast:I
    .restart local v2       #contrastStr:Ljava/lang/String;
    .restart local v3       #iso:Ljava/lang/String;
    .restart local v4       #saturation:I
    .restart local v5       #saturationStr:Ljava/lang/String;
    .restart local v6       #sharpness:I
    .restart local v7       #sharpnessStr:Ljava/lang/String;
    .restart local v8       #touchAfAec:Ljava/lang/String;
    :cond_a
    const-string v10, "off"

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFaceDetectionMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 97
    :cond_b
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isRAW()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 98
    const-string v10, "Camera"

    const-string v11, "Raw Data = true"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 99
    :cond_c
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v10}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 100
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setMorphoHDR(Z)V

    .line 101
    const-string v10, "Camera"

    const-string v11, "Morpho HDR = true"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 104
    :cond_d
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setHandNight(Z)V

    .line 105
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setMorphoHDR(Z)V

    goto/16 :goto_2

    .line 113
    .restart local v9       #zsl:Ljava/lang/String;
    :cond_e
    const-string v10, "off"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 114
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    .line 115
    const-string v10, "off"

    invoke-virtual {p1, v10}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setZSLMode(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 121
    :cond_f
    iget-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraHMQC;->mIsLongShotMode:Z

    if-eqz v10, :cond_8

    .line 122
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/camera_adapter/CameraHMQC;->mIsLongShotMode:Z

    .line 123
    iget-object v10, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/camera/CameraManager$CameraProxy;->setLongshotMode(Z)V

    goto/16 :goto_4
.end method

.method private setPictureFlipIfNeed(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V
    .locals 3
    .parameter "parameters"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraHMQC;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isFrontMirror(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/module/BaseModule;->mOrientation:I

    rem-int/lit16 v0, v0, 0xb4

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "flip-h"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setPictureFlip(Ljava/lang/String;)V

    .line 180
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

    .line 181
    return-void

    .line 175
    :cond_0
    const-string v0, "flip-v"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setPictureFlip(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_1
    const-string v0, "off"

    invoke-virtual {p1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setPictureFlip(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
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
    .line 21
    iget-boolean v0, p0, Lcom/android/camera/module/BaseModule;->mIsSimpleLayoutMode:Z

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraHMQC;->isBackCamera()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraHMQC;->getSimpleLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    .line 24
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p0}, Lcom/android/camera/camera_adapter/CameraHMQC;->isBackCamera()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/camera/module/CameraModule;->mIsImageCaptureIntent:Z

    invoke-static {v0, v1, v2}, Lcom/android/camera/camera_adapter/CameraHMQC;->getProfessionalLayoutModeKeys(Lcom/android/camera/Camera;ZZ)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method protected isLongShotMode()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/camera/camera_adapter/CameraHMQC;->mIsLongShotMode:Z

    return v0
.end method

.method protected isSupportSceneMode()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method protected isZeroShotMode()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/camera/module/CameraModule;->mIsZSLMode:Z

    return v0
.end method

.method protected needAutoFocusBeforeCapture()Z
    .locals 4

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, flashMode:Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    iget-object v2, p0, Lcom/android/camera/module/BaseModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "flash-on"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method protected needSetupPreview()Z
    .locals 1

    .prologue
    .line 130
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

.method protected prepareCapture()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraHMQC;->setPictureFlipIfNeed(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V

    .line 186
    return-void
.end method

.method protected setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .parameter "parameters"
    .parameter "value"

    .prologue
    .line 145
    check-cast p1, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setAutoExposure(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method protected updateCameraParametersPreference()V
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/android/camera/module/CameraModule;->updateCameraParametersPreference()V

    .line 156
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    instance-of v0, v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {p0, v0}, Lcom/android/camera/camera_adapter/CameraHMQC;->qcomUpdateCameraParametersPreference(Lcom/android/camera/hardware/QcomCamera$QcomParameters;)V

    .line 159
    :cond_0
    return-void
.end method
