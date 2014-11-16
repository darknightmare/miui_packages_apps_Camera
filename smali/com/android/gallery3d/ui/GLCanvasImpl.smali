.class public Lcom/android/gallery3d/ui/GLCanvasImpl;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLCanvas;


# static fields
.field public static sMaxTexureSize:I


# instance fields
.field private final mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

.field private final mDeleteFrameBuffers:Lcom/android/gallery3d/util/IntArray;

.field private final mDeletePrograms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteTextures:Lcom/android/gallery3d/util/IntArray;

.field private mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

.field private mState:Lcom/android/camera/effect/GLCanvasState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x1000

    sput v0, Lcom/android/gallery3d/ui/GLCanvasImpl;->sMaxTexureSize:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v1}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteTextures:Lcom/android/gallery3d/util/IntArray;

    .line 34
    new-instance v1, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v1}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    .line 35
    new-instance v1, Lcom/android/gallery3d/util/IntArray;

    invoke-direct {v1}, Lcom/android/gallery3d/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteFrameBuffers:Lcom/android/gallery3d/util/IntArray;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeletePrograms:Ljava/util/ArrayList;

    .line 38
    new-instance v1, Lcom/android/camera/effect/GLCanvasState;

    invoke-direct {v1}, Lcom/android/camera/effect/GLCanvasState;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mState:Lcom/android/camera/effect/GLCanvasState;

    .line 41
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 42
    .local v0, size:[I
    const/16 v1, 0xd33

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 43
    aget v1, v0, v2

    sput v1, Lcom/android/gallery3d/ui/GLCanvasImpl;->sMaxTexureSize:I

    .line 45
    new-instance v1, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    .line 46
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v2, Lcom/android/camera/effect/renders/EffectRenderGroup;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/renders/EffectRenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 47
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v2, Lcom/android/camera/effect/renders/BasicRender;

    invoke-direct {v2, p0}, Lcom/android/camera/effect/renders/BasicRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 48
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->initialize()V

    .line 49
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 53
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 54
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 55
    const/high16 v0, 0x3f80

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 56
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 57
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 58
    const/16 v0, 0xcf5

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 59
    const/16 v0, 0xd05

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 60
    return-void
.end method


# virtual methods
.method public beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V
    .locals 1
    .parameter "frameBuffer"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 88
    return-void
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 107
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 108
    return-void
.end method

.method public deleteBuffer(I)V
    .locals 2
    .parameter "bufferId"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/IntArray;->add(I)V

    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteFrameBuffer(I)V
    .locals 2
    .parameter "frameBufferId"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteFrameBuffers:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteFrameBuffers:Lcom/android/gallery3d/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/util/IntArray;->add(I)V

    .line 127
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteProgram(I)V
    .locals 3
    .parameter "programId"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeletePrograms:Ljava/util/ArrayList;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeletePrograms:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z
    .locals 3
    .parameter "t"

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v1

    .line 112
    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 114
    :goto_0
    return v0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteTextures:Lcom/android/gallery3d/util/IntArray;

    iget v2, p1, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/util/IntArray;->add(I)V

    .line 114
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 1
    .parameter "attri"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 103
    return-void
.end method

.method public endBindFrameBuffer()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    .line 93
    return-void
.end method

.method public getState()Lcom/android/camera/effect/GLCanvasState;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mState:Lcom/android/camera/effect/GLCanvasState;

    return-object v0
.end method

.method public recycledResources()V
    .locals 5

    .prologue
    .line 138
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteTextures:Lcom/android/gallery3d/util/IntArray;

    monitor-enter v2

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteTextures:Lcom/android/gallery3d/util/IntArray;

    .line 140
    .local v0, ids:Lcom/android/gallery3d/util/IntArray;
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 141
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/ui/GLId;->glDeleteTextures(I[II)V

    .line 142
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->clear()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/android/gallery3d/util/IntArray;

    .line 146
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 147
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/ui/GLId;->glDeleteBuffers(I[II)V

    .line 148
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->clear()V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteFrameBuffers:Lcom/android/gallery3d/util/IntArray;

    .line 152
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 153
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/ui/GLId;->glDeleteFrameBuffers(I[II)V

    .line 154
    invoke-virtual {v0}, Lcom/android/gallery3d/util/IntArray;->clear()V

    .line 157
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeletePrograms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeletePrograms:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    .line 160
    .end local v0           #ids:Lcom/android/gallery3d/util/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #ids:Lcom/android/gallery3d/util/IntArray;
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 78
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 63
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mState:Lcom/android/camera/effect/GLCanvasState;

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->indentityAllM()V

    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mState:Lcom/android/camera/effect/GLCanvasState;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 70
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mState:Lcom/android/camera/effect/GLCanvasState;

    int-to-float v1, p2

    invoke-virtual {v0, v3, v1, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mState:Lcom/android/camera/effect/GLCanvasState;

    const/high16 v1, -0x4080

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 72
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
