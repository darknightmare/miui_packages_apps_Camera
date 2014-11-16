.class Lcom/android/camera/ui/FocusView$ExposureView;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExposureView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;
    }
.end annotation


# instance fields
.field private final DELTA_FOR_OUTRANGE:I

.field private final DISAPPEAR_TIME:I

.field private final ITEM_ANGLE:I

.field private final MSG_DISAPPEAR:I

.field private final MSG_REGRESS:I

.field private final MSG_SCROLL:I

.field private mAdapter:Lcom/android/camera/ui/RollAdapter;

.field private mCaptureBitmap:Landroid/graphics/Bitmap;

.field private mCaptured:Z

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentItem:I

.field private mDraw:Z

.field mEVBigAlpha:I

.field mEVBigRadius:I

.field mEVSmallAlpha:I

.field mEVSmallLineWidth:I

.field mEVSmallRadius:I

.field private mEvChanged:Z

.field private mExposureStep:F

.field private mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGraduationBitmap:Landroid/graphics/Bitmap;

.field private mGraduationPaint:Landroid/graphics/Paint;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIsDown:Z

.field private mLastTheta:I

.field private mMaxRadius:I

.field private mOrientation:I

.field private mOutOfRange:Z

.field private mRatation:I

.field private mRelativeLocation:[I

.field private mRollingDelta:I

.field private mScrolled:Z

.field private mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mStartFlingIndex:I

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTheta:I

.field private mTimeout:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/android/camera/ui/FocusView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FocusView;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 432
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 382
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->DISAPPEAR_TIME:I

    .line 384
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->ITEM_ANGLE:I

    .line 385
    const/16 v0, 0x1d

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->DELTA_FOR_OUTRANGE:I

    .line 387
    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->MSG_SCROLL:I

    .line 388
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->MSG_DISAPPEAR:I

    .line 389
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->MSG_REGRESS:I

    .line 548
    new-instance v0, Lcom/android/camera/ui/FocusView$ExposureView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$ExposureView$1;-><init>(Lcom/android/camera/ui/FocusView$ExposureView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    .line 683
    new-instance v0, Lcom/android/camera/ui/FocusView$ExposureView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$ExposureView$2;-><init>(Lcom/android/camera/ui/FocusView$ExposureView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 433
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationPaint:Landroid/graphics/Paint;

    .line 434
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 436
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    .line 437
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 438
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 439
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4190

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 440
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 441
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 443
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextBounds:Landroid/graphics/Rect;

    .line 444
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 445
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 447
    new-instance v0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;-><init>(Lcom/android/camera/ui/FocusView$ExposureView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    .line 449
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mWidth:I

    .line 450
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHeight:I

    .line 451
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I

    .line 452
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    .line 453
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    .line 454
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FocusView$ExposureView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/FocusView$ExposureView;[I)[I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FocusView$ExposureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScrolled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScrolled:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/ui/FocusView$ExposureView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->performRolling(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/ui/FocusView$ExposureView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->justify()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/FocusView$ExposureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptured:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/ui/FocusView$ExposureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptured:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/ui/FocusView$ExposureView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/camera/ui/FocusView$ExposureView;FFFF)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 381
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/FocusView$ExposureView;->getTangenVelocity(FFFF)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/camera/ui/FocusView$ExposureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/ui/FocusView$ExposureView;FFF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 381
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/FocusView$ExposureView;->isInCicle(FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/camera/ui/FocusView$ExposureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 381
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I

    return p1
.end method

.method static synthetic access$4000(Lcom/android/camera/ui/FocusView$ExposureView;FF)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView$ExposureView;->getAngle(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mLastTheta:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/camera/ui/FocusView$ExposureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 381
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mLastTheta:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/camera/ui/FocusView$ExposureView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->removeMessages()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/ui/FocusView$ExposureView;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 381
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView$ExposureView;->gettAngleOffset(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/camera/ui/FocusView$ExposureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOutOfRange:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOutOfRange:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mStartFlingIndex:I

    return v0
.end method

.method static synthetic access$4702(Lcom/android/camera/ui/FocusView$ExposureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 381
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mStartFlingIndex:I

    return p1
.end method

.method private drawGraduation(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/16 v9, 0xff

    const/16 v8, 0x24

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    const v5, 0x3f666666

    .line 815
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 816
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 817
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 819
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v3}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 820
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 821
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVBigRadius:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 822
    .local v1, scaleCapture:F
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 823
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 826
    .end local v1           #scaleCapture:F
    :cond_0
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    rem-int/lit16 v3, v3, 0x168

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 827
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 828
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 829
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVBigRadius:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    .line 830
    .local v2, scaleGraduation:F
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 831
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 832
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 834
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$4500(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVBigAlpha:I

    invoke-static {v4, v8, v9, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 835
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$4600(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVSmallAlpha:I

    invoke-static {v4, v8, v9, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 836
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$4600(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Paint;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVSmallLineWidth:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 837
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVBigRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;
    invoke-static {v6}, Lcom/android/camera/ui/FocusView;->access$4500(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 838
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v3}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v3

    if-nez v3, :cond_1

    .line 839
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVSmallRadius:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;
    invoke-static {v6}, Lcom/android/camera/ui/FocusView;->access$4600(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 841
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 842
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 845
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEvChanged:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 851
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    invoke-interface {v2, v3}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    .line 847
    .local v1, value:I
    if-lez v1, :cond_1

    const-string v2, "+%.1f"

    new-array v3, v4, [Ljava/lang/Object;

    int-to-float v4, v1

    iget v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureStep:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, txt:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v6, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 849
    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVBigRadius:I

    int-to-double v4, v4

    const-wide v6, 0x3ff199999999999aL

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 847
    .end local v0           #txt:Ljava/lang/String;
    :cond_1
    const-string v2, "%.1f"

    new-array v3, v4, [Ljava/lang/Object;

    int-to-float v4, v1

    iget v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureStep:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private getAngle(FF)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 871
    iget v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v5, v5

    sub-float v3, p1, v5

    .line 872
    .local v3, dx:F
    iget v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v5, v5

    sub-float v4, p2, v5

    .line 873
    .local v4, dy:F
    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 874
    .local v1, distance:D
    const-wide v5, 0x404ca5dc1a63c1f8L

    float-to-double v7, v3

    div-double/2addr v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v0, v5

    .line 875
    .local v0, arc2:I
    float-to-double v5, v4

    const-wide v7, 0x3f60624dd2f1a9fcL

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .end local v0           #arc2:I
    :goto_0
    return v0

    .restart local v0       #arc2:I
    :cond_0
    rsub-int v0, v0, 0x168

    goto :goto_0
.end method

.method private getOffsetAngleByIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v0, :cond_0

    .line 669
    const/4 v0, 0x0

    .line 676
    :goto_0
    return v0

    .line 671
    :cond_0
    if-gez p1, :cond_2

    .line 672
    const/4 p1, 0x0

    .line 676
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    sub-int v0, p1, v0

    mul-int/lit8 v0, v0, 0x3c

    goto :goto_0

    .line 673
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1
.end method

.method private getTangenVelocity(FFFF)I
    .locals 13
    .parameter "x"
    .parameter "y"
    .parameter "vx"
    .parameter "vy"

    .prologue
    .line 862
    iget v7, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v7, v7

    sub-float v5, p1, v7

    .line 863
    .local v5, dx:F
    iget v7, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v7, v7

    sub-float v6, p2, v7

    .line 864
    .local v6, dy:F
    mul-float v7, v5, v5

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 865
    .local v3, distance:D
    float-to-double v7, v6

    const-wide v9, 0x3f747ae147ae147bL

    cmpl-double v7, v7, v9

    if-lez v7, :cond_0

    float-to-double v7, v5

    div-double/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v1

    .line 867
    .local v1, arc:D
    :goto_0
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    move/from16 v0, p4

    float-to-double v9, v0

    mul-double/2addr v7, v9

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    move/from16 v0, p3

    float-to-double v11, v0

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    const-wide v9, 0x4066800000000000L

    mul-double/2addr v7, v9

    const-wide v9, 0x400921fb54442d18L

    div-double/2addr v7, v9

    double-to-int v7, v7

    return v7

    .line 865
    .end local v1           #arc:D
    :cond_0
    const-wide v7, 0x401921fb54442d18L

    float-to-double v9, v5

    div-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->acos(D)D

    move-result-wide v9

    sub-double v1, v7, v9

    goto :goto_0
.end method

.method private gettAngleOffset(II)I
    .locals 2
    .parameter "from"
    .parameter "to"

    .prologue
    .line 879
    sub-int v0, p2, p1

    .line 880
    .local v0, delta:I
    const/16 v1, 0x10e

    if-le v0, v1, :cond_1

    .line 881
    add-int/lit16 v1, p2, -0x168

    sub-int v0, v1, p1

    .line 885
    :cond_0
    :goto_0
    return v0

    .line 882
    :cond_1
    const/16 v1, -0x10e

    if-ge v0, v1, :cond_0

    .line 883
    rsub-int v1, p1, 0x168

    add-int v0, v1, p2

    goto :goto_0
.end method

.method private isInCicle(FFF)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "r"

    .prologue
    .line 893
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    .line 894
    .local v2, dx:F
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    .line 895
    .local v3, dy:F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 896
    .local v0, distance:D
    float-to-double v4, p3

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private justify()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 615
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    if-nez v3, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    .line 619
    .local v1, offset:I
    if-lez v1, :cond_5

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v4}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_4

    .line 621
    .local v0, needToIncrease:Z
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_3

    .line 622
    if-gez v1, :cond_6

    .line 623
    add-int/lit8 v1, v1, 0x3c

    .line 628
    :cond_3
    :goto_2
    neg-int v2, v1

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView$ExposureView;->performRolling(I)V

    goto :goto_0

    .end local v0           #needToIncrease:Z
    :cond_4
    move v0, v2

    .line 619
    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    if-gtz v3, :cond_2

    move v0, v2

    goto :goto_1

    .line 625
    .restart local v0       #needToIncrease:Z
    :cond_6
    add-int/lit8 v1, v1, -0x3c

    goto :goto_2
.end method

.method private performRolling(I)V
    .locals 7
    .parameter "delta"

    .prologue
    const/4 v6, 0x2

    .line 585
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    .line 588
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    div-int/lit8 v0, v3, 0x3c

    .line 589
    .local v0, count:I
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    add-int v2, v3, v0

    .line 591
    .local v2, targetItem:I
    if-gez v2, :cond_5

    .line 592
    const/4 v2, 0x0

    .line 597
    :cond_2
    :goto_1
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    if-eq v2, v3, :cond_3

    .line 598
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/FocusView$ExposureView;->setCurrentItem(IZ)V

    .line 601
    :cond_3
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTimeout:Z

    if-eqz v3, :cond_4

    .line 602
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 603
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 606
    :cond_4
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    rem-int/lit8 v3, v3, 0x3c

    iput v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    .line 607
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    add-int v1, v3, p1

    .line 608
    .local v1, orientation:I
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    if-eq v1, v3, :cond_0

    .line 609
    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 610
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    goto :goto_0

    .line 593
    .end local v1           #orientation:I
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 594
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_1
.end method

.method private removeMessages()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 582
    return-void
.end method

.method private scrollToItem(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 662
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    const/16 v2, 0xfa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 663
    .local v0, time:I
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->scroll(IJ)V

    .line 664
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 665
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 528
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 530
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 756
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v2, :cond_1

    .line 791
    :cond_0
    :goto_0
    return v0

    .line 759
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 762
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    if-eqz v2, :cond_2

    .line 763
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    .line 764
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->justify()V

    .line 768
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v2, v3, :cond_6

    .line 770
    :cond_3
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOutOfRange:Z

    .line 771
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScrolled:Z

    .line 772
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptured:Z

    .line 774
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    if-eqz v2, :cond_8

    .line 775
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    if-eqz v2, :cond_5

    .line 776
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTimeout:Z

    if-eqz v2, :cond_4

    .line 777
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 778
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 780
    :cond_4
    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    .line 782
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 783
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->justify()V

    .line 791
    :cond_6
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptured:Z

    if-eqz v2, :cond_0

    :cond_7
    move v0, v1

    goto :goto_0

    .line 786
    :cond_8
    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    goto :goto_1
.end method

.method public getDecelerate(F)F
    .locals 3
    .parameter "t"

    .prologue
    const/high16 v2, 0x3f80

    .line 900
    sub-float v0, v2, p1

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    return v0
.end method

.method public getLinear(F)F
    .locals 0
    .parameter "t"

    .prologue
    .line 904
    return p1
.end method

.method public initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 5
    .parameter "exposureViewListener"

    .prologue
    .line 461
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 462
    .local v2, parameter:Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_1

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    .line 464
    .local v1, min:I
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    .line 465
    .local v0, max:I
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureStep:F

    .line 466
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 467
    new-instance v3, Lcom/android/camera/ui/NumericRollAdapter;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v0, v4}, Lcom/android/camera/ui/NumericRollAdapter;-><init>(III)V

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/ui/FocusView$ExposureView;->setAdapter(Lcom/android/camera/ui/RollAdapter;I)V

    .line 469
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 470
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000c

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationBitmap:Landroid/graphics/Bitmap;

    .line 471
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3

    .line 472
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02000b

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    .line 473
    :cond_3
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 474
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView$ExposureView;->setDraw(Z)V

    .line 475
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$2400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    goto :goto_0
.end method

.method public isDraw()Z
    .locals 1

    .prologue
    .line 524
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 795
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    if-nez v0, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRatation:I

    if-eqz v0, :cond_2

    .line 800
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 801
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 802
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRatation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 803
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 806
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->drawGraduation(Landroid/graphics/Canvas;)V

    .line 807
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->drawText(Landroid/graphics/Canvas;)V

    .line 809
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRatation:I

    if-eqz v0, :cond_0

    .line 810
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 479
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->setDraw(Z)V

    .line 480
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 482
    iput-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationBitmap:Landroid/graphics/Bitmap;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 486
    iput-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    .line 488
    :cond_1
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    .line 507
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 508
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 509
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    .line 511
    .local v0, index:I
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 512
    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 514
    .end local v0           #index:I
    :cond_0
    return-void
.end method

.method public scrollToOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 680
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    add-int/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->setCurrentItem(IZ)V

    .line 681
    return-void
.end method

.method public setAdapter(Lcom/android/camera/ui/RollAdapter;I)V
    .locals 3
    .parameter "adapter"
    .parameter "value"

    .prologue
    .line 491
    if-eqz p1, :cond_0

    .line 492
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    .line 493
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 494
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    .line 495
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 496
    if-gez v0, :cond_1

    .line 497
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 503
    .end local v0           #index:I
    :cond_0
    :goto_0
    return-void

    .line 499
    .restart local v0       #index:I
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 500
    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 5
    .parameter "index"
    .parameter "animated"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 632
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    if-eq p1, v0, :cond_0

    .line 633
    if-eqz p2, :cond_1

    .line 634
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->scrollToItem(I)V

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 636
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 637
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v0, :cond_4

    .line 638
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    #getter for: Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$2400(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->playCameraSound(I)V

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isNeedHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 641
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    if-ne v0, v1, :cond_5

    .line 642
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/FocusView;->performHapticFeedback(I)Z

    .line 647
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEvChanged:Z

    .line 648
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->onExposureValueChanged(I)V

    .line 651
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    #getter for: Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mMode:I
    invoke-static {v0}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->access$3300(Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 652
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mStartFlingIndex:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    #setter for: Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z
    invoke-static {v0, v3}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->access$3402(Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;Z)Z

    .line 654
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 644
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/FocusView;->performHapticFeedback(I)Z

    goto :goto_1
.end method

.method public setDraw(Z)V
    .locals 4
    .parameter "draw"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 533
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    if-eq v0, p1, :cond_0

    .line 534
    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    .line 535
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->reload()V

    .line 537
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    .line 538
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    if-eqz v0, :cond_1

    .line 539
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEvChanged:Z

    .line 540
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTimeout:Z

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 542
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 546
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 855
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRatation:I

    if-eq v0, p1, :cond_0

    .line 856
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRatation:I

    .line 857
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 859
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 1
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 517
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    .line 518
    iput p2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    .line 519
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    .line 520
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->removeMessages()V

    .line 521
    return-void
.end method

.method public setTimeout(Z)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 457
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTimeout:Z

    .line 458
    return-void
.end method
