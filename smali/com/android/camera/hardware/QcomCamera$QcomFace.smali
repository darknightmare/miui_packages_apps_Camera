.class public Lcom/android/camera/hardware/QcomCamera$QcomFace;
.super Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
.source "QcomCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/QcomCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QcomFace"
.end annotation


# instance fields
.field public ageFemale:F

.field public ageMale:F

.field public blinkDetected:I

.field public faceRecognised:I

.field public faceType:I

.field public gender:F

.field public prob:F

.field public smileDegree:I

.field public smileScore:I

.field public t2tStop:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;-><init>()V

    .line 48
    iput v0, p0, Lcom/android/camera/hardware/QcomCamera$QcomFace;->smileDegree:I

    .line 49
    iput v0, p0, Lcom/android/camera/hardware/QcomCamera$QcomFace;->smileScore:I

    .line 50
    iput v0, p0, Lcom/android/camera/hardware/QcomCamera$QcomFace;->blinkDetected:I

    .line 51
    iput v0, p0, Lcom/android/camera/hardware/QcomCamera$QcomFace;->faceRecognised:I

    .line 52
    iput v0, p0, Lcom/android/camera/hardware/QcomCamera$QcomFace;->faceType:I

    .line 53
    iput v0, p0, Lcom/android/camera/hardware/QcomCamera$QcomFace;->t2tStop:I

    .line 56
    return-void
.end method

.method public static convertQcomFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    .locals 4
    .parameter "faces"

    .prologue
    .line 59
    array-length v2, p0

    new-array v1, v2, [Lcom/android/camera/hardware/QcomCamera$QcomFace;

    .line 60
    .local v1, qcomFaces:[Lcom/android/camera/hardware/QcomCamera$QcomFace;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 61
    new-instance v2, Lcom/android/camera/hardware/QcomCamera$QcomFace;

    invoke-direct {v2}, Lcom/android/camera/hardware/QcomCamera$QcomFace;-><init>()V

    aput-object v2, v1, v0

    .line 62
    aget-object v2, v1, v0

    aget-object v3, p0, v0

    invoke-static {v2, v3}, Lcom/android/camera/hardware/QcomCamera$QcomFace;->copyFace(Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;Landroid/hardware/Camera$Face;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    return-object v1
.end method
