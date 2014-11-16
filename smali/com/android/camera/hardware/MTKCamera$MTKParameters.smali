.class public Lcom/android/camera/hardware/MTKCamera$MTKParameters;
.super Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
.source "MTKCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/MTKCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MTKParameters"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/hardware/MTKCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/MTKCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->this$0:Lcom/android/camera/hardware/MTKCamera;

    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;-><init>(Lcom/android/camera/hardware/CameraHardware;)V

    return-void
.end method


# virtual methods
.method public getPictureFlip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedCaptureMode()Ljava/util/List;
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
    .line 111
    const-string v1, "cap-mode-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

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
    .line 61
    const-string v1, "iso-speed-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public setBurstShotNum(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 95
    const-string v0, "burst-num"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;I)V

    .line 96
    return-void
.end method

.method public setCameraMode(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 91
    const-string v0, "mtk-cam-mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public setCaptureMode(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 99
    const-string v0, "cap-mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setContrast(Ljava/lang/String;)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 83
    const-string v0, "contrast"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setISOValue(Ljava/lang/String;)V
    .locals 1
    .parameter "iso"

    .prologue
    .line 66
    const-string v0, "iso-speed"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public setPictureFlip(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 103
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public setSaturation(Ljava/lang/String;)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 79
    const-string v0, "saturation"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setSharpness(Ljava/lang/String;)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 87
    const-string v0, "edge"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public setZSLMode(Ljava/lang/String;)V
    .locals 1
    .parameter "zsl"

    .prologue
    .line 75
    const-string v0, "zsd-mode"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/MTKCamera$MTKParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method
