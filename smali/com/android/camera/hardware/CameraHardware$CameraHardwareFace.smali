.class public Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
.super Ljava/lang/Object;
.source "CameraHardware.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/hardware/CameraHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraHardwareFace"
.end annotation


# instance fields
.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->id:I

    .line 185
    iput-object v1, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->leftEye:Landroid/graphics/Point;

    .line 186
    iput-object v1, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rightEye:Landroid/graphics/Point;

    .line 187
    iput-object v1, p0, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->mouth:Landroid/graphics/Point;

    .line 190
    return-void
.end method

.method public static convertCameraHardwareFace([Landroid/hardware/Camera$Face;)[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    .locals 4
    .parameter "faces"

    .prologue
    .line 193
    array-length v2, p0

    new-array v0, v2, [Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .line 194
    .local v0, cameraFaces:[Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 195
    new-instance v2, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    invoke-direct {v2}, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;-><init>()V

    aput-object v2, v0, v1

    .line 196
    aget-object v2, v0, v1

    aget-object v3, p0, v1

    invoke-static {v2, v3}, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->copyFace(Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;Landroid/hardware/Camera$Face;)V

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    :cond_0
    return-object v0
.end method

.method protected static copyFace(Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;Landroid/hardware/Camera$Face;)V
    .locals 8
    .parameter "cameraface"
    .parameter "face"

    .prologue
    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 204
    .local v2, fs:[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 206
    .local v1, f:Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 207
    .local v5, localField:Ljava/lang/reflect/Field;
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v5           #localField:Ljava/lang/reflect/Field;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    .end local v1           #f:Ljava/lang/reflect/Field;
    :cond_0
    return-void

    .line 210
    .restart local v1       #f:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 209
    :catch_1
    move-exception v6

    goto :goto_1

    .line 208
    :catch_2
    move-exception v6

    goto :goto_1
.end method
