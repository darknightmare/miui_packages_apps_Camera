.class public Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "DrawMixedAttribute.java"


# instance fields
.field public mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field public mHeight:F

.field public mRatio:F

.field public mToColor:I

.field public mWidth:F

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/BasicTexture;IFFFFF)V
    .locals 1
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 15
    iput p4, p0, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mX:F

    .line 16
    iput p5, p0, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mY:F

    .line 17
    iput p6, p0, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mWidth:F

    .line 18
    iput p7, p0, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mHeight:F

    .line 19
    iput-object p1, p0, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 20
    iput p2, p0, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;->mToColor:I

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    .line 22
    return-void
.end method
