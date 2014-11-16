.class public Lcom/android/camera/hardware/QcomCamera$QcomParameters;
.super Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
.source "QcomCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/QcomCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QcomParameters"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/hardware/QcomCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/QcomCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->this$0:Lcom/android/camera/hardware/QcomCamera;

    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;-><init>(Lcom/android/camera/hardware/CameraHardware;)V

    return-void
.end method


# virtual methods
.method public getChromaFlash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    const-string v0, "chroma-flash"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFocusPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    const-string v0, "current-focus-position"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    const-string v0, "exposure-time"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxContrast()I
    .locals 1

    .prologue
    .line 317
    const-string v0, "max-contrast"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxExposureTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    const-string v0, "max-exposure-time"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSaturation()I
    .locals 1

    .prologue
    .line 305
    const-string v0, "max-saturation"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxSharpness()I
    .locals 1

    .prologue
    .line 329
    const-string v0, "max-sharpness"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMinExposureTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const-string v0, "min-exposure-time"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureFlip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnapsNumPerShutter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    const-string v0, "num-snaps-per-shutter"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedDenoiseModes()Ljava/util/List;
    .locals 2
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
    .line 287
    const-string v1, "denoise-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedIsoValues()Ljava/util/List;
    .locals 2
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
    .line 296
    const-string v1, "iso-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedTouchAfAec()Ljava/util/List;
    .locals 2
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
    .line 341
    const-string v1, "touch-af-aec-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedVideoHighFrameRateModes()Ljava/util/List;
    .locals 2
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
    .line 395
    const-string v1, "video-hfr-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .locals 2
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
    .line 217
    invoke-super {p0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    .line 218
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/android/camera/Device;->isSupportedManualFunction()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    const-string v1, "manual-cct"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 221
    const-string v1, "measure"

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    return-object v0
.end method

.method public getUbiFocus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    const-string v0, "af-bracket"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHighFrameRate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    const-string v0, "video-hfr"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWBCurrentCCT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, "wb-current-cct"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVideoStabilizationSupported()Z
    .locals 1

    .prologue
    .line 367
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 370
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->isVideoStabilizationSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public setAoHDR(Ljava/lang/String;)V
    .locals 1
    .parameter "aoHdrValue"

    .prologue
    .line 129
    const-string v0, "snapshot-hdr"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public setAutoExposure(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 275
    const-string v0, "auto-exposure"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public setChromaFlash(Ljava/lang/String;)V
    .locals 1
    .parameter "chromaFlash"

    .prologue
    .line 383
    const-string v0, "chroma-flash"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public setContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 321
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxContrast()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 322
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Contrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_1
    const-string v0, "contrast"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public setDenoise(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 292
    const-string v0, "denoise"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public setExposureTime(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 271
    const-string v0, "exposure-time"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public setFaceDetectionMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 350
    const-string v0, "face-detection"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 207
    const-string v0, "manual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFocusPosition(I)V

    .line 212
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setFocusMode(Ljava/lang/String;)V

    .line 213
    return-void

    .line 209
    :cond_1
    const-string v0, "lock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    const-string p1, "auto"

    goto :goto_0
.end method

.method public setFocusPosition(I)V
    .locals 1
    .parameter "postion"

    .prologue
    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setFocusPosition(II)V

    .line 247
    return-void
.end method

.method public setFocusPosition(II)V
    .locals 2
    .parameter "type"
    .parameter "pos"

    .prologue
    .line 250
    const-string v0, "manual-focus-pos-type"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v0, "manual-focus-position"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public setHandNight(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 193
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, v:Ljava/lang/String;
    const-string v1, "morpho-hht"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public setISOValue(Ljava/lang/String;)V
    .locals 1
    .parameter "iso"

    .prologue
    .line 301
    const-string v0, "iso"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    return-void
.end method

.method public setMorphoHDR(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 143
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, v:Ljava/lang/String;
    const-string v1, "morpho-hdr"

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public setMultiFaceBeautify(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 179
    const-string v0, "xiaomi-multi-face-beautify"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public setPictureFlip(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 279
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method public setSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 309
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSaturation()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Saturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_1
    const-string v0, "saturation"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public setSharpness(I)V
    .locals 3
    .parameter "sharpness"

    .prologue
    .line 333
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxSharpness()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 334
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Sharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_1
    const-string v0, "sharpness"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public setStillBeautify(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 151
    const-string v0, "xiaomi-still-beautify-values"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public setTimeWatermark(Ljava/lang/String;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 165
    const-string v0, "watermark"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public setTouchAfAec(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 346
    const-string v0, "touch-af-aec"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public setUbiFocus(Ljava/lang/String;)V
    .locals 1
    .parameter "ubiFocusMode"

    .prologue
    .line 375
    const-string v0, "af-bracket"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public setVideoHDR(Ljava/lang/String;)V
    .locals 1
    .parameter "aoHdrValue"

    .prologue
    .line 136
    const-string v0, "video-hdr"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setVideoHighFrameRate(Ljava/lang/String;)V
    .locals 1
    .parameter "hfr"

    .prologue
    .line 404
    const-string v0, "video-hfr"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public setWBManualCCT(I)V
    .locals 2
    .parameter "cct"

    .prologue
    .line 238
    const-string v0, "wb-manual-cct"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 229
    const-string v0, "manual-cct"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->setWBManualCCT(I)V

    .line 234
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 235
    return-void

    .line 231
    :cond_1
    const-string v0, "measure"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const-string p1, "auto"

    goto :goto_0
.end method

.method public setZSLMode(Ljava/lang/String;)V
    .locals 1
    .parameter "zsl"

    .prologue
    .line 354
    const-string v0, "zsl"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method
