.class public Lcom/android/camera/camera_adapter/VideoHM;
.super Lcom/android/camera/module/VideoModule;
.source "VideoHM.java"


# instance fields
.field private CAMCORDER_CLASS_PATH:Ljava/lang/String;

.field private MEDIARECORDER_CLASS_PATH:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/module/VideoModule;-><init>()V

    .line 15
    const-string v0, "com.mediatek.camcorder.CamcorderProfileEx"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/VideoHM;->CAMCORDER_CLASS_PATH:Ljava/lang/String;

    .line 16
    const-string v0, "com.mediatek.media.MediaRecorderEx"

    iput-object v0, p0, Lcom/android/camera/camera_adapter/VideoHM;->MEDIARECORDER_CLASS_PATH:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected fetchProfile(II)Landroid/media/CamcorderProfile;
    .locals 8
    .parameter "cameraId"
    .parameter "quality"

    .prologue
    .line 34
    invoke-static {}, Lcom/android/camera/Device;->isLeadcorePlatform()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/camera/module/VideoModule;->fetchProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 47
    :goto_0
    return-object v3

    .line 35
    :cond_0
    const/4 v3, 0x0

    .line 37
    .local v3, profile:Landroid/media/CamcorderProfile;
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/camera_adapter/VideoHM;->CAMCORDER_CLASS_PATH:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 38
    .local v1, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v4, "getProfile"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 40
    .local v2, method:Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/media/CamcorderProfile;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 45
    .end local v1           #cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 44
    :catch_1
    move-exception v4

    goto :goto_0

    .line 43
    :catch_2
    move-exception v4

    goto :goto_0

    .line 42
    :catch_3
    move-exception v4

    goto :goto_0

    .line 41
    :catch_4
    move-exception v4

    goto :goto_0
.end method

.method public getDefaultPreferenceId(I)I
    .locals 1
    .parameter "prefId"

    .prologue
    .line 19
    sparse-switch p1, :sswitch_data_0

    .line 25
    invoke-super {p0, p1}, Lcom/android/camera/module/VideoModule;->getDefaultPreferenceId(I)I

    move-result v0

    :goto_0
    return v0

    .line 21
    :sswitch_0
    const v0, 0x7f080002

    goto :goto_0

    .line 23
    :sswitch_1
    const v0, 0x7f0d0021

    goto :goto_0

    .line 19
    :sswitch_data_0
    .sparse-switch
        0x7f080001 -> :sswitch_0
        0x7f0d0020 -> :sswitch_1
    .end sparse-switch
.end method

.method protected pauseMediaRecorder(Landroid/media/MediaRecorder;)V
    .locals 5
    .parameter

    .prologue
    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/camera_adapter/VideoHM;->MEDIARECORDER_CLASS_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 53
    const-string v1, "pause"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/media/MediaRecorder;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 55
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    goto :goto_0

    .line 58
    :catch_2
    move-exception v0

    goto :goto_0

    .line 57
    :catch_3
    move-exception v0

    goto :goto_0

    .line 56
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method protected updateVideoParametersPreference()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/module/BaseModule;->mParameters:Landroid/hardware/Camera$Parameters;

    check-cast v0, Lcom/android/camera/hardware/MTKCamera$MTKParameters;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->setCameraMode(I)V

    .line 30
    invoke-super {p0}, Lcom/android/camera/module/VideoModule;->updateVideoParametersPreference()V

    .line 31
    return-void
.end method
