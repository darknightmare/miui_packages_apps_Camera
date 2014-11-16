.class public Lcom/android/camera/ui/EvControlBar;
.super Landroid/widget/RelativeLayout;
.source "EvControlBar.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/EvControlBar$OnEvChangedListener;
    }
.end annotation


# instance fields
.field private mBar:Landroid/view/View;

.field private mDisableMoveRunnable:Ljava/lang/Runnable;

.field private mDown:Z

.field private mEndPosition:I

.field private mEvIn:Landroid/widget/ImageView;

.field private mEvIndex:I

.field private mEvMax:I

.field private mEvOut:Landroid/widget/ImageView;

.field private mEvSlider:Landroid/widget/ImageView;

.field private mIconSize:I

.field private mListener:Lcom/android/camera/ui/EvControlBar$OnEvChangedListener;

.field private mSize:I

.field private mSliderLength:I

.field private mSliderPosition:I

.field private mSliderSize:I

.field private mStartPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/EvControlBar;->mSliderPosition:I

    .line 169
    new-instance v0, Lcom/android/camera/ui/EvControlBar$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/EvControlBar$1;-><init>(Lcom/android/camera/ui/EvControlBar;)V

    iput-object v0, p0, Lcom/android/camera/ui/EvControlBar;->mDisableMoveRunnable:Ljava/lang/Runnable;

    .line 44
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/EvControlBar;->mBar:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/EvControlBar;->mBar:Landroid/view/View;

    const v1, 0x7f020197

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 46
    iget-object v0, p0, Lcom/android/camera/ui/EvControlBar;->mBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EvControlBar;->addView(Landroid/view/View;)V

    .line 47
    const v0, 0x7f020198

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/EvControlBar;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EvControlBar;->mEvIn:Landroid/widget/ImageView;

    .line 48
    const v0, 0x7f02019a

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/EvControlBar;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EvControlBar;->mEvSlider:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f020199

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/EvControlBar;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/EvControlBar;->mEvOut:Landroid/widget/ImageView;

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/ui/EvControlBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-boolean p1, p0, Lcom/android/camera/ui/EvControlBar;->mDown:Z

    return p1
.end method

.method private addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 3
    .parameter "context"
    .parameter "iconResourceId"

    .prologue
    .line 138
    new-instance v0, Lcom/android/camera/ui/RotateImageView;

    invoke-direct {v0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 140
    const v1, 0x7f02019a

    if-ne p2, v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/camera/ui/EvControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 147
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EvControlBar;->addView(Landroid/view/View;)V

    .line 148
    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/EvControlBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0130

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getSliderPosition(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 68
    move v0, p1

    .line 69
    .local v0, pos:I
    iget v1, p0, Lcom/android/camera/ui/EvControlBar;->mStartPosition:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/EvControlBar;->mStartPosition:I

    .line 70
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/EvControlBar;->mEndPosition:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/android/camera/ui/EvControlBar;->mEndPosition:I

    .line 71
    :cond_1
    return v0
.end method

.method private performEv(D)V
    .locals 4
    .parameter "evPercentage"

    .prologue
    .line 178
    iget v1, p0, Lcom/android/camera/ui/EvControlBar;->mEvMax:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v0, v1

    .line 179
    .local v0, index:I
    iget v1, p0, Lcom/android/camera/ui/EvControlBar;->mEvMax:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iget v2, p0, Lcom/android/camera/ui/EvControlBar;->mEvIndex:I

    iget v3, p0, Lcom/android/camera/ui/EvControlBar;->mEvMax:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/EvControlBar;->mEvIndex:I

    iget v2, p0, Lcom/android/camera/ui/EvControlBar;->mEvMax:I

    div-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_0

    .line 181
    iget v1, p0, Lcom/android/camera/ui/EvControlBar;->mEvMax:I

    div-int/lit8 v0, v1, 0x2

    .line 182
    iget-object v1, p0, Lcom/android/camera/ui/EvControlBar;->mDisableMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/EvControlBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 183
    iget-object v1, p0, Lcom/android/camera/ui/EvControlBar;->mDisableMoveRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/ui/EvControlBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/ui/EvControlBar;->mDown:Z

    .line 186
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/EvControlBar;->mEvIndex:I

    if-ne v1, v0, :cond_2

    .line 193
    :cond_1
    :goto_0
    return-void

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/EvControlBar;->mListener:Lcom/android/camera/ui/EvControlBar$OnEvChangedListener;

    if-eqz v1, :cond_1

    .line 188
    iget v1, p0, Lcom/android/camera/ui/EvControlBar;->mEvMax:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/ui/EvControlBar;->mEvMax:I

    .line 189
    :cond_3
    if-gez v0, :cond_4

    const/4 v0, 0x0

    .line 190
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ui/EvControlBar;->mListener:Lcom/android/camera/ui/EvControlBar$OnEvChangedListener;

    invoke-interface {v1, v0}, Lcom/android/camera/ui/EvControlBar$OnEvChangedListener;->onEvValueChanged(I)V

    .line 191
    iput v0, p0, Lcom/android/camera/ui/EvControlBar;->mEvIndex:I

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/EvControlBar;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/camera/ui/EvControlBar;->mSize:I

    if-nez v5, :cond_2

    :cond_0
    move v3, v4

    .line 113
    :cond_1
    :goto_0
    return v3

    .line 87
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 89
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/EvControlBar;->setActivated(Z)V

    .line 100
    iget-object v4, p0, Lcom/android/camera/ui/EvControlBar;->mDisableMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/EvControlBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 101
    iput-boolean v3, p0, Lcom/android/camera/ui/EvControlBar;->mDown:Z

    .line 103
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/camera/ui/EvControlBar;->mDown:Z

    if-eqz v4, :cond_1

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget v5, p0, Lcom/android/camera/ui/EvControlBar;->mSliderSize:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/android/camera/ui/EvControlBar;->getSliderPosition(I)I

    move-result v2

    .line 105
    .local v2, pos:I
    iget v4, p0, Lcom/android/camera/ui/EvControlBar;->mSliderPosition:I

    sub-int v1, v4, v2

    .line 106
    .local v1, delta:I
    const/16 v4, 0x8

    if-gt v1, v4, :cond_3

    const/4 v4, -0x8

    if-ge v1, v4, :cond_3

    .line 109
    :cond_3
    const-wide/high16 v4, 0x3ff0

    iget v6, p0, Lcom/android/camera/ui/EvControlBar;->mStartPosition:I

    sub-int v6, v2, v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/android/camera/ui/EvControlBar;->mSliderLength:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/EvControlBar;->performEv(D)V

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/ui/EvControlBar;->requestLayout()V

    goto :goto_0

    .line 93
    .end local v1           #delta:I
    .end local v2           #pos:I
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/EvControlBar;->setActivated(Z)V

    .line 94
    iget-object v5, p0, Lcom/android/camera/ui/EvControlBar;->mDisableMoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/EvControlBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 95
    iput-boolean v4, p0, Lcom/android/camera/ui/EvControlBar;->mDown:Z

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v7, 0x0

    .line 119
    iget v3, p0, Lcom/android/camera/ui/EvControlBar;->mEvMax:I

    if-nez v3, :cond_0

    .line 130
    :goto_0
    return-void

    .line 120
    :cond_0
    sub-int v1, p5, p3

    .line 121
    .local v1, size:I
    iget v3, p0, Lcom/android/camera/ui/EvControlBar;->mSliderLength:I

    int-to-double v3, v3

    iget v5, p0, Lcom/android/camera/ui/EvControlBar;->mEvIndex:I

    int-to-double v5, v5

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/EvControlBar;->mEvMax:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    iget v5, p0, Lcom/android/camera/ui/EvControlBar;->mStartPosition:I

    int-to-double v5, v5

    add-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/EvControlBar;->mSliderPosition:I

    .line 122
    iget-object v3, p0, Lcom/android/camera/ui/EvControlBar;->mEvSlider:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    .line 123
    .local v2, sliderWidth:I
    iget-object v3, p0, Lcom/android/camera/ui/EvControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/EvControlBar;->mEvSlider:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    .line 125
    .local v0, paddingTop:I
    iget-object v3, p0, Lcom/android/camera/ui/EvControlBar;->mBar:Landroid/view/View;

    iget v4, p0, Lcom/android/camera/ui/EvControlBar;->mIconSize:I

    iget v5, p0, Lcom/android/camera/ui/EvControlBar;->mPaddingLeft:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/EvControlBar;->mSize:I

    iget v6, p0, Lcom/android/camera/ui/EvControlBar;->mIconSize:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/EvControlBar;->mPaddingLeft:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v7, v5, v1}, Landroid/view/View;->layout(IIII)V

    .line 126
    iget-object v3, p0, Lcom/android/camera/ui/EvControlBar;->mEvOut:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/camera/ui/EvControlBar;->mPaddingLeft:I

    iget v5, p0, Lcom/android/camera/ui/EvControlBar;->mIconSize:I

    iget v6, p0, Lcom/android/camera/ui/EvControlBar;->mPaddingLeft:I

    add-int/2addr v5, v6

    invoke-virtual {v3, v4, v7, v5, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 127
    iget-object v3, p0, Lcom/android/camera/ui/EvControlBar;->mEvIn:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/camera/ui/EvControlBar;->mSize:I

    iget v5, p0, Lcom/android/camera/ui/EvControlBar;->mIconSize:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/EvControlBar;->mPaddingRight:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/EvControlBar;->mSize:I

    iget v6, p0, Lcom/android/camera/ui/EvControlBar;->mPaddingRight:I

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v7, v5, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 128
    iget-object v3, p0, Lcom/android/camera/ui/EvControlBar;->mEvSlider:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/camera/ui/EvControlBar;->mSliderPosition:I

    iget v5, p0, Lcom/android/camera/ui/EvControlBar;->mSliderPosition:I

    add-int/2addr v5, v2

    add-int v6, v1, v0

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/EvControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 65
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 76
    iput p1, p0, Lcom/android/camera/ui/EvControlBar;->mSize:I

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/EvControlBar;->mEvIn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EvControlBar;->mIconSize:I

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/EvControlBar;->mEvSlider:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EvControlBar;->mSliderSize:I

    .line 79
    iget v0, p0, Lcom/android/camera/ui/EvControlBar;->mIconSize:I

    iget v1, p0, Lcom/android/camera/ui/EvControlBar;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/EvControlBar;->mStartPosition:I

    .line 80
    iget v0, p0, Lcom/android/camera/ui/EvControlBar;->mSize:I

    iget v1, p0, Lcom/android/camera/ui/EvControlBar;->mIconSize:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/EvControlBar;->mPaddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/EvControlBar;->mSliderSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/EvControlBar;->mEndPosition:I

    .line 81
    iget v0, p0, Lcom/android/camera/ui/EvControlBar;->mEndPosition:I

    iget v1, p0, Lcom/android/camera/ui/EvControlBar;->mStartPosition:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/EvControlBar;->mSliderLength:I

    .line 82
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/EvControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/EvControlBar;->mEvIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/EvControlBar;->mEvOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 58
    return-void
.end method

.method public setEvIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 161
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/EvControlBar;->mEvMax:I

    if-le p1, v0, :cond_1

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/EvControlBar;->mEvIndex:I

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/EvControlBar;->mSliderPosition:I

    .line 166
    invoke-virtual {p0}, Lcom/android/camera/ui/EvControlBar;->requestLayout()V

    .line 167
    return-void
.end method

.method public setEvMax(I)V
    .locals 0
    .parameter "evMax"

    .prologue
    .line 152
    iput p1, p0, Lcom/android/camera/ui/EvControlBar;->mEvMax:I

    .line 153
    invoke-virtual {p0}, Lcom/android/camera/ui/EvControlBar;->requestLayout()V

    .line 154
    return-void
.end method

.method public setOnEvChangeListener(Lcom/android/camera/ui/EvControlBar$OnEvChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/camera/ui/EvControlBar;->mListener:Lcom/android/camera/ui/EvControlBar$OnEvChangedListener;

    .line 158
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 135
    return-void
.end method
