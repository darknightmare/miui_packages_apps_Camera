.class Lcom/android/camera/ui/FocusView$ExposureView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView$ExposureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ui/FocusView$ExposureView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/FocusView$ExposureView;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "e"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 709
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z
    invoke-static {v2}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3600(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 710
    invoke-static {}, Lcom/android/camera/ModuleManager;->isCameraModule()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$100(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v4

    aget v4, v4, v1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$100(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v5

    aget v5, v5, v0

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    iget v5, v5, Lcom/android/camera/ui/FocusView$ExposureView;->mEVBigRadius:I

    int-to-float v5, v5

    const v6, 0x3ecccccd

    mul-float/2addr v5, v6

    #calls: Lcom/android/camera/ui/FocusView$ExposureView;->isInCicle(FFF)Z
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3700(Lcom/android/camera/ui/FocusView$ExposureView;FFF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 712
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;
    invoke-static {v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$000(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->onCaptureDown()V

    .line 713
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCaptured:Z
    invoke-static {v1, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$302(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z

    .line 722
    :cond_0
    :goto_0
    return v0

    .line 714
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$100(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v4

    aget v4, v4, v1

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$100(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v5

    aget v5, v5, v0

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3800(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3fa66666

    mul-float/2addr v5, v6

    #calls: Lcom/android/camera/ui/FocusView$ExposureView;->isInCicle(FFF)Z
    invoke-static {v2, v3, v4, v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3700(Lcom/android/camera/ui/FocusView$ExposureView;FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$100(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v5

    aget v1, v5, v1

    int-to-float v1, v1

    sub-float v1, v4, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$100(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v5

    aget v5, v5, v0

    int-to-float v5, v5

    sub-float/2addr v4, v5

    #calls: Lcom/android/camera/ui/FocusView$ExposureView;->getAngle(FF)I
    invoke-static {v3, v1, v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4000(Lcom/android/camera/ui/FocusView$ExposureView;FF)I

    move-result v1

    #setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I
    invoke-static {v2, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3902(Lcom/android/camera/ui/FocusView$ExposureView;I)I

    .line 716
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z
    invoke-static {v1, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3002(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z

    .line 717
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I
    invoke-static {v2}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3900(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v2

    #setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mLastTheta:I
    invoke-static {v1, v2}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4102(Lcom/android/camera/ui/FocusView$ExposureView;I)I

    .line 718
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #calls: Lcom/android/camera/ui/FocusView$ExposureView;->removeMessages()V
    invoke-static {v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4200(Lcom/android/camera/ui/FocusView$ExposureView;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 722
    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 687
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3000(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 688
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v7}, Lcom/android/camera/ui/FocusView$ExposureView;->access$100(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v7

    aget v7, v7, v2

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v8}, Lcom/android/camera/ui/FocusView$ExposureView;->access$100(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v8

    aget v8, v8, v4

    int-to-float v8, v8

    sub-float/2addr v7, v8

    #calls: Lcom/android/camera/ui/FocusView$ExposureView;->getTangenVelocity(FFFF)I
    invoke-static {v5, v6, v7, p3, p4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3500(Lcom/android/camera/ui/FocusView$ExposureView;FFFF)I

    move-result v3

    .line 691
    .local v3, velocity:I
    if-lez v3, :cond_2

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3200(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2500(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_0

    move v2, v4

    .line 693
    .local v2, needToIncrease:Z
    :cond_0
    :goto_0
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_1

    if-eqz v2, :cond_1

    .line 694
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2500(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3200(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v6

    sub-int/2addr v5, v6

    mul-int/lit8 v0, v5, 0x3c

    .line 696
    .local v0, max:I
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3200(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    neg-int v5, v5

    mul-int/lit8 v1, v5, 0x3c

    .line 698
    .local v1, min:I
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2600(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    move-result-object v5

    invoke-virtual {v5, v3, v1, v0}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->fling(III)V

    .line 699
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3100(Lcom/android/camera/ui/FocusView$ExposureView;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 701
    .end local v0           #max:I
    .end local v1           #min:I
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mScrolled:Z
    invoke-static {v5, v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$202(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z

    .line 704
    .end local v2           #needToIncrease:Z
    .end local v3           #velocity:I
    :goto_1
    return v4

    .line 691
    .restart local v3       #velocity:I
    :cond_2
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3200(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    if-lez v5, :cond_0

    move v2, v4

    goto :goto_0

    .end local v3           #velocity:I
    :cond_3
    move v4, v2

    .line 704
    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 728
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3000(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 729
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v7}, Lcom/android/camera/ui/FocusView$ExposureView;->access$100(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v7

    aget v7, v7, v3

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget-object v8, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v8}, Lcom/android/camera/ui/FocusView$ExposureView;->access$100(Lcom/android/camera/ui/FocusView$ExposureView;)[I

    move-result-object v8

    aget v8, v8, v4

    int-to-float v8, v8

    sub-float/2addr v7, v8

    #calls: Lcom/android/camera/ui/FocusView$ExposureView;->getAngle(FF)I
    invoke-static {v5, v6, v7}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4000(Lcom/android/camera/ui/FocusView$ExposureView;FF)I

    move-result v2

    .line 730
    .local v2, theta:I
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3900(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    if-eq v5, v2, :cond_3

    .line 731
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3900(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v6

    #setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mLastTheta:I
    invoke-static {v5, v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4102(Lcom/android/camera/ui/FocusView$ExposureView;I)I

    .line 732
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I
    invoke-static {v5, v2}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3902(Lcom/android/camera/ui/FocusView$ExposureView;I)I

    .line 733
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mLastTheta:I
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4100(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I
    invoke-static {v7}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3900(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v7

    #calls: Lcom/android/camera/ui/FocusView$ExposureView;->gettAngleOffset(II)I
    invoke-static {v5, v6, v7}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4300(Lcom/android/camera/ui/FocusView$ExposureView;II)I

    move-result v0

    .line 735
    .local v0, delta:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3600(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 751
    .end local v0           #delta:I
    .end local v2           #theta:I
    :cond_0
    :goto_0
    return v3

    .line 737
    .restart local v0       #delta:I
    .restart local v2       #theta:I
    :cond_1
    if-lez v0, :cond_5

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3200(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2500(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_4

    move v1, v4

    .line 739
    .local v1, needToIncrease:Z
    :goto_1
    if-eqz v1, :cond_7

    .line 740
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mOutOfRange:Z
    invoke-static {v5, v3}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4402(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z

    .line 741
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #calls: Lcom/android/camera/ui/FocusView$ExposureView;->performRolling(I)V
    invoke-static {v3, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2700(Lcom/android/camera/ui/FocusView$ExposureView;I)V

    .line 747
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mScrolled:Z
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$202(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z

    .end local v0           #delta:I
    .end local v1           #needToIncrease:Z
    :cond_3
    move v3, v4

    .line 749
    goto :goto_0

    .restart local v0       #delta:I
    :cond_4
    move v1, v3

    .line 737
    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3200(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    if-lez v5, :cond_6

    move v1, v4

    goto :goto_1

    :cond_6
    move v1, v3

    goto :goto_1

    .line 742
    .restart local v1       #needToIncrease:Z
    :cond_7
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mOutOfRange:Z
    invoke-static {v3}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4400(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 743
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mOutOfRange:Z
    invoke-static {v3, v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4402(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z

    .line 744
    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$2;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    if-lez v0, :cond_8

    const/16 v3, 0x1d

    :goto_3
    #calls: Lcom/android/camera/ui/FocusView$ExposureView;->performRolling(I)V
    invoke-static {v5, v3}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2700(Lcom/android/camera/ui/FocusView$ExposureView;I)V

    goto :goto_2

    :cond_8
    const/16 v3, -0x1d

    goto :goto_3
.end method
