.class public Lcom/android/gallery3d/ui/BitmapScreenNail;
.super Ljava/lang/Object;
.source "BitmapScreenNail.java"

# interfaces
.implements Lcom/android/gallery3d/ui/ScreenNail;


# instance fields
.field private mAnimationStartTime:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/BitmapScreenNail;->setSize(II)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    .line 57
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    .line 58
    iput-object p1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 61
    return-void
.end method

.method private getRatio()F
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 198
    invoke-static {}, Lcom/android/gallery3d/ui/BitmapScreenNail;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x4334

    div-float v0, v1, v2

    .line 199
    .local v0, r:F
    sub-float v1, v5, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method private static now()J
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Lcom/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private setSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 68
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 69
    :cond_0
    const/16 p1, 0x280

    .line 70
    const/16 p2, 0x1e0

    .line 72
    :cond_1
    const/high16 v1, 0x3f80

    const/high16 v2, 0x4420

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 73
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    .line 74
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    .line 75
    return-void
.end method


# virtual methods
.method public combine(Lcom/android/gallery3d/ui/ScreenNail;)Lcom/android/gallery3d/ui/ScreenNail;
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 80
    if-nez p1, :cond_0

    .line 108
    .end local p0
    :goto_0
    return-object p0

    .line 84
    .restart local p0
    :cond_0
    instance-of v1, p1, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-nez v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    move-object p0, p1

    .line 86
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 91
    check-cast v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    .line 92
    .local v0, newer:Lcom/android/gallery3d/ui/BitmapScreenNail;
    iget v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    .line 93
    iget v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    iput v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    .line 94
    iget-object v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 95
    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 96
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 98
    :cond_2
    iget-object v1, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 99
    iput-object v3, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 101
    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v1, :cond_3

    .line 102
    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 103
    iput-object v3, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 107
    :cond_3
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 146
    iget-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 147
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 149
    :cond_0
    new-instance v0, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    const v5, -0xddddde

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 167
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 157
    :cond_2
    iget-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 158
    invoke-static {}, Lcom/android/gallery3d/ui/BitmapScreenNail;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    .line 161
    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;

    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    const v2, -0xddddde

    invoke-direct {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->getRatio()F

    move-result v3

    int-to-float v4, p2

    int-to-float v5, p3

    int-to-float v6, p4

    int-to-float v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/effect/draw_mode/DrawMixedAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IFFFFF)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_0

    .line 165
    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BitmapTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/android/camera/effect/draw_mode/FillRectAttribute;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    const v5, -0xddddde

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/FillRectAttribute;-><init>(FFFFI)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 182
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Lcom/android/gallery3d/ui/BitmapTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 181
    :cond_1
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;

    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v0, v1, p2, p3}, Lcom/android/camera/effect/draw_mode/DrawRectFTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 185
    iget-wide v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 190
    :goto_0
    return v0

    .line 186
    :cond_0
    invoke-static {}, Lcom/android/gallery3d/ui/BitmapScreenNail;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xb4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 187
    const-wide/16 v1, -0x3

    iput-wide v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mAnimationStartTime:J

    goto :goto_0

    .line 190
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowingPlaceholder()Z
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapTexture;->recycle()V

    .line 135
    iput-object v2, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 138
    invoke-static {}, Lcom/android/gallery3d/data/MediaItem;->getThumbPool()Lcom/android/gallery3d/data/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 139
    iput-object v2, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 141
    :cond_1
    return-void
.end method

.method public updatePlaceholderSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/gallery3d/ui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/BitmapScreenNail;->setSize(II)V

    goto :goto_0
.end method
