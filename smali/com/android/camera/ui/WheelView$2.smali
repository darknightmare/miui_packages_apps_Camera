.class Lcom/android/camera/ui/WheelView$2;
.super Landroid/os/Handler;
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
    .line 579
    iput-object p1, p0, Lcom/android/camera/ui/WheelView$2;->this$0:Lcom/android/camera/ui/WheelView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 581
    iget-object v2, p0, Lcom/android/camera/ui/WheelView$2;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/android/camera/ui/WheelView;->access$100(Lcom/android/camera/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 582
    iget-object v2, p0, Lcom/android/camera/ui/WheelView$2;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/android/camera/ui/WheelView;->access$100(Lcom/android/camera/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 583
    .local v0, currY:I
    iget-object v2, p0, Lcom/android/camera/ui/WheelView$2;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mLastScrollY:I
    invoke-static {v2}, Lcom/android/camera/ui/WheelView;->access$600(Lcom/android/camera/ui/WheelView;)I

    move-result v2

    sub-int v1, v2, v0

    .line 584
    .local v1, delta:I
    iget-object v2, p0, Lcom/android/camera/ui/WheelView$2;->this$0:Lcom/android/camera/ui/WheelView;

    #setter for: Lcom/android/camera/ui/WheelView;->mLastScrollY:I
    invoke-static {v2, v0}, Lcom/android/camera/ui/WheelView;->access$602(Lcom/android/camera/ui/WheelView;I)I

    .line 585
    if-eqz v1, :cond_0

    .line 586
    iget-object v2, p0, Lcom/android/camera/ui/WheelView$2;->this$0:Lcom/android/camera/ui/WheelView;

    #calls: Lcom/android/camera/ui/WheelView;->doScroll(I)V
    invoke-static {v2, v1}, Lcom/android/camera/ui/WheelView;->access$500(Lcom/android/camera/ui/WheelView;I)V

    .line 591
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/WheelView$2;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/android/camera/ui/WheelView;->access$100(Lcom/android/camera/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 592
    iget-object v2, p0, Lcom/android/camera/ui/WheelView$2;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/android/camera/ui/WheelView;->access$100(Lcom/android/camera/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    .line 593
    iget-object v2, p0, Lcom/android/camera/ui/WheelView$2;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/android/camera/ui/WheelView;->access$100(Lcom/android/camera/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 595
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/WheelView$2;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->mScroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/android/camera/ui/WheelView;->access$100(Lcom/android/camera/ui/WheelView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 596
    iget-object v2, p0, Lcom/android/camera/ui/WheelView$2;->this$0:Lcom/android/camera/ui/WheelView;

    #getter for: Lcom/android/camera/ui/WheelView;->animationHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/ui/WheelView;->access$1300(Lcom/android/camera/ui/WheelView;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 602
    :goto_0
    return-void

    .line 597
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_3

    .line 598
    iget-object v2, p0, Lcom/android/camera/ui/WheelView$2;->this$0:Lcom/android/camera/ui/WheelView;

    #calls: Lcom/android/camera/ui/WheelView;->justify()V
    invoke-static {v2}, Lcom/android/camera/ui/WheelView;->access$1400(Lcom/android/camera/ui/WheelView;)V

    goto :goto_0

    .line 600
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/WheelView$2;->this$0:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v2}, Lcom/android/camera/ui/WheelView;->finishScrolling()V

    goto :goto_0
.end method
