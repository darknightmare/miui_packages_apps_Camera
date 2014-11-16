.class public Lcom/android/camera/FocusManager;
.super Lcom/android/camera/FocusManagerAbstract;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/FocusManager$MainHandler;,
        Lcom/android/camera/FocusManager$Listener;
    }
.end annotation


# instance fields
.field private mAeAwbLock:Z

.field private mCafStartTime:J

.field private mCancelAutoFocusIfMove:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultFocusModes:[Ljava/lang/String;

.field private mFocusAreaSupported:Z

.field private mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

.field private mFocusMode:Ljava/lang/String;

.field private mFrameView:Lcom/android/camera/ui/FrameView;

.field private mHandler:Landroid/os/Handler;

.field private mLastFocusFrom:I

.field private mLastState:I

.field private mLatestFocusFace:Landroid/graphics/RectF;

.field private mLatestFocusTime:J

.field private mListener:Lcom/android/camera/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMeteringAreaSupported:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPendingMultiCapture:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;[Ljava/lang/String;Landroid/view/View;Landroid/hardware/Camera$Parameters;Lcom/android/camera/FocusManager$Listener;ZLandroid/os/Looper;)V
    .locals 1
    .parameter "context"
    .parameter "preferences"
    .parameter "defaultFocusModes"
    .parameter "focusView"
    .parameter "parameters"
    .parameter "listener"
    .parameter "mirror"
    .parameter "looper"

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/android/camera/FocusManagerAbstract;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/FocusManager;->mLastState:I

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 165
    new-instance v0, Lcom/android/camera/FocusManager$MainHandler;

    invoke-direct {v0, p0, p8}, Lcom/android/camera/FocusManager$MainHandler;-><init>(Lcom/android/camera/FocusManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    .line 166
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mContext:Landroid/content/Context;

    .line 167
    iput-object p3, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    .line 168
    invoke-virtual {p0, p4}, Lcom/android/camera/FocusManager;->setFocusAreaIndicator(Landroid/view/View;)V

    .line 169
    invoke-virtual {p0, p5}, Lcom/android/camera/FocusManager;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 170
    iput-object p6, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    .line 171
    invoke-virtual {p0, p7}, Lcom/android/camera/FocusManager;->setMirror(Z)V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/FocusManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/FocusManager;)Lcom/android/camera/FocusManager$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    return-object v0
.end method

.method private autoFocus(I)V
    .locals 4
    .parameter "from"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 671
    iput p1, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 673
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    if-eq p1, v1, :cond_3

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/android/camera/FocusManager$Listener;->stopFaceDetection(Z)V

    .line 674
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    instance-of v0, v0, Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_1

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0, v2}, Lcom/android/camera/FocusManager$Listener;->stopObjectTracking(Z)V

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->autoFocus()V

    .line 681
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_2

    if-eq p1, v1, :cond_2

    .line 682
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->pause()V

    .line 684
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 685
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 686
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 687
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 690
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 692
    return-void

    :cond_3
    move v0, v2

    .line 673
    goto :goto_0
.end method

.method private canTap()Z
    .locals 2

    .prologue
    .line 880
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cancelAutoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 695
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 696
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 697
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->resume()V

    .line 700
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 701
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 702
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 703
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 704
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 705
    const-string v0, "FocusManager"

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    return-void
.end method

.method private capture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 709
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    invoke-static {}, Lcom/android/camera/Device;->isResetToCCAFAfterCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 712
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 714
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    .line 715
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 717
    :cond_1
    return-void
.end method

.method private focusPoint(III)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "from"

    .prologue
    const/4 v3, 0x0

    .line 560
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->cancelAutoFocus()V

    .line 569
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/FocusManager;->initializeParameters(III)V

    .line 572
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 574
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_3

    .line 575
    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->isFocusValide(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0, p3}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    goto :goto_0

    .line 578
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 579
    iput p3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 580
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 581
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 583
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 584
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private initializeFocusAreas(IIIIII)V
    .locals 9
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_0

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    .line 475
    iget-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_0
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 481
    return-void
.end method

.method private initializeFocusIndicator(II)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x0

    .line 504
    invoke-static {}, Lcom/android/camera/Device;->isUseNewFocusUI()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 505
    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    check-cast v4, Lcom/android/camera/ui/FocusView;

    invoke-virtual {v4, p1, p2}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 523
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    check-cast v4, Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v4}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 510
    .local v1, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_INDICATOR_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p1, v4

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_INDICATOR_WIDTH:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v7, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_INDICATOR_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    .line 513
    .local v0, left:I
    iget v4, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_INDICATOR_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_INDICATOR_WIDTH:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    iget v7, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_INDICATOR_WIDTH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Lcom/android/camera/Util;->clamp(III)I

    move-result v3

    .line 516
    .local v3, top:I
    invoke-virtual {v1, v0, v3, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 519
    invoke-virtual {v1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    .line 520
    .local v2, rules:[I
    const/16 v4, 0xd

    aput v8, v2, v4

    .line 521
    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    check-cast v4, Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v4}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->requestLayout()V

    goto :goto_0
.end method

.method private initializeMeteringAreas(IIIIIII)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "from"

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    if-nez v1, :cond_0

    .line 486
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    .line 487
    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    new-instance v2, Landroid/hardware/Camera$Area;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_0
    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v1}, Lcom/android/camera/ui/FrameView;->isNeedExposure()Z

    move-result v1

    if-nez v1, :cond_1

    .line 493
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_1
    const v4, 0x3fe66666

    iget-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget-object v9, v1, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/camera/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private initializeParameters(III)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "from"

    .prologue
    .line 541
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 542
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 546
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_1

    .line 547
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;->initializeMeteringAreas(IIIIIII)V

    .line 550
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(II)V

    .line 551
    return-void
.end method

.method private isAutoFocusMode(Ljava/lang/String;)Z
    .locals 1
    .parameter "focusMode"

    .prologue
    .line 888
    const-string v0, "auto"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "macro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isFocusEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 924
    iget-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/FocusManager;->needAutoFocusCall()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFocusValide(I)Z
    .locals 8
    .parameter "from"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 656
    .local v0, now:J
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-eq v2, v7, :cond_0

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_0
    const-wide/16 v4, 0x1388

    .line 658
    .local v4, timeout:J
    :goto_0
    if-ge p1, v7, :cond_1

    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ge p1, v2, :cond_1

    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 660
    :cond_1
    const-string v2, "FocusManager"

    const-string v3, "Start autofocus."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    move v2, v6

    .line 667
    :goto_1
    return v2

    .line 656
    .end local v4           #timeout:J
    :cond_2
    const-wide/16 v4, 0xfa0

    goto :goto_0

    .line 664
    .restart local v4       #timeout:J
    :cond_3
    iget v2, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v2, v6, :cond_4

    .line 665
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 667
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isNeedCancelAutoFocus()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 903
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 867
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private multiCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 720
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v0}, Lcom/android/camera/FocusManager$Listener;->multiCapture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 722
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 723
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    .line 724
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 726
    :cond_0
    return-void
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "manual"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetFocusAreaToCenter()V
    .locals 7

    .prologue
    .line 465
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 468
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/FocusManager;->initializeFocusIndicator(II)V

    .line 469
    return-void
.end method

.method private resetFocusAreaToFaceArea()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/high16 v2, 0x4000

    .line 438
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->faceExists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FrameView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v8

    .line 441
    .local v8, rect:Landroid/graphics/RectF;
    if-eqz v8, :cond_1

    .line 442
    iget v0, v8, Landroid/graphics/RectF;->left:F

    iget v1, v8, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v3, v0

    .line 443
    .local v3, x:I
    iget v0, v8, Landroid/graphics/RectF;->top:F

    iget v1, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v4, v0

    .line 444
    .local v4, y:I
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    instance-of v0, v0, Lcom/android/camera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 445
    iput-object v8, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 446
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_WIDTH:I

    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_AREA_HEIGHT:I

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 461
    .end local v3           #x:I
    .end local v4           #y:I
    .end local v8           #rect:Landroid/graphics/RectF;
    :goto_0
    return v7

    .line 451
    .restart local v3       #x:I
    .restart local v4       #y:I
    .restart local v8       #rect:Landroid/graphics/RectF;
    :cond_0
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v2, v0

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/FocusManager;->initializeFocusAreas(IIIIII)V

    .line 455
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v0

    float-to-int v2, v0

    iget v5, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    iget v6, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusManager;->initializeMeteringAreas(IIIIIII)V

    goto :goto_0

    .line 461
    .end local v3           #x:I
    .end local v4           #y:I
    .end local v8           #rect:Landroid/graphics/RectF;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private resetFocusIndicator()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 526
    invoke-static {}, Lcom/android/camera/Device;->isUseNewFocusUI()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    invoke-interface {v2}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    .line 537
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    check-cast v2, Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-virtual {v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 532
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 533
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 534
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 535
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    invoke-interface {v2}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    goto :goto_0
.end method

.method private setFocusState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 198
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    .line 199
    return-void
.end method

.method private setLastFocusState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 202
    iput p1, p0, Lcom/android/camera/FocusManager;->mLastState:I

    .line 203
    return-void
.end method


# virtual methods
.method public doMultiSnap(Z)V
    .locals 3
    .parameter "checkFocusState"

    .prologue
    const/4 v2, 0x1

    .line 305
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    if-nez p1, :cond_2

    .line 309
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    .line 314
    :cond_2
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mMirror:Z

    if-eqz v0, :cond_4

    .line 315
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_0

    .line 316
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-ne v0, v2, :cond_5

    .line 320
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 321
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    goto :goto_0

    .line 322
    :cond_5
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-nez v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_0
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v0, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mMirror:Z

    if-eqz v0, :cond_3

    .line 289
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0

    .line 290
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 294
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    goto :goto_0

    .line 295
    :cond_4
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-nez v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_0
.end method

.method public focusFaceArea()Z
    .locals 10

    .prologue
    const/high16 v9, 0x42a0

    const/high16 v8, 0x4000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 618
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/camera/FocusManager;->isAutoFocusMode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 632
    :cond_0
    :goto_0
    return v3

    .line 619
    :cond_1
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v5}, Lcom/android/camera/ui/FrameView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 620
    .local v0, rect:Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 621
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v5, v4, :cond_2

    .line 622
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-gez v5, :cond_2

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget-object v7, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v5, v5, v9

    if-ltz v5, :cond_0

    .line 628
    :cond_2
    iput-object v0, p0, Lcom/android/camera/FocusManager;->mLatestFocusFace:Landroid/graphics/RectF;

    .line 629
    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v5

    div-float/2addr v3, v8

    float-to-int v1, v3

    .line 630
    .local v1, x:I
    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v5

    div-float/2addr v3, v8

    float-to-int v2, v3

    .line 631
    .local v2, y:I
    invoke-direct {p0, v1, v2, v4}, Lcom/android/camera/FocusManager;->focusPoint(III)V

    move v3, v4

    .line 632
    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 863
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    return-object v0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 8

    .prologue
    .line 743
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 788
    :goto_0
    return-object v5

    .line 744
    :cond_0
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    .line 746
    .local v4, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 748
    iget-boolean v5, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 749
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    const-string v6, "manual"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 750
    const-string v5, "manual"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 756
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 758
    const/4 v1, 0x0

    .line 759
    .local v1, find:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 760
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mDefaultFocusModes:[Ljava/lang/String;

    aget-object v3, v5, v2

    .line 761
    .local v3, mode:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/camera/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 762
    iput-object v3, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 763
    const/4 v1, 0x1

    .line 767
    .end local v3           #mode:Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 770
    const-string v5, "auto"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 772
    const-string v5, "auto"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 777
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 778
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 779
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "pref_camera_focus_mode_key"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 781
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 784
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #find:Z
    .end local v2           #i:I
    :cond_4
    const-string v5, "continuous-picture"

    iget-object v6, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 785
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    .line 787
    :cond_5
    const-string v5, "FocusManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FocusMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto/16 :goto_0

    .line 752
    :cond_6
    const-string v5, "auto"

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_1

    .line 759
    .restart local v1       #find:Z
    .restart local v2       #i:I
    .restart local v3       #mode:Ljava/lang/String;
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 774
    .end local v3           #mode:Ljava/lang/String;
    :cond_8
    iget-object v5, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_3
.end method

.method public getMeteringAreas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    return-object v0
.end method

.method public isFocusCompleted()Z
    .locals 2

    .prologue
    .line 838
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocusingSnapOnFinish()Z
    .locals 2

    .prologue
    .line 846
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAutoFocus(Z)V
    .locals 5
    .parameter "focused"

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 332
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 336
    if-eqz p1, :cond_1

    .line 337
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 338
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 343
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 344
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v0, :cond_2

    .line 345
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    .line 378
    :cond_0
    :goto_1
    return-void

    .line 340
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 341
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_0

    .line 347
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto :goto_1

    .line 349
    :cond_3
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-ne v0, v1, :cond_7

    .line 353
    if-eqz p1, :cond_5

    .line 354
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 355
    invoke-direct {p0, v4}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 359
    const-string v0, "continuous-picture"

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-eq v0, v1, :cond_4

    .line 362
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    sget v2, Lcom/android/camera/MiuiCameraSound;->FOCUS_COMPLETE:I

    invoke-interface {v0, v2}, Lcom/android/camera/FocusManager$Listener;->playSound(I)V

    .line 368
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 371
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 372
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    goto :goto_1

    .line 365
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mMirror:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 366
    invoke-direct {p0, v2}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_2

    :cond_6
    move v0, v2

    .line 365
    goto :goto_3

    .line 374
    :cond_7
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-nez v0, :cond_0

    goto :goto_1
.end method

.method public onAutoFocusMoving(ZZ)V
    .locals 13
    .parameter "moving"
    .parameter "isSuccessful"

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 381
    iget-boolean v2, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v2, :cond_1

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 385
    :cond_1
    const/4 v0, 0x1

    .line 387
    .local v0, showFocusIndicator:Z
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v2}, Lcom/android/camera/ui/FrameView;->faceExists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    invoke-interface {v2}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    .line 389
    const/4 v0, 0x0

    .line 393
    :cond_2
    iget-object v2, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_0

    const-string v2, "continuous-picture"

    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    if-eqz p1, :cond_4

    .line 398
    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eq v2, v10, :cond_3

    .line 399
    invoke-direct {p0, v9}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 401
    :cond_3
    invoke-direct {p0, v8}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 402
    const-string v2, "FocusManager"

    const-string v3, "Camera KPI: CAF start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    .line 404
    if-eqz v0, :cond_0

    .line 405
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    invoke-interface {v2, v9, v8}, Lcom/android/camera/ui/FocusIndicator;->showStart(ZZ)V

    goto :goto_0

    .line 408
    :cond_4
    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    .line 409
    .local v1, state:I
    const-string v2, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera KPI: CAF stop: Focus time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/FocusManager;->mCafStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    if-eqz p2, :cond_6

    .line 411
    invoke-direct {p0, v11}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 412
    invoke-direct {p0, v11}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 417
    :goto_1
    if-eqz v0, :cond_5

    .line 418
    if-eqz p2, :cond_7

    .line 419
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    invoke-interface {v2, v9, v8}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(ZZ)V

    .line 425
    :cond_5
    :goto_2
    if-ne v1, v10, :cond_0

    .line 428
    iget-boolean v2, p0, Lcom/android/camera/FocusManager;->mPendingMultiCapture:Z

    if-eqz v2, :cond_8

    .line 429
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->multiCapture()V

    goto :goto_0

    .line 414
    :cond_6
    invoke-direct {p0, v12}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 415
    invoke-direct {p0, v12}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    goto :goto_1

    .line 421
    :cond_7
    iget-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    invoke-interface {v2, v9, v8}, Lcom/android/camera/ui/FocusIndicator;->showFail(ZZ)V

    goto :goto_2

    .line 431
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->capture()V

    goto/16 :goto_0
.end method

.method public onCameraReleased()V
    .locals 0

    .prologue
    .line 651
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->onPreviewStopped()V

    .line 652
    return-void
.end method

.method public onDeviceKeepMoving(D)V
    .locals 7
    .parameter "a"

    .prologue
    const/4 v6, 0x0

    .line 914
    invoke-static {}, Lcom/android/camera/Device;->isUseNewFocusUI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/FocusManager;->mLatestFocusTime:J

    const-wide/16 v4, 0xbb8

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 917
    iget-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    if-eqz v0, :cond_1

    .line 918
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 921
    :cond_1
    return-void
.end method

.method public onPreviewStarted()V
    .locals 1

    .prologue
    .line 641
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 642
    return-void
.end method

.method public onPreviewStopped()V
    .locals 1

    .prologue
    .line 645
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 646
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->resetTouchFocus()V

    .line 647
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 648
    return-void
.end method

.method public onShutter()V
    .locals 1

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->updateFocusUI()V

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 638
    return-void
.end method

.method public onShutterDown()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onShutterUp()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public onSingleTapUp(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->canTap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/FocusManager;->focusPoint(III)V

    .line 557
    :cond_0
    return-void
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 855
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 856
    return-void
.end method

.method public prepareCapture(ZI)V
    .locals 5
    .parameter "autoFocus"
    .parameter "fromWhat"

    .prologue
    const/4 v4, 0x3

    .line 210
    iget-boolean v3, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    const/4 v2, 0x1

    .line 212
    .local v2, tryAutoFocus:Z
    const/4 v0, 0x0

    .line 213
    .local v0, autoFocusCalled:Z
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, focusMode:Ljava/lang/String;
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    const-string v3, "auto"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "macro"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 217
    :cond_2
    iget v3, p0, Lcom/android/camera/FocusManager;->mLastState:I

    if-ne v3, v4, :cond_3

    .line 218
    const/4 v2, 0x0

    .line 222
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isFocusEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    .line 224
    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    .line 226
    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FrameView;->faceExists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 227
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->focusFaceArea()Z

    .line 228
    const/4 v0, 0x1

    .line 239
    :cond_4
    :goto_1
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-string v3, "continuous-picture"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->requestAutoFocus()V

    .line 243
    const/4 v0, 0x1

    goto :goto_0

    .line 230
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    .line 231
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    .line 232
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 852
    return-void
.end method

.method public requestAutoFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 590
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->canTap()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    if-nez v1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    const/4 v0, 0x3

    .line 596
    .local v0, from:I
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->isNeedCancelAutoFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 598
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->cancelAutoFocus()V

    .line 599
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    .line 600
    invoke-direct {p0, v3}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 601
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 602
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 603
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToFaceArea()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 606
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    invoke-interface {v1}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    .line 607
    const/4 v0, 0x1

    .line 612
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 613
    iget-object v1, p0, Lcom/android/camera/FocusManager;->mListener:Lcom/android/camera/FocusManager$Listener;

    invoke-interface {v1}, Lcom/android/camera/FocusManager$Listener;->setFocusParameters()V

    .line 614
    invoke-direct {p0, v0}, Lcom/android/camera/FocusManager;->autoFocus(I)V

    goto :goto_0

    .line 609
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusAreaToCenter()V

    goto :goto_1
.end method

.method public resetFocusStateIfNeeded()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 729
    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    .line 730
    iput-object v0, p0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    .line 731
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setFocusState(I)V

    .line 732
    invoke-direct {p0, v1}, Lcom/android/camera/FocusManager;->setLastFocusState(I)V

    .line 733
    iput-boolean v1, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 737
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 740
    :cond_0
    return-void
.end method

.method public resetTouchFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 828
    iget-boolean v0, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/zxing/QRCodeManager;->instance(Landroid/content/Context;)Lcom/android/zxing/QRCodeManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/zxing/QRCodeManager;->updateViewFinderRect(Landroid/graphics/Point;)V

    .line 830
    iput-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mFocusArea:Ljava/util/List;

    .line 831
    iput-object v1, p0, Lcom/android/camera/FocusManagerAbstract;->mMeteringArea:Ljava/util/List;

    .line 832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mCancelAutoFocusIfMove:Z

    .line 833
    invoke-direct {p0}, Lcom/android/camera/FocusManager;->resetFocusIndicator()V

    .line 835
    :cond_0
    return-void
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 859
    iput-boolean p1, p0, Lcom/android/camera/FocusManager;->mAeAwbLock:Z

    .line 860
    return-void
.end method

.method public setFocusAreaIndicator(Landroid/view/View;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 149
    invoke-static {}, Lcom/android/camera/Device;->isUseNewFocusUI()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    check-cast p1, Lcom/android/camera/ui/FocusView;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    .line 159
    :goto_0
    return-void

    .restart local p1
    :cond_0
    move-object v2, p1

    .line 152
    check-cast v2, Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    iput-object v2, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    .line 153
    const v2, 0x7f0c0047

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 155
    .local v0, focusIndicator:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 156
    .local v1, layout:Landroid/view/ViewGroup$LayoutParams;
    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_INDICATOR_WIDTH:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    iget v2, p0, Lcom/android/camera/FocusManagerAbstract;->FOCUS_INDICATOR_HEIGHT:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method public setFrameView(Lcom/android/camera/ui/FrameView;)V
    .locals 0
    .parameter "frameView"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    .line 195
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 175
    iput-object p1, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 176
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "auto"

    iget-object v3, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/FocusManager;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mFocusAreaSupported:Z

    .line 179
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/FocusManager;->mMeteringAreaSupported:Z

    .line 180
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/camera/FocusManager;->mLockAeAwbNeeded:Z

    .line 182
    return-void

    :cond_2
    move v0, v2

    .line 176
    goto :goto_0

    :cond_3
    move v0, v2

    .line 179
    goto :goto_1
.end method

.method public setPreviewSize(II)V
    .locals 1
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 186
    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 187
    :cond_0
    iput p1, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewWidth:I

    .line 188
    iput p2, p0, Lcom/android/camera/FocusManagerAbstract;->mPreviewHeight:I

    .line 189
    invoke-virtual {p0}, Lcom/android/camera/FocusManager;->setMatrix()V

    .line 191
    :cond_1
    return-void
.end method

.method public updateFocusUI()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 800
    iget-boolean v3, p0, Lcom/android/camera/FocusManagerAbstract;->mInitialized:Z

    if-nez v3, :cond_1

    .line 825
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    iget v3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v3, v2, :cond_2

    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFrameView:Lcom/android/camera/ui/FrameView;

    .line 807
    .local v0, focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :goto_1
    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-nez v3, :cond_3

    .line 808
    invoke-interface {v0}, Lcom/android/camera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .line 805
    .end local v0           #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_2
    iget-object v0, p0, Lcom/android/camera/FocusManager;->mFocusIndicatorView:Lcom/android/camera/ui/FocusIndicator;

    goto :goto_1

    .line 809
    .restart local v0       #focusIndicator:Lcom/android/camera/ui/FocusIndicator;
    :cond_3
    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-eq v3, v2, :cond_4

    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    if-ne v3, v5, :cond_6

    .line 811
    :cond_4
    iget v3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v3, v5, :cond_5

    move v1, v2

    :cond_5
    invoke-interface {v0, v2, v1}, Lcom/android/camera/ui/FocusIndicator;->showStart(ZZ)V

    goto :goto_0

    .line 813
    :cond_6
    const-string v3, "continuous-picture"

    iget-object v4, p0, Lcom/android/camera/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 815
    iget v3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v3, v5, :cond_7

    move v1, v2

    :cond_7
    invoke-interface {v0, v2, v1}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(ZZ)V

    goto :goto_0

    .line 816
    :cond_8
    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    .line 817
    invoke-static {}, Lcom/android/camera/Device;->isUseNewFocusUI()Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-eq v3, v2, :cond_9

    iget v3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v3, v5, :cond_9

    move v3, v1

    :goto_2
    iget v4, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v4, v5, :cond_a

    :goto_3
    invoke-interface {v0, v3, v2}, Lcom/android/camera/ui/FocusIndicator;->showSuccess(ZZ)V

    goto :goto_0

    :cond_9
    move v3, v2

    goto :goto_2

    :cond_a
    move v2, v1

    goto :goto_3

    .line 821
    :cond_b
    iget v3, p0, Lcom/android/camera/FocusManagerAbstract;->mState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 822
    iget v3, p0, Lcom/android/camera/FocusManager;->mLastFocusFrom:I

    if-ne v3, v5, :cond_c

    move v1, v2

    :cond_c
    invoke-interface {v0, v2, v1}, Lcom/android/camera/ui/FocusIndicator;->showFail(ZZ)V

    goto :goto_0
.end method
