.class public abstract Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/gallery3d/ui/ScreenNail;


# static fields
.field private static sFrameListener:Landroid/os/HandlerThread;

.field private static sMaxHightProrityFrameCount:I


# instance fields
.field private currentFrameCount:I

.field protected mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field protected mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field protected mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field protected mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field protected mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

.field private mHasTexture:Z

.field private mHeight:I

.field private mIsFullScreen:Z

.field private mIsVideoStabilization:Z

.field private mPreviewSizeAbnormal:Z

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTransform:[F

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const/16 v0, 0x8

    sput v0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/android/camera/GLSurfaceStatusBar;

    invoke-direct {v0}, Lcom/android/camera/GLSurfaceStatusBar;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    .line 57
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    .line 58
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 60
    iput v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleX:F

    .line 61
    iput v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleY:F

    .line 66
    iput v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 69
    return-void
.end method

.method private checkThreadPriority()V
    .locals 2

    .prologue
    .line 137
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    if-ne v0, v1, :cond_1

    .line 138
    const-string v0, "Camera/SurfaceTextureScreenNail"

    const-string v1, "normalHandlerCapacity:set normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 140
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    if-ge v0, v1, :cond_0

    .line 142
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I

    goto :goto_0
.end method

.method private initializeTexture()V
    .locals 4

    .prologue
    .line 85
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3:Z

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    :cond_0
    :try_start_0
    const-class v0, Landroid/graphics/SurfaceTexture;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/os/Looper;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 91
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 94
    const-string v0, "Camera/SurfaceTextureScreenNail"

    const-string v1, "fullHandlerCapacity:set urgent display"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, -0x8

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->currentFrameCount:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_1
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    goto :goto_0

    .line 101
    :catch_1
    move-exception v0

    goto :goto_0

    .line 100
    :catch_2
    move-exception v0

    goto :goto_0

    .line 99
    :catch_3
    move-exception v0

    goto :goto_0

    .line 98
    :catch_4
    move-exception v0

    goto :goto_0

    .line 97
    :catch_5
    move-exception v0

    goto :goto_0
.end method

.method private updateRenderSize()V
    .locals 2

    .prologue
    .line 205
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleX:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    .line 206
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    .line 207
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 72
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/ExtTexture;->setSize(II)V

    .line 74
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->initializeTexture()V

    .line 75
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 77
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 79
    monitor-enter p0

    .line 80
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 81
    monitor-exit p0

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 7
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 241
    :goto_0
    return-void

    .line 231
    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->checkThreadPriority()V

    .line 232
    :cond_1
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    iget v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setPreviewSize(II)V

    .line 233
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 234
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 235
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 236
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 237
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mTransform:[F

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 238
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 239
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    iget-boolean v6, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/GLSurfaceStatusBar;->drawStatusBar(Lcom/android/gallery3d/ui/GLCanvas;IIIIZ)V

    .line 240
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getGLSurfaceStatusBar()Lcom/android/camera/GLSurfaceStatusBar;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getRenderHeight()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getRenderWidth()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public releaseBitmapIfNeeded()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 283
    :cond_0
    return-void
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 114
    monitor-enter p0

    .line 115
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 116
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ExtTexture;->recycle()V

    .line 119
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 124
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 125
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    .line 129
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 131
    :cond_2
    iput-object v1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 132
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    invoke-virtual {v0}, Lcom/android/camera/GLSurfaceStatusBar;->release()V

    .line 133
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->releaseBitmapIfNeeded()V

    .line 134
    return-void

    .line 116
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/GLSurfaceStatusBar;->setOrientation(I)V

    .line 250
    return-void
.end method

.method public setRenderSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 199
    iput p1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderWidth:I

    .line 200
    iput p2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mRenderHeight:I

    .line 201
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 202
    return-void
.end method

.method public setSize(II)V
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x4180

    const/high16 v5, 0x4110

    const/high16 v4, 0x3f80

    .line 147
    if-le p1, p2, :cond_0

    .line 148
    move v2, p1

    .line 149
    .local v2, tmp:I
    move p1, p2

    .line 150
    move p2, v2

    .line 152
    .end local v2           #tmp:I
    :cond_0
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isFullScreen(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    iput-boolean v8, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 154
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v3

    if-nez v3, :cond_2

    .line 155
    iput-boolean v8, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewSizeAbnormal:Z

    .line 156
    mul-int/lit8 v3, p1, 0x10

    mul-int/lit8 v4, p2, 0x9

    if-le v3, v4, :cond_1

    .line 157
    move v1, p1

    .line 158
    .local v1, oldWidth:I
    int-to-float v3, p2

    mul-float/2addr v3, v5

    div-float/2addr v3, v6

    float-to-int p1, v3

    .line 159
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleX:F

    .line 193
    .end local v1           #oldWidth:I
    :goto_0
    iput p1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mWidth:I

    .line 194
    iput p2, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mHeight:I

    .line 195
    invoke-direct {p0}, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 196
    return-void

    .line 161
    :cond_1
    move v0, p2

    .line 162
    .local v0, oldHeight:I
    int-to-float v3, p1

    mul-float/2addr v3, v6

    div-float/2addr v3, v5

    float-to-int p2, v3

    .line 163
    int-to-float v3, p2

    int-to-float v4, v0

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_0

    .line 166
    .end local v0           #oldHeight:I
    :cond_2
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewSizeAbnormal:Z

    .line 167
    iput v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleX:F

    .line 168
    iput v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_0

    .line 171
    :cond_3
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 172
    iput-boolean v8, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewSizeAbnormal:Z

    .line 173
    mul-int/lit8 v3, p1, 0x4

    mul-int/lit8 v4, p2, 0x3

    if-le v3, v4, :cond_5

    .line 174
    move v1, p1

    .line 175
    .restart local v1       #oldWidth:I
    int-to-float v3, p2

    const/high16 v4, 0x4040

    mul-float/2addr v3, v4

    const/high16 v4, 0x4080

    div-float/2addr v3, v4

    float-to-int p1, v3

    .line 176
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleX:F

    .line 187
    .end local v1           #oldWidth:I
    :goto_1
    sget-boolean v3, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v3, :cond_4

    .line 188
    int-to-float v3, p1

    mul-float/2addr v3, v6

    div-float/2addr v3, v5

    float-to-int p2, v3

    .line 189
    iget v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleX:F

    const/high16 v4, 0x3f40

    mul-float/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleX:F

    .line 191
    :cond_4
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    goto :goto_0

    .line 178
    :cond_5
    move v0, p2

    .line 179
    .restart local v0       #oldHeight:I
    int-to-float v3, p1

    const/high16 v4, 0x4080

    mul-float/2addr v3, v4

    const/high16 v4, 0x4040

    div-float/2addr v3, v4

    float-to-int p2, v3

    .line 180
    int-to-float v3, p2

    int-to-float v4, v0

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_1

    .line 183
    .end local v0           #oldHeight:I
    :cond_6
    iput-boolean v7, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewSizeAbnormal:Z

    .line 184
    iput v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleX:F

    .line 185
    iput v4, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_1
.end method

.method public setVideoStabilization(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsVideoStabilization:Z

    .line 254
    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 10
    .parameter "matrix"

    .prologue
    const v9, 0x3f666666

    const/high16 v8, 0x3f00

    const/4 v7, 0x0

    const/high16 v6, -0x4100

    const/4 v5, 0x0

    .line 257
    const/high16 v1, 0x3f80

    .line 258
    .local v1, scaleX:F
    const/high16 v2, 0x3f80

    .line 259
    .local v2, scaleY:F
    const/4 v0, 0x0

    .line 260
    .local v0, change:Z
    invoke-static {}, Lcom/android/camera/ModuleManager;->getCurrentMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsVideoStabilization:Z

    if-eqz v3, :cond_0

    .line 262
    mul-float/2addr v1, v9

    .line 263
    mul-float/2addr v2, v9

    .line 264
    const/4 v0, 0x1

    .line 266
    :cond_0
    sget-boolean v3, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mIsFullScreen:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mPreviewSizeAbnormal:Z

    if-eqz v3, :cond_3

    .line 268
    :cond_2
    iget v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v1, v3

    .line 269
    iget v3, p0, Lcom/android/gallery3d/ui/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v2, v3

    .line 270
    const/4 v0, 0x1

    .line 272
    :cond_3
    if-eqz v0, :cond_4

    .line 273
    invoke-static {p1, v5, v8, v8, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 274
    const/high16 v3, 0x3f80

    invoke-static {p1, v5, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 275
    invoke-static {p1, v5, v6, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 277
    :cond_4
    return-void
.end method
