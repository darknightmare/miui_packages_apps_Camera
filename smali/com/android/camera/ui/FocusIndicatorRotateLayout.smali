.class public Lcom/android/camera/ui/FocusIndicatorRotateLayout;
.super Lcom/android/camera/ui/RotateLayout;
.source "FocusIndicatorRotateLayout.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusIndicatorRotateLayout$1;,
        Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;,
        Lcom/android/camera/ui/FocusIndicatorRotateLayout$StartAction;
    }
.end annotation


# instance fields
.field private mDisappear:Ljava/lang/Runnable;

.field private mStartAction:Ljava/lang/Runnable;

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout$Disappear;-><init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;Lcom/android/camera/ui/FocusIndicatorRotateLayout$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$StartAction;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout$StartAction;-><init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;Lcom/android/camera/ui/FocusIndicatorRotateLayout$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mStartAction:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/FocusIndicatorRotateLayout;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    return p1
.end method

.method private setDrawable(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 45
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 81
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mStartAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 83
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 84
    return-void
.end method

.method public showFail(ZZ)V
    .locals 3
    .parameter "timeout"
    .parameter "isTouchFocus"

    .prologue
    .line 71
    iget v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 72
    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    :cond_0
    return-void
.end method

.method public showStart(ZZ)V
    .locals 3
    .parameter "timeout"
    .parameter "isTouchFocus"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mStartAction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 51
    const v0, 0x7f0200e6

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setDrawable(I)V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    .line 53
    if-eqz p1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mStartAction:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    :cond_0
    return-void
.end method

.method public showSuccess(ZZ)V
    .locals 3
    .parameter "timeout"
    .parameter "isTouchFocus"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    const v0, 0x7f0200e5

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->setDrawable(I)V

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I

    .line 63
    if-eqz p1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 67
    :cond_0
    return-void
.end method
