.class public Lcom/android/camera/effect/draw_mode/FillRectAttribute;
.super Lcom/android/camera/effect/draw_mode/DrawAttribute;
.source "FillRectAttribute.java"


# instance fields
.field public mColor:I

.field public mHeight:F

.field public mWidth:F

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "color"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/camera/effect/draw_mode/DrawAttribute;-><init>()V

    .line 11
    iput p1, p0, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mX:F

    .line 12
    iput p2, p0, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mY:F

    .line 13
    iput p3, p0, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mWidth:F

    .line 14
    iput p4, p0, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mHeight:F

    .line 15
    iput p5, p0, Lcom/android/camera/effect/draw_mode/FillRectAttribute;->mColor:I

    .line 16
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/effect/draw_mode/DrawAttribute;->mTarget:I

    .line 17
    return-void
.end method
