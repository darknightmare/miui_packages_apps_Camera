.class Lcom/android/camera/ui/WheelView$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/WheelView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/WheelView;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 543
    iget-object v1, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mIsScrollingPerformed:Z
    invoke-static {v1}, Lcom/android/camera/ui/WheelView;->access$000(Lcom/android/camera/ui/WheelView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/android/camera/ui/WheelView;->access$100(Lcom/android/camera/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 545
    iget-object v1, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #calls: Lcom/android/camera/ui/WheelView;->clearMessages()V
    invoke-static {v1}, Lcom/android/camera/ui/WheelView;->access$200(Lcom/android/camera/ui/WheelView;)V

    .line 549
    :goto_0
    return v0

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #calls: Lcom/android/camera/ui/WheelView;->invalidateLayouts()V
    invoke-static {v0}, Lcom/android/camera/ui/WheelView;->access$300(Lcom/android/camera/ui/WheelView;)V

    .line 549
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v1, 0x0

    .line 559
    iget-object v0, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    iget-object v2, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mCurrentItem:I
    invoke-static {v2}, Lcom/android/camera/ui/WheelView;->access$700(Lcom/android/camera/ui/WheelView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #calls: Lcom/android/camera/ui/WheelView;->getItemHeight()I
    invoke-static {v3}, Lcom/android/camera/ui/WheelView;->access$800(Lcom/android/camera/ui/WheelView;)I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mScrollingOffset:I
    invoke-static {v3}, Lcom/android/camera/ui/WheelView;->access$900(Lcom/android/camera/ui/WheelView;)I

    move-result v3

    add-int/2addr v2, v3

    #setter for: Lcom/android/camera/ui/WheelView;->mLastScrollY:I
    invoke-static {v0, v2}, Lcom/android/camera/ui/WheelView;->access$602(Lcom/android/camera/ui/WheelView;I)I

    .line 560
    iget-object v0, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mIsCyclic:Z
    invoke-static {v0}, Lcom/android/camera/ui/WheelView;->access$1000(Lcom/android/camera/ui/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v8, 0x7fffffff

    .line 561
    .local v8, maxY:I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mIsCyclic:Z
    invoke-static {v0}, Lcom/android/camera/ui/WheelView;->access$1000(Lcom/android/camera/ui/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_1

    neg-int v7, v8

    .line 562
    .local v7, minY:I
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/android/camera/ui/WheelView;->access$100(Lcom/android/camera/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mLastScrollY:I
    invoke-static {v2}, Lcom/android/camera/ui/WheelView;->access$600(Lcom/android/camera/ui/WheelView;)I

    move-result v2

    neg-float v3, p4

    float-to-int v3, v3

    div-int/lit8 v4, v3, 0x2

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 563
    iget-object v0, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #calls: Lcom/android/camera/ui/WheelView;->setNextMessage(I)V
    invoke-static {v0, v1}, Lcom/android/camera/ui/WheelView;->access$1200(Lcom/android/camera/ui/WheelView;I)V

    .line 564
    const/4 v0, 0x1

    return v0

    .line 560
    .end local v7           #minY:I
    .end local v8           #maxY:I
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mAdapter:Lcom/android/camera/ui/WheelAdapter;
    invoke-static {v0}, Lcom/android/camera/ui/WheelView;->access$1100(Lcom/android/camera/ui/WheelView;)Lcom/android/camera/ui/WheelAdapter;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/WheelAdapter;->getItemsCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #calls: Lcom/android/camera/ui/WheelView;->getItemHeight()I
    invoke-static {v2}, Lcom/android/camera/ui/WheelView;->access$800(Lcom/android/camera/ui/WheelView;)I

    move-result v2

    mul-int v8, v0, v2

    goto :goto_0

    .restart local v8       #maxY:I
    :cond_1
    move v7, v1

    .line 561
    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    #calls: Lcom/android/camera/ui/WheelView;->startScrolling()V
    invoke-static {v0}, Lcom/android/camera/ui/WheelView;->access$400(Lcom/android/camera/ui/WheelView;)V

    .line 554
    iget-object v0, p0, Lcom/android/camera/ui/WheelView$1;->this$0:Lcom/android/camera/ui/WheelView;

    neg-float v1, p4

    float-to-int v1, v1

    #calls: Lcom/android/camera/ui/WheelView;->doScroll(I)V
    invoke-static {v0, v1}, Lcom/android/camera/ui/WheelView;->access$500(Lcom/android/camera/ui/WheelView;I)V

    .line 555
    const/4 v0, 0x1

    return v0
.end method
