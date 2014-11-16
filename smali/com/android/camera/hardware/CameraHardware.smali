.class public Lcom/android/camera/hardware/CameraHardware;
.super Landroid/hardware/Camera;
.source "CameraHardware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/CameraHardware$HardwareParameters;,
        Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;,
        Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;
    }
.end annotation


# instance fields
.field private mCameraMetaDataCallback:Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/hardware/Camera;-><init>(I)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/hardware/CameraHardware;->mCameraMetaDataCallback:Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;

    .line 22
    return-void
.end method

.method public static open(I)Lcom/android/camera/hardware/CameraHardware;
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 40
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/android/camera/hardware/QcomCamera;->open(I)Lcom/android/camera/hardware/QcomCamera;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {p0}, Lcom/android/camera/hardware/MTKCamera;->open(I)Lcom/android/camera/hardware/MTKCamera;

    move-result-object v0

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isLeadcorePlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    invoke-static {p0}, Lcom/android/camera/hardware/LCCamera;->open(I)Lcom/android/camera/hardware/LCCamera;

    move-result-object v0

    goto :goto_0

    .line 47
    :cond_2
    new-instance v0, Lcom/android/camera/hardware/CameraHardware;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/CameraHardware;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelContinuousMode()V
    .locals 3

    .prologue
    .line 103
    const-class v0, Landroid/hardware/Camera;

    .line 105
    :try_start_0
    const-string v1, "cancelContinuousShot"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 106
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    goto :goto_0

    .line 108
    :catch_2
    move-exception v0

    goto :goto_0

    .line 107
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public getCurrentFocusPosition()I
    .locals 1

    .prologue
    .line 276
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic getParameters()Landroid/hardware/Camera$Parameters;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/android/camera/hardware/CameraHardware;->getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    .locals 4

    .prologue
    .line 71
    new-instance v0, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    invoke-direct {v0, p0}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;-><init>(Lcom/android/camera/hardware/CameraHardware;)V

    .line 72
    .local v0, p:Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
    invoke-virtual {p0}, Lcom/android/camera/hardware/CameraHardware;->getParametersString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, s:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 74
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Parameters is Null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 76
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->unflatten(Ljava/lang/String;)V

    .line 77
    return-object v0
.end method

.method public getSnapsNum()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public getWBCurrentCCT()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public isFocusSuccessful()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 134
    const-class v3, Landroid/hardware/Camera;

    .line 135
    new-instance v0, Ljava/lang/Integer;

    const/4 v4, -0x1

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 137
    :try_start_0
    const-string v4, "getFocusState"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 138
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :goto_0
    sget-boolean v3, Lcom/android/camera/Device;->IS_STABLE:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/camera/Device;->IS_MI4:Z

    if-eqz v3, :cond_1

    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 146
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 149
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 146
    goto :goto_1

    :cond_1
    move v0, v1

    .line 149
    goto :goto_1

    .line 142
    :catch_0
    move-exception v3

    goto :goto_0

    .line 141
    :catch_1
    move-exception v3

    goto :goto_0

    .line 140
    :catch_2
    move-exception v3

    goto :goto_0

    .line 139
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public isNeedFlashOn()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    const-class v3, Landroid/hardware/Camera;

    .line 116
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 118
    :try_start_0
    const-string v4, "getFlashOn"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 119
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    :goto_0
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 127
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 130
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 127
    goto :goto_1

    :cond_1
    move v0, v2

    .line 130
    goto :goto_1

    .line 123
    :catch_0
    move-exception v3

    goto :goto_0

    .line 122
    :catch_1
    move-exception v3

    goto :goto_0

    .line 121
    :catch_2
    move-exception v3

    goto :goto_0

    .line 120
    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public setLongshotMode(Z)V
    .locals 5
    .parameter

    .prologue
    .line 90
    const-class v0, Landroid/hardware/Camera;

    .line 92
    :try_start_0
    const-string v1, "setLongshot"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 94
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    goto :goto_0

    .line 96
    :catch_2
    move-exception v0

    goto :goto_0

    .line 95
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final setMetadataCb(Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 160
    iput-object p1, p0, Lcom/android/camera/hardware/CameraHardware;->mCameraMetaDataCallback:Lcom/android/camera/hardware/CameraHardware$CameraMetaDataCallback;

    .line 161
    const-class v2, Landroid/hardware/Camera;

    .line 164
    :try_start_0
    const-string v3, "native_setMetadataCb"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 166
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 167
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 167
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    goto :goto_1

    .line 170
    :catch_1
    move-exception v0

    goto :goto_1

    .line 169
    :catch_2
    move-exception v0

    goto :goto_1

    .line 168
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 84
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpParameters:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->dump()V

    .line 87
    :cond_0
    return-void
.end method

.method public startObjectTrack(IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 280
    const-class v0, Landroid/hardware/Camera;

    .line 282
    :try_start_0
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startObjectTrack left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v1, "startTrack"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 286
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    goto :goto_0

    .line 289
    :catch_1
    move-exception v0

    goto :goto_0

    .line 288
    :catch_2
    move-exception v0

    goto :goto_0

    .line 287
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public stopObjectTrack()V
    .locals 3

    .prologue
    .line 295
    const-class v0, Landroid/hardware/Camera;

    .line 297
    :try_start_0
    const-string v1, "Camera"

    const-string v2, "stopObjectTrack"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v1, "stopTrack"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 300
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    goto :goto_0

    .line 303
    :catch_1
    move-exception v0

    goto :goto_0

    .line 302
    :catch_2
    move-exception v0

    goto :goto_0

    .line 301
    :catch_3
    move-exception v0

    goto :goto_0
.end method
