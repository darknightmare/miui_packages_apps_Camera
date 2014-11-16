.class public Lcom/android/camera/ui/SeekBar;
.super Landroid/widget/RelativeLayout;
.source "SeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SeekBar$OnValueChangedListener;
    }
.end annotation


# instance fields
.field private final DISABLED_ALPHA:F

.field private mBar:Landroid/view/View;

.field private mBarHeight:I

.field private mBarWidth:I

.field private mCursor:Landroid/widget/ImageView;

.field private mCursorHeight:I

.field private mCursorPosition:I

.field private mCursorWidth:I

.field private mEndPosition:I

.field private mFilterEnabled:Z

.field private mGap:F

.field private mHeight:I

.field private mListener:Lcom/android/camera/ui/SeekBar$OnValueChangedListener;

.field private mMaxValue:I

.field private mReLoad:Z

.field private mSmoothChange:Z

.field private mStartPosition:I

.field private mValue:I

.field private mValueChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const v0, 0x3e99999a

    iput v0, p0, Lcom/android/camera/ui/SeekBar;->DISABLED_ALPHA:F

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/SeekBar;->mFilterEnabled:Z

    .line 31
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/ui/SeekBar;->mMaxValue:I

    .line 32
    iput v4, p0, Lcom/android/camera/ui/SeekBar;->mValue:I

    .line 33
    iput-boolean v4, p0, Lcom/android/camera/ui/SeekBar;->mReLoad:Z

    .line 34
    iput-boolean v4, p0, Lcom/android/camera/ui/SeekBar;->mValueChanged:Z

    .line 43
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/SeekBar;->mBar:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/SeekBar;->mBar:Landroid/view/View;

    const v1, 0x7f02016f

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/SeekBar;->mBar:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/SeekBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/SeekBar;->mCursor:Landroid/widget/ImageView;

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/SeekBar;->mCursor:Landroid/widget/ImageView;

    const v1, 0x7f0201ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/SeekBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SeekBar;->addView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/SeekBar;->mBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SeekBar;->mBarHeight:I

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/SeekBar;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SeekBar;->mCursorHeight:I

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/SeekBar;->mBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SeekBar;->mCursorWidth:I

    .line 54
    iget v0, p0, Lcom/android/camera/ui/SeekBar;->mBarHeight:I

    iget v1, p0, Lcom/android/camera/ui/SeekBar;->mCursorHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SeekBar;->mHeight:I

    .line 55
    iput v4, p0, Lcom/android/camera/ui/SeekBar;->mCursorPosition:I

    .line 56
    return-void
.end method

.method private clip(III)I
    .locals 0
    .parameter "value"
    .parameter "max"
    .parameter "min"

    .prologue
    .line 197
    if-le p1, p2, :cond_0

    .line 202
    .end local p2
    :goto_0
    return p2

    .line 199
    .restart local p2
    :cond_0
    if-gez p1, :cond_1

    move p2, p3

    .line 200
    goto :goto_0

    :cond_1
    move p2, p1

    .line 202
    goto :goto_0
.end method

.method private mapPostionToValue(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 206
    iget v0, p0, Lcom/android/camera/ui/SeekBar;->mStartPosition:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/SeekBar;->mGap:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/SeekBar;->mMaxValue:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/SeekBar;->clip(III)I

    move-result v0

    return v0
.end method

.method private mapValueToPosition(I)I
    .locals 3
    .parameter "value"

    .prologue
    .line 210
    int-to-float v0, p1

    iget v1, p0, Lcom/android/camera/ui/SeekBar;->mGap:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/SeekBar;->mStartPosition:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/SeekBar;->mEndPosition:I

    iget v2, p0, Lcom/android/camera/ui/SeekBar;->mStartPosition:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/SeekBar;->clip(III)I

    move-result v0

    return v0
.end method

.method private notifyChange()V
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lcom/android/camera/ui/SeekBar;->mCursorPosition:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/SeekBar;->mapPostionToValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SeekBar;->mValue:I

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/SeekBar;->mListener:Lcom/android/camera/ui/SeekBar$OnValueChangedListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/camera/ui/SeekBar;->mListener:Lcom/android/camera/ui/SeekBar$OnValueChangedListener;

    iget v1, p0, Lcom/android/camera/ui/SeekBar;->mValue:I

    invoke-interface {v0, v1}, Lcom/android/camera/ui/SeekBar$OnValueChangedListener;->onValueChanged(I)V

    .line 148
    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/high16 v6, 0x4000

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 116
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    return v5

    .line 120
    :pswitch_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SeekBar;->setActivated(Z)V

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/SeekBar;->mCursorWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/camera/ui/SeekBar;->mGap:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/SeekBar;->mGap:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/camera/ui/SeekBar;->mEndPosition:I

    iget v4, p0, Lcom/android/camera/ui/SeekBar;->mStartPosition:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/camera/ui/SeekBar;->clip(III)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/SeekBar;->mCursorPosition:I

    .line 124
    invoke-virtual {p0}, Lcom/android/camera/ui/SeekBar;->requestLayout()V

    .line 125
    invoke-direct {p0}, Lcom/android/camera/ui/SeekBar;->notifyChange()V

    goto :goto_0

    .line 128
    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/SeekBar;->setEnabled(Z)V

    .line 129
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/SeekBar;->setActivated(Z)V

    .line 131
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/SeekBar;->mCursorWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v6

    sub-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v1, v2

    .line 132
    .local v1, pos:I
    iget v2, p0, Lcom/android/camera/ui/SeekBar;->mEndPosition:I

    iget v3, p0, Lcom/android/camera/ui/SeekBar;->mStartPosition:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/ui/SeekBar;->clip(III)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/SeekBar;->mCursorPosition:I

    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/SeekBar;->requestLayout()V

    .line 136
    iget-boolean v2, p0, Lcom/android/camera/ui/SeekBar;->mSmoothChange:Z

    if-eqz v2, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/camera/ui/SeekBar;->notifyChange()V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/android/camera/ui/SeekBar;->mMaxValue:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/android/camera/ui/SeekBar;->mValue:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-boolean v2, p0, Lcom/android/camera/ui/SeekBar;->mReLoad:Z

    if-eqz v2, :cond_0

    .line 89
    iget v2, p0, Lcom/android/camera/ui/SeekBar;->mEndPosition:I

    iget v3, p0, Lcom/android/camera/ui/SeekBar;->mStartPosition:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/SeekBar;->mMaxValue:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/SeekBar;->mGap:F

    .line 90
    iget v2, p0, Lcom/android/camera/ui/SeekBar;->mValue:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/SeekBar;->mapValueToPosition(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/SeekBar;->mCursorPosition:I

    .line 94
    :cond_0
    iget-boolean v2, p0, Lcom/android/camera/ui/SeekBar;->mValueChanged:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/ui/SeekBar;->mReLoad:Z

    if-eqz v2, :cond_2

    .line 95
    :cond_1
    iget v2, p0, Lcom/android/camera/ui/SeekBar;->mValue:I

    invoke-direct {p0, v2}, Lcom/android/camera/ui/SeekBar;->mapValueToPosition(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/SeekBar;->mCursorPosition:I

    .line 97
    :cond_2
    iput-boolean v4, p0, Lcom/android/camera/ui/SeekBar;->mReLoad:Z

    .line 98
    iput-boolean v4, p0, Lcom/android/camera/ui/SeekBar;->mValueChanged:Z

    .line 99
    iget v2, p0, Lcom/android/camera/ui/SeekBar;->mHeight:I

    iget v3, p0, Lcom/android/camera/ui/SeekBar;->mBarHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 100
    .local v0, barOffsetY:I
    iget-object v2, p0, Lcom/android/camera/ui/SeekBar;->mBar:Landroid/view/View;

    const/16 v3, 0x23

    iget v4, p0, Lcom/android/camera/ui/SeekBar;->mBarWidth:I

    add-int/lit8 v4, v4, -0x23

    iget v5, p0, Lcom/android/camera/ui/SeekBar;->mBarHeight:I

    add-int/2addr v5, v0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 105
    iget v2, p0, Lcom/android/camera/ui/SeekBar;->mHeight:I

    iget v3, p0, Lcom/android/camera/ui/SeekBar;->mCursorHeight:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 106
    .local v1, cursorOffsetY:I
    iget-object v2, p0, Lcom/android/camera/ui/SeekBar;->mCursor:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/camera/ui/SeekBar;->mCursorPosition:I

    iget v4, p0, Lcom/android/camera/ui/SeekBar;->mCursorPosition:I

    iget v5, p0, Lcom/android/camera/ui/SeekBar;->mCursorWidth:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/camera/ui/SeekBar;->mCursorHeight:I

    add-int/2addr v5, v1

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 110
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/ui/SeekBar;->mHeight:I

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 67
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/camera/ui/SeekBar;->mBarWidth:I

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/SeekBar;->mStartPosition:I

    .line 79
    iget v0, p0, Lcom/android/camera/ui/SeekBar;->mBarWidth:I

    iget v1, p0, Lcom/android/camera/ui/SeekBar;->mCursorWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/SeekBar;->mEndPosition:I

    .line 80
    iget v0, p0, Lcom/android/camera/ui/SeekBar;->mEndPosition:I

    iget v1, p0, Lcom/android/camera/ui/SeekBar;->mStartPosition:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/SeekBar;->mMaxValue:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/SeekBar;->mGap:F

    .line 81
    iget v0, p0, Lcom/android/camera/ui/SeekBar;->mValue:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/SeekBar;->mapValueToPosition(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SeekBar;->mCursorPosition:I

    .line 82
    invoke-virtual {p0}, Lcom/android/camera/ui/SeekBar;->requestLayout()V

    .line 83
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/SeekBar;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 73
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/camera/ui/SeekBar;->mFilterEnabled:Z

    if-eqz v0, :cond_0

    .line 164
    if-eqz p1, :cond_2

    .line 165
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SeekBar;->setAlpha(F)V

    .line 170
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/SeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/android/camera/ui/SeekBar;->requestLayout()V

    .line 173
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 174
    return-void

    .line 167
    :cond_2
    const v0, 0x3e99999a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SeekBar;->setAlpha(F)V

    goto :goto_0
.end method

.method public setMaxValue(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 151
    if-gtz p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 152
    :cond_0
    iput p1, p0, Lcom/android/camera/ui/SeekBar;->mMaxValue:I

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/SeekBar;->mReLoad:Z

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/ui/SeekBar;->requestLayout()V

    goto :goto_0
.end method

.method public setOnValueChangedListener(Lcom/android/camera/ui/SeekBar$OnValueChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/camera/ui/SeekBar;->mListener:Lcom/android/camera/ui/SeekBar$OnValueChangedListener;

    .line 60
    return-void
.end method

.method public setSmoothChange(Z)V
    .locals 0
    .parameter "smooth"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/android/camera/ui/SeekBar;->mSmoothChange:Z

    .line 190
    return-void
.end method

.method public setValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 177
    iget v0, p0, Lcom/android/camera/ui/SeekBar;->mValue:I

    if-eq v0, p1, :cond_0

    .line 178
    iget v0, p0, Lcom/android/camera/ui/SeekBar;->mMaxValue:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/ui/SeekBar;->clip(III)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SeekBar;->mValue:I

    .line 179
    invoke-virtual {p0}, Lcom/android/camera/ui/SeekBar;->requestLayout()V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/SeekBar;->mValueChanged:Z

    .line 182
    :cond_0
    return-void
.end method
