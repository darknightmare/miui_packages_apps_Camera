.class public Lcom/android/camera/GLSurfaceStatusBar;
.super Ljava/lang/Object;
.source "GLSurfaceStatusBar.java"


# static fields
.field private static final PREVIEW_TOP_PADDING:I

.field private static final ZOOM_HINT_TEXT_WIDTH:I


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mDrawVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/gallery3d/ui/BasicTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mEV:F

.field private mEvTexture:Lcom/android/gallery3d/ui/BasicTexture;

.field private mGap:I

.field private mOrientation:I

.field private mPaddingTop:I

.field private mPaint:Lcom/android/gallery3d/ui/GLPaint;

.field private mZoomScale:F

.field private mZoomTexture:Lcom/android/gallery3d/ui/BasicTexture;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/GLSurfaceStatusBar;->PREVIEW_TOP_PADDING:I

    .line 18
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    sput v0, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomScale:F

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEV:F

    .line 26
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    .line 27
    new-instance v0, Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/GLPaint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    .line 34
    iget-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    const v1, 0x40ffffff

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setColor(I)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/GLPaint;->setLineWidth(F)V

    .line 36
    return-void
.end method

.method private drawElements(Lcom/android/gallery3d/ui/GLCanvas;II)V
    .locals 3
    .parameter "canvas"
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 101
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mGap:I

    .line 102
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/ui/BasicTexture;

    iget v2, p0, Lcom/android/camera/GLSurfaceStatusBar;->mGap:I

    add-int/2addr v2, p3

    invoke-direct {p0, p1, v1, p2, v2}, Lcom/android/camera/GLSurfaceStatusBar;->drawTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/BasicTexture;II)V

    .line 104
    iget v1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mGap:I

    sget v2, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mGap:I

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-void
.end method

.method private drawSeparator(Lcom/android/gallery3d/ui/GLCanvas;III)V
    .locals 9
    .parameter "canvas"
    .parameter "cx"
    .parameter "cy"
    .parameter "count"

    .prologue
    .line 109
    if-gtz p4, :cond_1

    .line 119
    :cond_0
    return-void

    .line 110
    :cond_1
    sget v0, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0xa

    sub-int v7, p2, v0

    .line 111
    .local v7, x:I
    sget v0, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    add-int/lit8 v0, v0, 0xa

    div-int/lit8 v0, v0, 0x2

    add-int v8, p3, v0

    .line 112
    .local v8, y:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, p4, :cond_0

    .line 113
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;

    int-to-float v1, v7

    sget v2, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    add-int/lit8 v2, v2, 0xa

    mul-int/2addr v2, v6

    add-int/2addr v2, v8

    int-to-float v2, v2

    sget v3, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v7

    int-to-float v3, v3

    sget v4, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    add-int/lit8 v4, v4, 0xa

    mul-int/2addr v4, v6

    add-int/2addr v4, v8

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/GLSurfaceStatusBar;->mPaint:Lcom/android/gallery3d/ui/GLPaint;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawLineAttribute;-><init>(FFFFLcom/android/gallery3d/ui/GLPaint;)V

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 112
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private drawTexture(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/gallery3d/ui/BasicTexture;II)V
    .locals 6
    .parameter "canvas"
    .parameter "texture"
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/4 v3, 0x0

    .line 122
    if-nez p2, :cond_0

    .line 135
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 124
    iget v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mOrientation:I

    if-eqz v0, :cond_1

    .line 125
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 126
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mOrientation:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    .line 127
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    neg-int v1, p3

    int-to-float v1, v1

    neg-int v2, p4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 129
    :cond_1
    sget v0, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sub-int v2, p3, v0

    sget v0, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sub-int v3, p4, v0

    sget v4, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    sget v5, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    move-object v0, p2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/BasicTexture;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 134
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    goto :goto_0
.end method


# virtual methods
.method public drawStatusBar(Lcom/android/gallery3d/ui/GLCanvas;IIIIZ)V
    .locals 3
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "full"

    .prologue
    .line 93
    if-eqz p6, :cond_0

    sget v0, Lcom/android/camera/GLSurfaceStatusBar;->PREVIEW_TOP_PADDING:I

    :goto_0
    iput v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mPaddingTop:I

    .line 94
    div-int/lit8 v0, p4, 0x2

    add-int/2addr v0, p2

    div-int/lit8 v1, p4, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mCenterX:I

    .line 95
    div-int/lit8 v0, p5, 0x2

    add-int/2addr v0, p3

    div-int/lit8 v1, p5, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mPaddingTop:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/camera/GLSurfaceStatusBar;->ZOOM_HINT_TEXT_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mCenterY:I

    .line 96
    iget v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mCenterX:I

    iget v1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mCenterY:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/GLSurfaceStatusBar;->drawElements(Lcom/android/gallery3d/ui/GLCanvas;II)V

    .line 97
    iget v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mCenterX:I

    iget v1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mCenterY:I

    iget-object v2, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/GLSurfaceStatusBar;->drawSeparator(Lcom/android/gallery3d/ui/GLCanvas;III)V

    .line 98
    return-void

    .line 93
    :cond_0
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 44
    iput-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEvTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 45
    iget-object v0, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 46
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 39
    iput p1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mOrientation:I

    .line 40
    return-void
.end method

.method public updateEv(I)V
    .locals 9
    .parameter "value"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 70
    int-to-float v4, p1

    const v5, 0x3dcccccd

    mul-float v1, v4, v5

    .line 71
    .local v1, ev:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3d4ccccd

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 72
    iput v1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEV:F

    .line 73
    iget v4, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEV:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    const-string v3, "\u2014"

    .line 74
    .local v3, symbol:Ljava/lang/String;
    :goto_0
    const-string v4, "  %s%.2f  "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    iget v6, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEV:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, content:Ljava/lang/String;
    const/4 v2, -0x1

    .line 76
    .local v2, location:I
    iget-object v4, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEvTexture:Lcom/android/gallery3d/ui/BasicTexture;

    if-eqz v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    iget-object v5, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEvTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 79
    :cond_0
    const/16 v4, 0xc

    invoke-static {v4}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v4

    int-to-float v4, v4

    const v5, -0x2f000001

    invoke-static {v0, v4, v5, v7, v8}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEvTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 80
    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    .line 81
    iget-object v4, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    iget-object v5, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEvTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v4, v2, v5}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #location:I
    .end local v3           #symbol:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 73
    :cond_2
    const-string v3, "+"

    goto :goto_0

    .line 83
    .restart local v0       #content:Ljava/lang/String;
    .restart local v2       #location:I
    .restart local v3       #symbol:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    iget-object v5, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEvTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    .end local v0           #content:Ljava/lang/String;
    .end local v2           #location:I
    .end local v3           #symbol:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEvTexture:Lcom/android/gallery3d/ui/BasicTexture;

    if-eqz v4, :cond_1

    .line 87
    iget-object v4, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    iget-object v5, p0, Lcom/android/camera/GLSurfaceStatusBar;->mEvTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public updateZoom(F)V
    .locals 7
    .parameter "zoomScale"

    .prologue
    const/4 v6, 0x1

    .line 49
    const v2, 0x3f8147ae

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    .line 50
    iput p1, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomScale:F

    .line 51
    const-string v2, "  %.2fX  "

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomScale:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, content:Ljava/lang/String;
    const/4 v1, -0x1

    .line 53
    .local v1, location:I
    iget-object v2, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomTexture:Lcom/android/gallery3d/ui/BasicTexture;

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    iget-object v3, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 56
    :cond_0
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    int-to-float v2, v2

    const v3, -0x2f000001

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v6}, Lcom/android/gallery3d/ui/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcom/android/gallery3d/ui/StringTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomTexture:Lcom/android/gallery3d/ui/BasicTexture;

    .line 57
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    iget-object v3, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v2, v1, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #location:I
    :cond_1
    :goto_0
    return-void

    .line 60
    .restart local v0       #content:Ljava/lang/String;
    .restart local v1       #location:I
    :cond_2
    iget-object v2, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    iget-object v3, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #location:I
    :cond_3
    iget-object v2, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomTexture:Lcom/android/gallery3d/ui/BasicTexture;

    if-eqz v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/android/camera/GLSurfaceStatusBar;->mDrawVector:Ljava/util/Vector;

    iget-object v3, p0, Lcom/android/camera/GLSurfaceStatusBar;->mZoomTexture:Lcom/android/gallery3d/ui/BasicTexture;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
