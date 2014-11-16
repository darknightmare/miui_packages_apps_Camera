.class public abstract Lcom/android/camera/ui/FrameView;
.super Landroid/view/View;
.source "FrameView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private final LOGV:Z

.field protected mDisplayOrientation:I

.field protected mIsBigEnoughRect:Z

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mMirror:Z

.field protected mOrientation:I

.field protected mPause:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->LOGV:Z

    .line 25
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FrameView;->mMatrix:Landroid/graphics/Matrix;

    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getFocusRect()Landroid/graphics/RectF;
.end method

.method public isFrameAreaStable()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedExposure()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mIsBigEnoughRect:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    .line 79
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    .line 83
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/camera/ui/FrameView;->mDisplayOrientation:I

    .line 47
    const-string v0, "FrameView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public setFaces([Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)Z
    .locals 1
    .parameter "faces"

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public setGenderAgeFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "show"

    .prologue
    .line 85
    return-void
.end method

.method public setMirror(Z)V
    .locals 3
    .parameter "mirror"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/camera/ui/FrameView;->mMirror:Z

    .line 58
    const-string v0, "FrameView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMirror="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/camera/ui/FrameView;->mOrientation:I

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/FrameView;->invalidate()V

    .line 54
    return-void
.end method

.method public showFail(ZZ)V
    .locals 0
    .parameter "timeout"
    .parameter "isTouchFocus"

    .prologue
    .line 72
    return-void
.end method

.method public showStart(ZZ)V
    .locals 0
    .parameter "timeout"
    .parameter "isTouchFocus"

    .prologue
    .line 66
    return-void
.end method

.method public showSuccess(ZZ)V
    .locals 0
    .parameter "timeout"
    .parameter "isTouchFocus"

    .prologue
    .line 69
    return-void
.end method
