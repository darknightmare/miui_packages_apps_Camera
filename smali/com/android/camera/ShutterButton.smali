.class public Lcom/android/camera/ShutterButton;
.super Landroid/widget/RelativeLayout;
.source "ShutterButton.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# static fields
.field private static LONG_PRESSED_TRIGER_TIME:I


# instance fields
.field private FLING_DISTANCE_THRESHOLD:I

.field private FLING_VELOCITY_THRESHOLD:I

.field private mHandler:Landroid/os/Handler;

.field private mInShutterButton:Z

.field private mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

.field private mLongClickable:Z

.field private mOutTime:J

.field private mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

.field private mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

.field private mShutterRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x1f4

    sput v0, Lcom/android/camera/ShutterButton;->LONG_PRESSED_TRIGER_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, 0x43c8

    const/high16 v1, 0x41a8

    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ShutterButton;->FLING_VELOCITY_THRESHOLD:I

    .line 61
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ShutterButton;->FLING_DISTANCE_THRESHOLD:I

    .line 63
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/ShutterButton;->mOutTime:J

    .line 65
    new-instance v0, Lcom/android/camera/ShutterButton$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ShutterButton$1;-><init>(Lcom/android/camera/ShutterButton;)V

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mHandler:Landroid/os/Handler;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ShutterButton;)Lcom/android/camera/ShutterButton$OnShutterButtonListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    return-object v0
.end method

.method private checkGesture(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 178
    iget-wide v4, p0, Lcom/android/camera/ShutterButton;->mOutTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 179
    iget-object v4, p0, Lcom/android/camera/ShutterButton;->mShutterRect:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    .line 180
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ShutterButton;->mShutterRect:Landroid/graphics/Rect;

    .line 181
    iget-object v4, p0, Lcom/android/camera/ShutterButton;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/camera/ShutterButton;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 183
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ShutterButton;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v2, p1, v4

    .line 184
    .local v2, dx:I
    iget-object v4, p0, Lcom/android/camera/ShutterButton;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int v3, p2, v4

    .line 185
    .local v3, dy:I
    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int v0, v4, v5

    .line 186
    .local v0, d2:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/ShutterButton;->mOutTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 187
    .local v1, duration:I
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gesture d2(d*d)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dutation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-lez v1, :cond_1

    iget v4, p0, Lcom/android/camera/ShutterButton;->FLING_VELOCITY_THRESHOLD:I

    div-int v5, v0, v1

    if-le v4, v5, :cond_2

    :cond_1
    iget v4, p0, Lcom/android/camera/ShutterButton;->FLING_DISTANCE_THRESHOLD:I

    if-ge v4, v0, :cond_3

    .line 191
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    iget-object v5, p0, Lcom/android/camera/ShutterButton;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-interface {v4, p1, p2, v5, v6}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onFlingOut(IIII)V

    .line 194
    .end local v0           #d2:I
    .end local v1           #duration:I
    .end local v2           #dx:I
    .end local v3           #dy:I
    :cond_3
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x2

    const-wide/16 v8, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 126
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 127
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 129
    .local v3, y:F
    packed-switch v0, :pswitch_data_0

    .line 170
    :cond_0
    :goto_0
    return v5

    .line 132
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 133
    iget-boolean v6, p0, Lcom/android/camera/ShutterButton;->mLongClickable:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_1
    move v1, v5

    .line 134
    .local v1, needClick:Z
    :goto_1
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    invoke-static {v2, v3, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/ShutterButton;->mInShutterButton:Z

    .line 136
    if-eqz v1, :cond_5

    iget-boolean v6, p0, Lcom/android/camera/ShutterButton;->mInShutterButton:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v6

    if-nez v6, :cond_5

    .line 137
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v6}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick()V

    .line 142
    :cond_2
    :goto_2
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v6, :cond_3

    .line 143
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v6, v4, v10}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(ZI)V

    .line 145
    :cond_3
    iput-wide v8, p0, Lcom/android/camera/ShutterButton;->mOutTime:J

    goto :goto_0

    .end local v1           #needClick:Z
    :cond_4
    move v1, v4

    .line 133
    goto :goto_1

    .line 138
    .restart local v1       #needClick:Z
    :cond_5
    if-eqz v1, :cond_2

    iget-boolean v6, p0, Lcom/android/camera/ShutterButton;->mInShutterButton:Z

    if-nez v6, :cond_2

    .line 139
    float-to-int v6, v2

    float-to-int v7, v3

    invoke-direct {p0, v6, v7}, Lcom/android/camera/ShutterButton;->checkGesture(II)V

    goto :goto_2

    .line 150
    .end local v1           #needClick:Z
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/android/camera/ShutterButton;->setPressed(Z)V

    .line 151
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v6, :cond_6

    .line 152
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v6, v5, v10}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(ZI)V

    .line 154
    :cond_6
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/ShutterButton;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPressDownCapture()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 155
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    invoke-interface {v6}, Lcom/android/camera/ShutterButton$OnShutterButtonListener;->onShutterButtonClick()V

    .line 157
    :cond_7
    iget-boolean v6, p0, Lcom/android/camera/ShutterButton;->mLongClickable:Z

    if-eqz v6, :cond_0

    .line 158
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v6, p0, Lcom/android/camera/ShutterButton;->mHandler:Landroid/os/Handler;

    sget v7, Lcom/android/camera/ShutterButton;->LONG_PRESSED_TRIGER_TIME:I

    int-to-long v7, v7

    invoke-virtual {v6, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 163
    :pswitch_2
    invoke-static {v2, v3, p0}, Lcom/android/camera/Util;->pointInView(FFLandroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 164
    iput-wide v8, p0, Lcom/android/camera/ShutterButton;->mOutTime:J

    goto/16 :goto_0

    .line 165
    :cond_8
    iget-wide v6, p0, Lcom/android/camera/ShutterButton;->mOutTime:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_0

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/camera/ShutterButton;->mOutTime:J

    goto/16 :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isCancled()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/camera/ShutterButton;->mInShutterButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 94
    const v0, 0x7f0c0011

    invoke-virtual {p0, v0}, Lcom/android/camera/ShutterButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    .line 95
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/android/camera/ShutterButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    .line 96
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 97
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "background"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setBackgroundResource(I)V

    .line 102
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 111
    return-void
.end method

.method public setLongClickable(Z)V
    .locals 0
    .parameter "longClickable"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/ShutterButton;->mLongClickable:Z

    .line 121
    return-void
.end method

.method public setOnShutterButtonListener(Lcom/android/camera/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/camera/ShutterButton;->mListener:Lcom/android/camera/ShutterButton$OnShutterButtonListener;

    .line 84
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 199
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonImageSource:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 200
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/ShutterButton;->mShutterButtonBackGround:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setPressed(Z)V

    .line 89
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    .line 90
    return-void
.end method
