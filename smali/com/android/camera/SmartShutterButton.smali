.class public Lcom/android/camera/SmartShutterButton;
.super Landroid/widget/RelativeLayout;
.source "SmartShutterButton.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SmartShutterButton$OnShutterButtonListener;
    }
.end annotation


# static fields
.field private static final DISMISS_DISTANCE_THRESHOLD:I

.field private static final FADEOUT_BOUNT_THRESHOLD:I

.field private static final MOVE_THRESHOLD:I

.field private static final NEED_MOVABLE_SHUTTER:Z

.field private static UNUSED_TRIGER_TIME:I


# instance fields
.field private mFadeout:Landroid/view/animation/Animation;

.field private mFixedShutterCenterX:I

.field private mFixedShutterCenterY:I

.field private mHandler:Landroid/os/Handler;

.field private mInShutterButton:Z

.field private mListener:Lcom/android/camera/SmartShutterButton$OnShutterButtonListener;

.field private mMoveBount:Landroid/graphics/Rect;

.field private mOriginX:I

.field private mOriginY:I

.field private mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

.field private mState:I

.field private mVisableBount:Landroid/graphics/Rect;

.field private mVisibleState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/high16 v0, 0x4120

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/SmartShutterButton;->FADEOUT_BOUNT_THRESHOLD:I

    .line 74
    sget-boolean v0, Lcom/android/camera/Device;->IS_HM3:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/camera/SmartShutterButton;->NEED_MOVABLE_SHUTTER:Z

    .line 75
    const/high16 v0, 0x41f0

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/SmartShutterButton;->MOVE_THRESHOLD:I

    .line 76
    const/16 v0, 0x3a98

    sput v0, Lcom/android/camera/SmartShutterButton;->UNUSED_TRIGER_TIME:I

    .line 77
    const/high16 v0, 0x428c

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    return-void

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x0

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput v7, p0, Lcom/android/camera/SmartShutterButton;->mState:I

    .line 80
    new-instance v1, Lcom/android/camera/SmartShutterButton$1;

    invoke-direct {v1, p0}, Lcom/android/camera/SmartShutterButton$1;-><init>(Lcom/android/camera/SmartShutterButton;)V

    iput-object v1, p0, Lcom/android/camera/SmartShutterButton;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 95
    .local v0, dm:Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v1, v7, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/camera/SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    .line 97
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/camera/SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/android/camera/SmartShutterButton;->FADEOUT_BOUNT_THRESHOLD:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/camera/SmartShutterButton;->FADEOUT_BOUNT_THRESHOLD:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sget v5, Lcom/android/camera/SmartShutterButton;->FADEOUT_BOUNT_THRESHOLD:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sget v6, Lcom/android/camera/SmartShutterButton;->FADEOUT_BOUNT_THRESHOLD:I

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/camera/SmartShutterButton;->mMoveBount:Landroid/graphics/Rect;

    .line 101
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/SmartShutterButton;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Lcom/android/camera/SmartShutterButton;->mVisibleState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/SmartShutterButton;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/camera/SmartShutterButton;->updateVisibleState()V

    return-void
.end method

.method private getDistanceFromPoint(IIII)I
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "originX"
    .parameter "originY"

    .prologue
    .line 208
    sub-int v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 209
    .local v0, tmpx:I
    sub-int v2, p4, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 210
    .local v1, tmpy:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    return v2
.end method

.method private nearCenterOfShutter(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 214
    iget v2, p0, Lcom/android/camera/SmartShutterButton;->mFixedShutterCenterX:I

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 215
    .local v0, tmpx:I
    iget v2, p0, Lcom/android/camera/SmartShutterButton;->mFixedShutterCenterY:I

    sub-int/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 216
    .local v1, tmpy:I
    sget v2, Lcom/android/camera/SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    if-gt v0, v2, :cond_0

    sget v2, Lcom/android/camera/SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    if-gt v1, v2, :cond_0

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    sget v4, Lcom/android/camera/SmartShutterButton;->DISMISS_DISTANCE_THRESHOLD:I

    int-to-double v4, v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "bound"

    .prologue
    .line 283
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, p1

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 285
    .local v0, rec:Landroid/graphics/Rect;
    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-object v0

    .line 286
    :cond_1
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    if-ge v1, v2, :cond_3

    .line 287
    iget v1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 288
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 293
    :cond_2
    :goto_1
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    if-ge v1, v2, :cond_4

    .line 294
    iget v1, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 295
    iget v1, p3, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 289
    :cond_3
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    if-le v1, v2, :cond_2

    .line 290
    iget v1, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 291
    iget v1, p3, Landroid/graphics/Rect;->right:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 296
    :cond_4
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_0

    .line 297
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 298
    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private updateVisibleState()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/high16 v3, 0x3f80

    .line 221
    iget-object v0, p0, Lcom/android/camera/SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd

    invoke-direct {v0, v3, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    .line 223
    iget-object v0, p0, Lcom/android/camera/SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 224
    iget-object v0, p0, Lcom/android/camera/SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 227
    :cond_0
    iget v0, p0, Lcom/android/camera/SmartShutterButton;->mVisibleState:I

    packed-switch v0, :pswitch_data_0

    .line 243
    :goto_0
    return-void

    .line 229
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/SmartShutterButton;->setVisibility(I)V

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/android/camera/SmartShutterButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 235
    invoke-virtual {p0, v4}, Lcom/android/camera/SmartShutterButton;->setVisibility(I)V

    goto :goto_0

    .line 238
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->clearAnimation()V

    .line 239
    invoke-virtual {p0, v3}, Lcom/android/camera/SmartShutterButton;->setAlpha(F)V

    .line 240
    invoke-virtual {p0, v4}, Lcom/android/camera/SmartShutterButton;->setVisibility(I)V

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 127
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v2, v4

    .line 128
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v3, v4

    .line 130
    .local v3, y:I
    packed-switch v0, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    return v9

    .line 133
    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/android/camera/SmartShutterButton;->setPressed(Z)V

    .line 134
    iget-object v4, p0, Lcom/android/camera/SmartShutterButton;->mHandler:Landroid/os/Handler;

    sget v5, Lcom/android/camera/SmartShutterButton;->UNUSED_TRIGER_TIME:I

    int-to-long v5, v5

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 135
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-static {v4, v5, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/SmartShutterButton;->mInShutterButton:Z

    .line 136
    iget-boolean v4, p0, Lcom/android/camera/SmartShutterButton;->mInShutterButton:Z

    if-eqz v4, :cond_1

    .line 137
    iget-object v4, p0, Lcom/android/camera/SmartShutterButton;->mListener:Lcom/android/camera/SmartShutterButton$OnShutterButtonListener;

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/camera/SmartShutterButton;->mState:I

    if-eq v4, v9, :cond_1

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->setSmartShutterPosition(Ljava/lang/String;)V

    .line 139
    iget-object v4, p0, Lcom/android/camera/SmartShutterButton;->mListener:Lcom/android/camera/SmartShutterButton$OnShutterButtonListener;

    invoke-interface {v4}, Lcom/android/camera/SmartShutterButton$OnShutterButtonListener;->onShutterButtonClick()V

    .line 142
    :cond_1
    iget-object v4, p0, Lcom/android/camera/SmartShutterButton;->mListener:Lcom/android/camera/SmartShutterButton$OnShutterButtonListener;

    if-eqz v4, :cond_2

    .line 143
    iget-object v4, p0, Lcom/android/camera/SmartShutterButton;->mListener:Lcom/android/camera/SmartShutterButton$OnShutterButtonListener;

    invoke-interface {v4, v7, v8}, Lcom/android/camera/SmartShutterButton$OnShutterButtonListener;->onShutterButtonFocus(ZI)V

    .line 146
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/SmartShutterButton;->updateVisibleState()V

    goto :goto_0

    .line 151
    :pswitch_1
    iget v4, p0, Lcom/android/camera/SmartShutterButton;->mState:I

    if-eq v4, v9, :cond_3

    .line 152
    sget v4, Lcom/android/camera/SmartShutterButton;->MOVE_THRESHOLD:I

    iget v5, p0, Lcom/android/camera/SmartShutterButton;->mOriginX:I

    iget v6, p0, Lcom/android/camera/SmartShutterButton;->mOriginY:I

    invoke-direct {p0, v2, v3, v5, v6}, Lcom/android/camera/SmartShutterButton;->getDistanceFromPoint(IIII)I

    move-result v5

    if-gt v4, v5, :cond_0

    .line 153
    iput v9, p0, Lcom/android/camera/SmartShutterButton;->mState:I

    .line 161
    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/android/camera/SmartShutterButton;->nearCenterOfShutter(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 162
    iput v8, p0, Lcom/android/camera/SmartShutterButton;->mVisibleState:I

    .line 163
    const v4, 0x3f19999a

    invoke-virtual {p0, v4}, Lcom/android/camera/SmartShutterButton;->setAlpha(F)V

    .line 164
    new-instance v1, Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/camera/SmartShutterButton;->mFixedShutterCenterX:I

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/SmartShutterButton;->mFixedShutterCenterY:I

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/SmartShutterButton;->mFixedShutterCenterX:I

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/camera/SmartShutterButton;->mFixedShutterCenterY:I

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    invoke-direct {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 179
    .local v1, rect:Landroid/graphics/Rect;
    :cond_4
    :goto_1
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/android/camera/SmartShutterButton;->layout(IIII)V

    goto/16 :goto_0

    .line 167
    .end local v1           #rect:Landroid/graphics/Rect;
    :cond_5
    const/high16 v4, 0x3f80

    invoke-virtual {p0, v4}, Lcom/android/camera/SmartShutterButton;->setAlpha(F)V

    .line 168
    iget-object v4, p0, Lcom/android/camera/SmartShutterButton;->mMoveBount:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/SmartShutterButton;->reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 169
    .restart local v1       #rect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/camera/SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 173
    iget v4, p0, Lcom/android/camera/SmartShutterButton;->mVisibleState:I

    if-ne v4, v9, :cond_6

    .line 174
    iget-object v4, p0, Lcom/android/camera/SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v4}, Landroid/view/animation/Animation;->cancel()V

    .line 176
    :cond_6
    iput v7, p0, Lcom/android/camera/SmartShutterButton;->mVisibleState:I

    goto :goto_1

    .line 183
    .end local v1           #rect:Landroid/graphics/Rect;
    :pswitch_2
    iput v2, p0, Lcom/android/camera/SmartShutterButton;->mOriginX:I

    .line 184
    iput v3, p0, Lcom/android/camera/SmartShutterButton;->mOriginY:I

    .line 185
    iput v7, p0, Lcom/android/camera/SmartShutterButton;->mState:I

    .line 186
    invoke-virtual {p0, v9}, Lcom/android/camera/SmartShutterButton;->setPressed(Z)V

    .line 187
    iget-object v4, p0, Lcom/android/camera/SmartShutterButton;->mListener:Lcom/android/camera/SmartShutterButton$OnShutterButtonListener;

    if-eqz v4, :cond_7

    .line 188
    iget-object v4, p0, Lcom/android/camera/SmartShutterButton;->mListener:Lcom/android/camera/SmartShutterButton$OnShutterButtonListener;

    invoke-interface {v4, v9, v8}, Lcom/android/camera/SmartShutterButton$OnShutterButtonListener;->onShutterButtonFocus(ZI)V

    .line 190
    :cond_7
    iget-object v4, p0, Lcom/android/camera/SmartShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 130
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public flyin(IIII)V
    .locals 11
    .parameter "endx"
    .parameter "endy"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 246
    const/4 v3, -0x1

    .line 247
    .local v3, x:I
    const/4 v4, -0x1

    .line 249
    .local v4, y:I
    iput p3, p0, Lcom/android/camera/SmartShutterButton;->mFixedShutterCenterX:I

    .line 250
    iput p4, p0, Lcom/android/camera/SmartShutterButton;->mFixedShutterCenterY:I

    .line 251
    sget-boolean v5, Lcom/android/camera/SmartShutterButton;->NEED_MOVABLE_SHUTTER:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    .line 252
    iget-object v5, p0, Lcom/android/camera/SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/SmartShutterButton;->mFadeout:Landroid/view/animation/Animation;

    invoke-virtual {v5}, Landroid/view/animation/Animation;->cancel()V

    .line 253
    :cond_0
    const v5, 0x3dcccccd

    invoke-virtual {p0, v5}, Lcom/android/camera/SmartShutterButton;->setAlpha(F)V

    .line 254
    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v5, p3, v5

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, p4, v6

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, p3

    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, p4

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/camera/SmartShutterButton;->layout(IIII)V

    .line 257
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSmartShutterPosition()Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, position:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 259
    const/16 v5, 0x78

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 260
    .local v0, index:I
    if-eq v0, v10, :cond_1

    .line 261
    invoke-virtual {v1, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 262
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 265
    .end local v0           #index:I
    :cond_1
    if-ne v3, v10, :cond_2

    if-ne v4, v10, :cond_2

    .line 266
    move v3, p1

    .line 267
    move v4, p2

    .line 270
    :cond_2
    iget-object v5, p0, Lcom/android/camera/SmartShutterButton;->mVisableBount:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/camera/SmartShutterButton;->reviseLocation(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 271
    .local v2, rec:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/camera/SmartShutterButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 272
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/camera/SmartShutterButton;->layout(IIII)V

    .line 275
    invoke-virtual {p0, v9}, Lcom/android/camera/SmartShutterButton;->setVisibility(I)V

    .line 276
    iput v9, p0, Lcom/android/camera/SmartShutterButton;->mVisibleState:I

    .line 277
    iget-object v5, p0, Lcom/android/camera/SmartShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    iget-object v5, p0, Lcom/android/camera/SmartShutterButton;->mHandler:Landroid/os/Handler;

    sget v6, Lcom/android/camera/SmartShutterButton;->UNUSED_TRIGER_TIME:I

    int-to-long v6, v6

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 280
    .end local v1           #position:Ljava/lang/String;
    .end local v2           #rec:Landroid/graphics/Rect;
    :cond_3
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 115
    const v0, 0x7f0c00af

    invoke-virtual {p0, v0}, Lcom/android/camera/SmartShutterButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/SmartShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    .line 116
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 117
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onPauseAfter()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/camera/SmartShutterButton;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/SmartShutterButton;->setVisibility(I)V

    .line 199
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/SmartShutterButton;->mVisibleState:I

    .line 200
    return-void
.end method

.method public setOnShutterButtonListener(Lcom/android/camera/SmartShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/camera/SmartShutterButton;->mListener:Lcom/android/camera/SmartShutterButton$OnShutterButtonListener;

    .line 105
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/SmartShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 205
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/camera/SmartShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setPressed(Z)V

    .line 110
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 111
    return-void
.end method
