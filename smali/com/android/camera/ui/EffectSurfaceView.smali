.class public Lcom/android/camera/ui/EffectSurfaceView;
.super Landroid/view/View;
.source "EffectSurfaceView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCacheIndex:I

.field private mDstRect:Landroid/graphics/Rect;

.field private mOrientation:I

.field private mPadding:I

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/EffectSurfaceView;->mPadding:I

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/EffectSurfaceView;->mPadding:I

    .line 27
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 44
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget v2, p0, Lcom/android/camera/ui/EffectSurfaceView;->mCacheIndex:I

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->getCache(I)Lcom/android/camera/effect/EffectController$SurfaceCache;

    move-result-object v8

    .line 45
    .local v8, cache:Lcom/android/camera/effect/EffectController$SurfaceCache;
    if-eqz v8, :cond_1

    .line 46
    monitor-enter v8

    .line 47
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 48
    iget-object v0, v8, Lcom/android/camera/effect/EffectController$SurfaceCache;->mCache:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v1

    .line 49
    .local v1, colors:[I
    iget-object v0, p0, Lcom/android/camera/ui/EffectSurfaceView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    sget v5, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/ui/EffectSurfaceView;->mSrcRect:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/camera/ui/EffectSurfaceView;->mPadding:I

    iget v3, p0, Lcom/android/camera/ui/EffectSurfaceView;->mPadding:I

    sget v4, Lcom/android/camera/effect/EffectController;->SURFACE_WIDTH:I

    iget v5, p0, Lcom/android/camera/ui/EffectSurfaceView;->mPadding:I

    sub-int/2addr v4, v5

    sget v5, Lcom/android/camera/effect/EffectController;->SURFACE_WIDTH:I

    iget v6, p0, Lcom/android/camera/ui/EffectSurfaceView;->mPadding:I

    sub-int/2addr v5, v6

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/ui/EffectSurfaceView;->mDstRect:Landroid/graphics/Rect;

    .line 55
    sget v0, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    sget v2, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EffectSurfaceView;->mBitmap:Landroid/graphics/Bitmap;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/EffectSurfaceView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    sget v3, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget v6, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    sget v7, Lcom/android/camera/effect/EffectController;->BUFFER_WIDTH:I

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 67
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSurfaceView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSurfaceView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSurfaceView;->getWidth()I

    move-result v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSurfaceView;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/EffectSurfaceView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/camera/ui/EffectSurfaceView;->mSrcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/camera/ui/EffectSurfaceView;->mDstRect:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 71
    monitor-exit v8

    .line 73
    .end local v1           #colors:[I
    :cond_1
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCacheIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 30
    iput p1, p0, Lcom/android/camera/ui/EffectSurfaceView;->mCacheIndex:I

    .line 31
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/camera/ui/EffectSurfaceView;->mOrientation:I

    .line 36
    return-void
.end method
