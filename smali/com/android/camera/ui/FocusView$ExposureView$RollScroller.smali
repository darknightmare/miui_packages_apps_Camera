.class Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;
.super Ljava/lang/Object;
.source "FocusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView$ExposureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RollScroller"
.end annotation


# instance fields
.field private mDuration:J

.field private mFinalOrientation:I

.field private mFinished:Z

.field private mMode:I

.field private mOrientation:I

.field private mStartTime:J

.field final synthetic this$1:Lcom/android/camera/ui/FocusView$ExposureView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FocusView$ExposureView;)V
    .locals 1
    .parameter

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 918
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    .line 919
    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 907
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mMode:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 907
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    return p1
.end method

.method private getInterpolation(F)F
    .locals 2
    .parameter "input"

    .prologue
    .line 977
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 978
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->getDecelerate(F)F

    move-result v0

    .line 980
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->getLinear(F)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public computeOffset()I
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 946
    iget-boolean v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    if-eqz v4, :cond_0

    .line 969
    :goto_0
    return v6

    .line 949
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mStartTime:J

    sub-long v1, v7, v9

    .line 950
    .local v1, duration:J
    iget-wide v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    cmp-long v4, v1, v7

    if-ltz v4, :cond_3

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    .line 951
    iget-wide v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    cmp-long v4, v1, v7

    if-lez v4, :cond_1

    .line 952
    iget-wide v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    .line 954
    :cond_1
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    int-to-float v4, v4

    long-to-float v7, v1

    iget-wide v8, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    long-to-float v8, v8

    div-float/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->getInterpolation(F)F

    move-result v7

    mul-float/2addr v4, v7

    float-to-double v7, v4

    const-wide/high16 v9, 0x3fe0

    add-double/2addr v7, v9

    double-to-int v0, v7

    .line 958
    .local v0, currentOrientation:I
    iget-boolean v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    iget v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    sub-int v3, v4, v7

    .line 960
    .local v3, offset:I
    :goto_2
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    .line 961
    iget-boolean v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    if-eqz v4, :cond_2

    .line 962
    iput v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    .line 963
    iput v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    .line 964
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mMode:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3200(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v4

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2500(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v5, :cond_2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mStartFlingIndex:I
    invoke-static {v5}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4700(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;
    invoke-static {v6}, Lcom/android/camera/ui/FocusView$ExposureView;->access$2500(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 966
    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3100(Lcom/android/camera/ui/FocusView$ExposureView;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    move v6, v3

    .line 969
    goto/16 :goto_0

    .end local v0           #currentOrientation:I
    .end local v3           #offset:I
    :cond_3
    move v4, v6

    .line 950
    goto :goto_1

    .line 958
    .restart local v0       #currentOrientation:I
    :cond_4
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    sub-int v3, v0, v4

    goto :goto_2
.end method

.method public fling(III)V
    .locals 8
    .parameter "velocity"
    .parameter "minOffset"
    .parameter "maxOffset"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 922
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mStartTime:J

    .line 923
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    .line 924
    const-wide/high16 v0, 0x3fe0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    iget-wide v4, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    long-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    .line 925
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    .line 926
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    .line 927
    iput v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    .line 928
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_0

    .line 929
    iput-boolean v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    .line 931
    :cond_0
    iput v7, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mMode:I

    .line 932
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->this$1:Lcom/android/camera/ui/FocusView$ExposureView;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I
    invoke-static {v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$3200(Lcom/android/camera/ui/FocusView$ExposureView;)I

    move-result v1

    #setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mStartFlingIndex:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$4702(Lcom/android/camera/ui/FocusView$ExposureView;I)I

    .line 933
    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    .line 934
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 973
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    return v0
.end method

.method public scroll(IJ)V
    .locals 3
    .parameter "offset"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 937
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mStartTime:J

    .line 938
    iput-wide p2, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mDuration:J

    .line 939
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinalOrientation:I

    .line 940
    iput v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mOrientation:I

    .line 941
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z

    .line 942
    iput v2, p0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mMode:I

    .line 943
    return-void
.end method
