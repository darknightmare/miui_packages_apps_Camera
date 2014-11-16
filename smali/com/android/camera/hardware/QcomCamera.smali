.class public Lcom/android/camera/hardware/QcomCamera;
.super Lcom/android/camera/hardware/CameraHardware;
.source "QcomCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/QcomCamera$QcomParameters;,
        Lcom/android/camera/hardware/QcomCamera$QcomFace;
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "cameraId"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware;-><init>(I)V

    .line 11
    return-void
.end method

.method public static open(I)Lcom/android/camera/hardware/QcomCamera;
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 14
    new-instance v0, Lcom/android/camera/hardware/QcomCamera;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/QcomCamera;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getCurrentFocusPosition()I
    .locals 4

    .prologue
    .line 423
    new-instance v1, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {v1, p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;-><init>(Lcom/android/camera/hardware/QcomCamera;)V

    .line 424
    .local v1, p:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParametersString()Ljava/lang/String;

    move-result-object v2

    .line 425
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->unflatten(Ljava/lang/String;)V

    .line 427
    const/4 v0, -0x1

    .line 428
    .local v0, focus_pos:I
    invoke-virtual {v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 429
    invoke-virtual {v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 431
    :cond_0
    return v0
.end method

.method public bridge synthetic getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParameters()Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParameters()Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;-><init>(Lcom/android/camera/hardware/QcomCamera;)V

    .line 32
    .local v0, p:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParametersString()Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 34
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameters is Null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 36
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->unflatten(Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method public getSnapsNum()I
    .locals 4

    .prologue
    .line 436
    new-instance v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;-><init>(Lcom/android/camera/hardware/QcomCamera;)V

    .line 437
    .local v0, p:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParametersString()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->unflatten(Ljava/lang/String;)V

    .line 440
    const/4 v2, 0x1

    .line 441
    .local v2, snapsNum:I
    invoke-virtual {v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSnapsNumPerShutter()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 442
    invoke-virtual {v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getSnapsNumPerShutter()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 444
    :cond_0
    return v2
.end method

.method public getWBCurrentCCT()I
    .locals 4

    .prologue
    .line 410
    new-instance v1, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-direct {v1, p0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;-><init>(Lcom/android/camera/hardware/QcomCamera;)V

    .line 411
    .local v1, p:Lcom/android/camera/hardware/QcomCamera$QcomParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/QcomCamera;->getParametersString()Ljava/lang/String;

    move-result-object v2

    .line 412
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->unflatten(Ljava/lang/String;)V

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, cct:I
    invoke-virtual {v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 416
    invoke-virtual {v1}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 418
    :cond_0
    return v0
.end method
