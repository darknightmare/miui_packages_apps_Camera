.class public abstract Lcom/android/camera/effect/renders/ConvolutionEffectRender;
.super Lcom/android/camera/effect/renders/PixelEffectRender;
.source "ConvolutionEffectRender.java"


# instance fields
.field protected mStepX:F

.field protected mStepY:F

.field protected mUniformStepH:I


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .parameter "canvas"
    .parameter "id"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected initShader()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShader()V

    .line 22
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    const-string v1, "uStep"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mUniformStepH:I

    .line 23
    return-void
.end method

.method protected initShaderValue(Z)V
    .locals 3
    .parameter "isSnapShot"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/PixelEffectRender;->initShaderValue(Z)V

    .line 44
    iget v0, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mUniformStepH:I

    iget v1, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepX:F

    iget v2, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepY:F

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 45
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 5
    .parameter "w"
    .parameter "h"

    .prologue
    const/high16 v4, 0x4020

    const/high16 v3, 0x3fc0

    const/high16 v2, 0x3f80

    .line 27
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/PixelEffectRender;->setPreviewSize(II)V

    .line 28
    if-le p1, p2, :cond_0

    move v0, p2

    .line 29
    .local v0, d:I
    :goto_0
    const/16 v1, 0x438

    if-le v0, v1, :cond_1

    .line 30
    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    int-to-float v1, v1

    div-float v1, v4, v1

    iput v1, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepX:F

    .line 31
    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    int-to-float v1, v1

    div-float v1, v4, v1

    iput v1, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepY:F

    .line 39
    :goto_1
    return-void

    .end local v0           #d:I
    :cond_0
    move v0, p1

    .line 28
    goto :goto_0

    .line 32
    .restart local v0       #d:I
    :cond_1
    const/16 v1, 0x2d0

    if-le v0, v1, :cond_2

    .line 33
    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    int-to-float v1, v1

    div-float v1, v3, v1

    iput v1, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepX:F

    .line 34
    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    int-to-float v1, v1

    div-float v1, v3, v1

    iput v1, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepY:F

    goto :goto_1

    .line 36
    :cond_2
    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewWidth:I

    int-to-float v1, v1

    div-float v1, v2, v1

    iput v1, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepX:F

    .line 37
    iget v1, p0, Lcom/android/camera/effect/renders/Render;->mPreviewHeight:I

    int-to-float v1, v1

    div-float v1, v2, v1

    iput v1, p0, Lcom/android/camera/effect/renders/ConvolutionEffectRender;->mStepY:F

    goto :goto_1
.end method
