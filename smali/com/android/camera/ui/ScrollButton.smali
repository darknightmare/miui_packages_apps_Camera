.class public Lcom/android/camera/ui/ScrollButton;
.super Landroid/widget/RelativeLayout;
.source "ScrollButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;
    }
.end annotation


# instance fields
.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mCameraIcon:Lcom/android/camera/ui/RotateImageView;

.field private mChecked:Z

.field private mCurrentAnimationTime:J

.field private mFrame:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mLastPointX:I

.field private mOnCheckedChangedListener:Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;

.field private mOriginalTouchPointX:I

.field private mPaused:Z

.field private mSlider:Lcom/android/camera/ui/RotateImageView;

.field private mSliderEndPosition:I

.field private mSliderMoved:Z

.field private mSliderOffset:I

.field private mSliderWidth:I

.field private mSoundView:Landroid/view/View;

.field private mTapThreshold:I

.field private mTracking:Z

.field private mVideoIcon:Lcom/android/camera/ui/RotateImageView;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v0, p0, Lcom/android/camera/ui/ScrollButton;->mPaused:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/camera/ui/ScrollButton;->mChecked:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/camera/ui/ScrollButton;->mAnimating:Z

    .line 48
    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/android/camera/ui/ScrollButton;->mAnimatedVelocity:F

    .line 55
    new-instance v0, Lcom/android/camera/ui/ScrollButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/ScrollButton$1;-><init>(Lcom/android/camera/ui/ScrollButton;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mOnCheckedChangedListener:Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;

    .line 84
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSoundView:Landroid/view/View;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/ScrollButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->doAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ScrollButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ScrollButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ScrollButton;)Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mOnCheckedChangedListener:Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ScrollButton;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSoundView:Landroid/view/View;

    return-object v0
.end method

.method private animateOff()V
    .locals 1

    .prologue
    .line 205
    const/high16 v0, -0x3d38

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ScrollButton;->performFling(F)V

    .line 206
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->invalidate()V

    .line 207
    return-void
.end method

.method private animateOn()V
    .locals 1

    .prologue
    .line 200
    const/high16 v0, 0x42c8

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ScrollButton;->performFling(F)V

    .line 201
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->invalidate()V

    .line 202
    return-void
.end method

.method private animateToggle()V
    .locals 1

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateOff()V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateOn()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 254
    iget-boolean v0, p0, Lcom/android/camera/ui/ScrollButton;->mAnimating:Z

    if-nez v0, :cond_0

    .line 268
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->incrementAnimation()V

    .line 258
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/ScrollButton;->moveSlider(I)V

    .line 259
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    iget v1, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    if-lt v0, v1, :cond_2

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 261
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 262
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 263
    iput-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mAnimating:Z

    goto :goto_0

    .line 265
    :cond_2
    iget-wide v0, p0, Lcom/android/camera/ui/ScrollButton;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/camera/ui/ScrollButton;->mCurrentAnimationTime:J

    .line 266
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/ui/ScrollButton;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private incrementAnimation()V
    .locals 6

    .prologue
    .line 271
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 272
    .local v0, now:J
    iget-wide v4, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationLastTime:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a

    div-float v3, v4, v5

    .line 273
    .local v3, t:F
    iget v2, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationPosition:F

    .line 274
    .local v2, position:F
    iget v4, p0, Lcom/android/camera/ui/ScrollButton;->mAnimatedVelocity:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    iput v4, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationPosition:F

    .line 275
    iput-wide v0, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationLastTime:J

    .line 276
    return-void
.end method

.method private moveSlider(I)V
    .locals 2
    .parameter "offsetX"

    .prologue
    .line 211
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    .line 212
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    if-gez v0, :cond_1

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    .line 217
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->invalidate()V

    .line 218
    return-void

    .line 214
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    iget v1, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    if-le v0, v1, :cond_0

    .line 215
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    iput v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    goto :goto_0
.end method

.method private performFling(F)V
    .locals 6
    .parameter "velocity"

    .prologue
    const/4 v4, 0x0

    .line 243
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ui/ScrollButton;->mAnimating:Z

    .line 244
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationPosition:F

    .line 245
    iput p1, p0, Lcom/android/camera/ui/ScrollButton;->mAnimatedVelocity:F

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 247
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/camera/ui/ScrollButton;->mAnimationLastTime:J

    .line 248
    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/camera/ui/ScrollButton;->mCurrentAnimationTime:J

    .line 249
    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 250
    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/ui/ScrollButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/camera/ui/ScrollButton;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 251
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 232
    iget-boolean v1, p0, Lcom/android/camera/ui/ScrollButton;->mChecked:Z

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 90
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    iget v1, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateImageView;->setX(F)V

    .line 308
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 309
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 95
    const v2, 0x7f0c0030

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ScrollButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mFrame:Landroid/widget/ImageView;

    .line 96
    const v2, 0x7f0c0033

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ScrollButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    .line 97
    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mSoundView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ScrollButton;->addView(Landroid/view/View;)V

    .line 98
    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mSoundView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mSoundView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v2, 0x7f0c0031

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ScrollButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mCameraIcon:Lcom/android/camera/ui/RotateImageView;

    .line 101
    const v2, 0x7f0c0032

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ScrollButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/RotateImageView;

    iput-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mVideoIcon:Lcom/android/camera/ui/RotateImageView;

    .line 103
    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton;->mFrame:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 104
    .local v1, frameDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 107
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/ScrollButton;->setDrawingCacheEnabled(Z)V

    .line 108
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mWidth:I

    .line 109
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mHeight:I

    .line 111
    iget v2, p0, Lcom/android/camera/ui/ScrollButton;->mWidth:I

    iget-object v3, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3}, Lcom/android/camera/ui/RotateImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mSliderWidth:I

    .line 112
    iget v2, p0, Lcom/android/camera/ui/ScrollButton;->mWidth:I

    iget v3, p0, Lcom/android/camera/ui/ScrollButton;->mSliderWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    .line 113
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 114
    .local v0, density:F
    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mTapThreshold:I

    .line 115
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->invalidate()V

    .line 116
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->requestLayout()V

    goto :goto_0
.end method

.method public onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 300
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/ScrollButton;->mPaused:Z

    .line 301
    return-void

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v2, 0x4000

    .line 237
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mWidth:I

    iget v1, p0, Lcom/android/camera/ui/ScrollButton;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScrollButton;->setMeasuredDimension(II)V

    .line 238
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScrollButton;->mHeight:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 240
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 188
    :goto_0
    return v4

    .line 124
    :cond_0
    iget-boolean v6, p0, Lcom/android/camera/ui/ScrollButton;->mPaused:Z

    if-eqz v6, :cond_1

    .line 125
    iget-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mChecked:Z

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ScrollButton;->setChecked(Z)V

    move v4, v5

    .line 126
    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 129
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 130
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 131
    .local v3, y:I
    new-instance v1, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    iget v7, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    iget v8, p0, Lcom/android/camera/ui/ScrollButton;->mSliderWidth:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/camera/ui/ScrollButton;->mHeight:I

    invoke-direct {v1, v6, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 133
    .local v1, sliderFrame:Landroid/graphics/Rect;
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v4, v5

    .line 188
    goto :goto_0

    .line 135
    :pswitch_0
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 136
    iput-boolean v5, p0, Lcom/android/camera/ui/ScrollButton;->mTracking:Z

    .line 137
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->invalidate()V

    .line 141
    :goto_2
    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mLastPointX:I

    .line 142
    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mOriginalTouchPointX:I

    .line 143
    iput-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mSliderMoved:Z

    goto :goto_1

    .line 139
    :cond_3
    iput-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mTracking:Z

    goto :goto_2

    .line 147
    :pswitch_1
    iget-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mTracking:Z

    if-eqz v4, :cond_2

    .line 148
    iget v4, p0, Lcom/android/camera/ui/ScrollButton;->mLastPointX:I

    sub-int v4, v2, v4

    invoke-direct {p0, v4}, Lcom/android/camera/ui/ScrollButton;->moveSlider(I)V

    .line 149
    iput v2, p0, Lcom/android/camera/ui/ScrollButton;->mLastPointX:I

    .line 150
    iget v4, p0, Lcom/android/camera/ui/ScrollButton;->mOriginalTouchPointX:I

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v6, p0, Lcom/android/camera/ui/ScrollButton;->mTapThreshold:I

    if-lt v4, v6, :cond_2

    .line 151
    iput-boolean v5, p0, Lcom/android/camera/ui/ScrollButton;->mSliderMoved:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 158
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/camera/ui/ScrollButton;->mTracking:Z

    if-eqz v6, :cond_6

    .line 159
    iget-boolean v6, p0, Lcom/android/camera/ui/ScrollButton;->mSliderMoved:Z

    if-nez v6, :cond_4

    .line 160
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateToggle()V

    .line 171
    :goto_3
    iput-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mTracking:Z

    .line 172
    iput-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mSliderMoved:Z

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 162
    :cond_4
    iget v6, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    if-ltz v6, :cond_5

    iget v6, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    iget v7, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    div-int/lit8 v7, v7, 0x2

    if-gt v6, v7, :cond_5

    .line 163
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateOff()V

    goto :goto_3

    .line 165
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateOn()V

    goto :goto_3

    .line 169
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateToggle()V

    goto :goto_3

    .line 177
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 178
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateOn()V

    .line 182
    :goto_4
    iput-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mTracking:Z

    .line 183
    iput-boolean v4, p0, Lcom/android/camera/ui/ScrollButton;->mSliderMoved:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 180
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/ui/ScrollButton;->animateOff()V

    goto :goto_4

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setCameraIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mCameraIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/android/camera/ui/ScrollButton;->mChecked:Z

    .line 223
    if-eqz p1, :cond_0

    .line 224
    iget v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I

    iput v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    .line 228
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScrollButton;->invalidate()V

    .line 229
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 321
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 322
    return-void
.end method

.method public setFrameBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mFrame:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 292
    return-void
.end method

.method public setOnCheckedChangedListener(Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/camera/ui/ScrollButton;->mOnCheckedChangedListener:Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;

    .line 80
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(I)V

    .line 314
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mCameraIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(I)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mVideoIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setOrientation(I)V

    .line 316
    return-void
.end method

.method public setSliderBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 297
    return-void
.end method

.method public setSliderDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mSlider:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    return-void
.end method

.method public setVideoIconDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/camera/ui/ScrollButton;->mVideoIcon:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    return-void
.end method
