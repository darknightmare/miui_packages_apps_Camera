.class Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/android/gallery3d/ui/PhotoView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailPicture"
.end annotation


# instance fields
.field private mIndex:I

.field private mIsCamera:Z

.field private mIsDeletable:Z

.field private mIsPanorama:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mRotation:I

.field private mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

.field private mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

.field final synthetic this$0:Lcom/android/gallery3d/ui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/PhotoView;I)V
    .locals 1
    .parameter
    .parameter "index"

    .prologue
    .line 765
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 762
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    .line 763
    new-instance v0, Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/PhotoView$Size;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    .line 766
    iput p2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    .line 767
    return-void
.end method

.method private isScreenNailAnimating()Z
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    instance-of v0, v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    check-cast v0, Lcom/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/BitmapScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSize()V
    .locals 5

    .prologue
    .line 863
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsPanorama:Z

    if-eqz v2, :cond_0

    .line 864
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getPanoramaRotation()I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1800(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    .line 871
    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_2

    .line 872
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 873
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget-object v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 880
    :goto_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v1, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 881
    .local v1, w:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v0, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 882
    .local v0, h:I
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v1, v0}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(III)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->width:I

    .line 883
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v3, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(III)I

    move-result v3

    iput v3, v2, Lcom/android/gallery3d/ui/PhotoView$Size;->height:I

    .line 884
    return-void

    .line 865
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    if-eqz v2, :cond_1

    .line 866
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getCameraRotation()I
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1900(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    goto :goto_0

    .line 868
    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v2, v3}, Lcom/android/gallery3d/ui/PhotoView$Model;->getImageRotation(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    goto :goto_0

    .line 877
    :cond_2
    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v2

    iget v3, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v4, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-interface {v2, v3, v4}, Lcom/android/gallery3d/ui/PhotoView$Model;->getImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V

    goto :goto_1
.end method


# virtual methods
.method public draw(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 21
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    if-nez v2, :cond_1

    .line 790
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPrevBound:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1200(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-lt v2, v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mNextBound:I
    invoke-static {v3}, Lcom/android/gallery3d/ui/PhotoView;->access$1100(Lcom/android/gallery3d/ui/PhotoView;)I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawPlaceHolder(Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V
    invoke-static {v2, v0, v1}, Lcom/android/gallery3d/ui/PhotoView;->access$3100(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;Landroid/graphics/Rect;)V

    .line 844
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getWidth()I

    move-result v17

    .line 796
    .local v17, w:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->getHeight()I

    move-result v12

    .line 797
    .local v12, h:I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->left:I

    move/from16 v0, v17

    if-ge v2, v0, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-lez v2, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v12, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-gtz v2, :cond_3

    .line 798
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/android/gallery3d/ui/ScreenNail;->noDraw()V

    goto :goto_0

    .line 802
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PositionController;->getFilmRatio()F

    move-result v11

    .line 803
    .local v11, filmRatio:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    if-lez v2, :cond_a

    const/high16 v2, 0x3f80

    cmpl-float v2, v11, v2

    if-eqz v2, :cond_a

    const/16 v18, 0x1

    .line 805
    .local v18, wantsCardEffect:Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    if-eqz v2, :cond_b

    const/high16 v2, 0x3f80

    cmpl-float v2, v11, v2

    if-nez v2, :cond_b

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v3, v12, 0x2

    if-eq v2, v3, :cond_b

    const/16 v19, 0x1

    .line 807
    .local v19, wantsOffsetEffect:Z
    :goto_2
    if-eqz v18, :cond_c

    div-int/lit8 v2, v17, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v11, v2, v3}, Lcom/android/gallery3d/ui/PhotoView;->access$2700(FFF)F

    move-result v2

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v9, v2

    .line 810
    .local v9, cx:I
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    .line 811
    .local v10, cy:I
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 812
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    int-to-float v3, v9

    int-to-float v4, v10

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/effect/GLCanvasState;->translate(FF)V

    .line 813
    if-eqz v18, :cond_d

    .line 814
    div-int/lit8 v2, v17, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move/from16 v0, v17

    int-to-float v3, v0

    div-float v14, v2, v3

    .line 815
    .local v14, progress:F
    const/high16 v2, -0x4080

    const/high16 v3, 0x3f80

    invoke-static {v14, v2, v3}, Lcom/android/gallery3d/common/Utils;->clamp(FFF)F

    move-result v14

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getScrollAlpha(F)F
    invoke-static {v2, v14}, Lcom/android/gallery3d/ui/PhotoView;->access$2600(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v8

    .line 817
    .local v8, alpha:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getScrollScale(F)F
    invoke-static {v2, v14}, Lcom/android/gallery3d/ui/PhotoView;->access$2500(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v16

    .line 818
    .local v16, scale:F
    const/high16 v2, 0x3f80

    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v11, v8, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2700(FFF)F

    move-result v8

    .line 819
    const/high16 v2, 0x3f80

    move/from16 v0, v16

    #calls: Lcom/android/gallery3d/ui/PhotoView;->interpolate(FFF)F
    invoke-static {v11, v0, v2}, Lcom/android/gallery3d/ui/PhotoView;->access$2700(FFF)F

    move-result v16

    .line 820
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/camera/effect/GLCanvasState;->multiplyAlpha(F)V

    .line 821
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    const/high16 v3, 0x3f80

    move/from16 v0, v16

    move/from16 v1, v16

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 827
    .end local v8           #alpha:F
    .end local v14           #progress:F
    .end local v16           #scale:F
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    if-eqz v2, :cond_5

    .line 828
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v20, 0x3f80

    move/from16 v0, v20

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    .line 830
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(III)I

    move-result v6

    .line 831
    .local v6, drawW:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getRotated(III)I
    invoke-static {v2, v3, v4}, Lcom/android/gallery3d/ui/PhotoView;->access$2000(III)I

    move-result v7

    .line 832
    .local v7, drawH:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    neg-int v3, v6

    div-int/lit8 v4, v3, 0x2

    neg-int v3, v7

    div-int/lit8 v5, v3, 0x2

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/gallery3d/ui/ScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    .line 833
    invoke-direct/range {p0 .. p0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->isScreenNailAnimating()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/PhotoView;->invalidate()V

    .line 836
    :cond_6
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 837
    .local v15, s:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawVideoPlayIcon(Lcom/android/gallery3d/ui/GLCanvas;I)V
    invoke-static {v2, v0, v15}, Lcom/android/gallery3d/ui/PhotoView;->access$2900(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 838
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    .line 839
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mListener:Lcom/android/gallery3d/ui/PhotoView$Listener;
    invoke-static {v2}, Lcom/android/gallery3d/ui/PhotoView;->access$000(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Listener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/ui/PhotoView$Listener;->createCameraScreenNail()Z

    move-result v2

    if-nez v2, :cond_9

    .line 840
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p1

    #calls: Lcom/android/gallery3d/ui/PhotoView;->drawLoadingFailMessage(Lcom/android/gallery3d/ui/GLCanvas;)V
    invoke-static {v2, v0}, Lcom/android/gallery3d/ui/PhotoView;->access$3000(Lcom/android/gallery3d/ui/PhotoView;Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 843
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    goto/16 :goto_0

    .line 803
    .end local v6           #drawW:I
    .end local v7           #drawH:I
    .end local v9           #cx:I
    .end local v10           #cy:I
    .end local v15           #s:I
    .end local v18           #wantsCardEffect:Z
    .end local v19           #wantsOffsetEffect:Z
    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 805
    .restart local v18       #wantsCardEffect:Z
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 807
    .restart local v19       #wantsOffsetEffect:Z
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    goto/16 :goto_3

    .line 822
    .restart local v9       #cx:I
    .restart local v10       #cy:I
    :cond_d
    if-eqz v19, :cond_4

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v3, v12, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v12

    div-float v13, v2, v3

    .line 824
    .local v13, offset:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #calls: Lcom/android/gallery3d/ui/PhotoView;->getOffsetAlpha(F)F
    invoke-static {v2, v13}, Lcom/android/gallery3d/ui/PhotoView;->access$2800(Lcom/android/gallery3d/ui/PhotoView;F)F

    move-result v8

    .line 825
    .restart local v8       #alpha:F
    invoke-interface/range {p1 .. p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/camera/effect/GLCanvasState;->multiplyAlpha(F)V

    goto/16 :goto_4
.end method

.method public forceSize()V
    .locals 3

    .prologue
    .line 858
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->updateSize()V

    .line 859
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mPositionController:Lcom/android/gallery3d/ui/PositionController;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$600(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PositionController;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/PositionController;->forceImageSize(ILcom/android/gallery3d/ui/PhotoView$Size;)V

    .line 860
    return-void
.end method

.method public getSize()Lcom/android/gallery3d/ui/PhotoView$Size;
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/android/gallery3d/ui/PhotoView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .locals 1

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    return v0
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z

    .line 772
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsPanorama:Z

    .line 773
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z

    .line 774
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z

    .line 775
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mLoadingState:I

    .line 776
    iget-object v0, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/android/gallery3d/ui/PhotoView;

    #getter for: Lcom/android/gallery3d/ui/PhotoView;->mModel:Lcom/android/gallery3d/ui/PhotoView$Model;
    invoke-static {v0}, Lcom/android/gallery3d/ui/PhotoView;->access$1300(Lcom/android/gallery3d/ui/PhotoView;)Lcom/android/gallery3d/ui/PhotoView$Model;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/PhotoView$Model;->getScreenNail(I)Lcom/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V

    .line 777
    invoke-direct {p0}, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->updateSize()V

    .line 778
    return-void
.end method

.method public setScreenNail(Lcom/android/gallery3d/ui/ScreenNail;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 853
    iput-object p1, p0, Lcom/android/gallery3d/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/android/gallery3d/ui/ScreenNail;

    .line 854
    return-void
.end method
