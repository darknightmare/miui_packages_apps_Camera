.class public Lcom/android/camera/PanoProgressBar;
.super Landroid/widget/ImageView;
.source "PanoProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;
    }
.end annotation


# instance fields
.field private mDirection:I

.field private mDoneAreaNinePatch:Landroid/graphics/NinePatch;

.field private mDrawBounds:Landroid/graphics/RectF;

.field private mHeight:F

.field private mIndicatorBitmap:Landroid/graphics/Bitmap;

.field private mIndicatorWidth:F

.field private mLeftMostProgress:F

.field private mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

.field private mMaxProgress:F

.field private mProgress:F

.field private mProgressOffset:F

.field private mRightIncreasing:Z

.field private mRightMostProgress:F

.field private mWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 35
    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    .line 36
    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 37
    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 38
    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 39
    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    .line 40
    iput v3, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    .line 46
    iput-object v4, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .line 47
    iput-boolean v3, p0, Lcom/android/camera/PanoProgressBar;->mRightIncreasing:Z

    .line 56
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02014e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorBitmap:Landroid/graphics/Bitmap;

    .line 58
    iget-object v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020148

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 62
    .local v1, npChunk:[B
    if-eqz v1, :cond_0

    .line 63
    new-instance v2, Landroid/graphics/NinePatch;

    invoke-direct {v2, v0, v1, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaNinePatch:Landroid/graphics/NinePatch;

    .line 65
    :cond_0
    return-void
.end method

.method private setDirection(I)V
    .locals 2
    .parameter "direction"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eq v0, p1, :cond_1

    .line 73
    iput p1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    .line 74
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    invoke-interface {v0, v1}, Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;->onDirectionChange(I)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 157
    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaNinePatch:Landroid/graphics/NinePatch;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/camera/PanoProgressBar;->mDoneAreaNinePatch:Landroid/graphics/NinePatch;

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v7

    iget v5, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    sub-float/2addr v5, v7

    iget-object v6, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, p1, v2}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 169
    :cond_0
    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 170
    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    sub-float/2addr v1, v2

    invoke-static {v1, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 174
    .local v0, l:F
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorBitmap:Landroid/graphics/Bitmap;

    sub-float v2, v0, v7

    iget-object v3, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v7

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 181
    .end local v0           #l:F
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 182
    return-void

    .line 172
    :cond_2
    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iget v3, p0, Lcom/android/camera/PanoProgressBar;->mIndicatorWidth:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .restart local v0       #l:F
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v3, 0x0

    .line 95
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    .line 96
    int-to-float v0, p2

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mHeight:F

    .line 97
    iget-boolean v0, p0, Lcom/android/camera/PanoProgressBar;->mRightIncreasing:Z

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/PanoProgressBar;->mDrawBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    sub-float/2addr v1, v3

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mHeight:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 99
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 150
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 153
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 102
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    .line 103
    return-void
.end method

.method public setOnDirectionChangeListener(Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/PanoProgressBar;->mListener:Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;

    .line 69
    return-void
.end method

.method public setProgress(I)V
    .locals 5
    .parameter "progress"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 124
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-nez v0, :cond_0

    .line 125
    if-le p1, v4, :cond_4

    .line 126
    invoke-virtual {p0, v3}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    .line 132
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-eqz v0, :cond_3

    .line 133
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mMaxProgress:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 135
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    .line 136
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-ne v0, v4, :cond_1

    .line 138
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 140
    :cond_1
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mDirection:I

    if-ne v0, v3, :cond_2

    .line 142
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    iget v1, p0, Lcom/android/camera/PanoProgressBar;->mProgress:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 146
    :cond_3
    return-void

    .line 127
    :cond_4
    const/4 v0, -0x2

    if-ge p1, v0, :cond_0

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/PanoProgressBar;->setRightIncreasing(Z)V

    goto :goto_0
.end method

.method public setRightIncreasing(Z)V
    .locals 1
    .parameter "rightIncreasing"

    .prologue
    const/4 v0, 0x0

    .line 106
    if-eqz p1, :cond_0

    .line 107
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 108
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 109
    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 110
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    .line 117
    :goto_0
    iput-boolean p1, p0, Lcom/android/camera/PanoProgressBar;->mRightIncreasing:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/camera/PanoProgressBar;->invalidate()V

    .line 119
    return-void

    .line 112
    :cond_0
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mLeftMostProgress:F

    .line 113
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mRightMostProgress:F

    .line 114
    iget v0, p0, Lcom/android/camera/PanoProgressBar;->mWidth:F

    iput v0, p0, Lcom/android/camera/PanoProgressBar;->mProgressOffset:F

    .line 115
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PanoProgressBar;->setDirection(I)V

    goto :goto_0
.end method
