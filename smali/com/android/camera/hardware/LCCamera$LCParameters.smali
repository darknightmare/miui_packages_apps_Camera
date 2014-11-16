.class public Lcom/android/camera/hardware/LCCamera$LCParameters;
.super Lcom/android/camera/hardware/CameraHardware$HardwareParameters;
.source "LCCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/LCCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LCParameters"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/hardware/LCCamera;


# direct methods
.method public constructor <init>(Lcom/android/camera/hardware/LCCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/camera/hardware/LCCamera$LCParameters;->this$0:Lcom/android/camera/hardware/LCCamera;

    invoke-direct {p0, p1}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;-><init>(Lcom/android/camera/hardware/CameraHardware;)V

    return-void
.end method


# virtual methods
.method public getPictureFlip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/LCCamera$LCParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .line 56
    const-string v1, "iso-mode-values"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, str:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/hardware/LCCamera$LCParameters;->split(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public getZslSupported()Z
    .locals 2

    .prologue
    .line 74
    const-string v0, "true"

    const-string v1, "zsl-supported"

    invoke-virtual {p0, v1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAutoExposure(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 102
    const-string v0, "metering"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setBurstShotNum(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 90
    const-string v0, "zsl-num"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public setContrast(Ljava/lang/String;)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 82
    const-string v0, "contrast"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public setISOValue(Ljava/lang/String;)V
    .locals 1
    .parameter "iso"

    .prologue
    .line 61
    const-string v0, "iso"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public setPictureFlip(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 94
    const-string v0, "snapshot-picture-flip"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setSaturation(Ljava/lang/String;)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 78
    const-string v0, "saturation"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public setSharpness(Ljava/lang/String;)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 86
    const-string v0, "sharpness"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public setZSLMode(Ljava/lang/String;)V
    .locals 1
    .parameter "zsl"

    .prologue
    .line 70
    const-string v0, "zsl"

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/hardware/LCCamera$LCParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method
