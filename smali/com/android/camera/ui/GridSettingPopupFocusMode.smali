.class public Lcom/android/camera/ui/GridSettingPopupFocusMode;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingPopupFocusMode.java"

# interfaces
.implements Lcom/android/camera/ui/SeekBar$OnValueChangedListener;


# instance fields
.field private mContentView:Landroid/view/View;

.field private mFocusPosition:I

.field private mOnBackListener:Landroid/view/View$OnClickListener;

.field private mRunable:Ljava/lang/Runnable;

.field private mSeekBar:Lcom/android/camera/ui/SeekBar;

.field private mSeekBarCenterText:Landroid/widget/TextView;

.field private mSeekBarLayout:Landroid/view/View;

.field private mSeekBarLeftText:Landroid/widget/TextView;

.field private mSeekBarRightText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/android/camera/ui/GridSettingPopupFocusMode$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/GridSettingPopupFocusMode$1;-><init>(Lcom/android/camera/ui/GridSettingPopupFocusMode;)V

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mRunable:Ljava/lang/Runnable;

    .line 129
    new-instance v0, Lcom/android/camera/ui/GridSettingPopupFocusMode$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/GridSettingPopupFocusMode$2;-><init>(Lcom/android/camera/ui/GridSettingPopupFocusMode;)V

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mOnBackListener:Landroid/view/View$OnClickListener;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/GridSettingPopupFocusMode;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarCenterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/GridSettingPopupFocusMode;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarLayout:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 126
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->dismiss()V

    .line 127
    return-void
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/camera/ui/GridSettingPopup;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 52
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBar;->setMaxValue(I)V

    .line 53
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mFocusPosition:I

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBar;->setSmoothChange(Z)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    invoke-virtual {v1}, Lcom/android/camera/ui/SeekBar;->getMaxValue()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mFocusPosition:I

    div-int/lit8 v2, v2, 0xa

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SeekBar;->setValue(I)V

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarCenterText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    invoke-virtual {v2}, Lcom/android/camera/ui/SeekBar;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarLeftText:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarRightText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    invoke-virtual {v2}, Lcom/android/camera/ui/SeekBar;->getMaxValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 64
    .local v1, index:I
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1, v3}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 65
    iget-object v2, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v1}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, foreChanged:Z
    const-string v2, "manual"

    iget-object v5, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusPosition()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mFocusPosition:I

    .line 80
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    iget-object v5, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    invoke-virtual {v5}, Lcom/android/camera/ui/SeekBar;->getMaxValue()I

    move-result v5

    iget v6, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mFocusPosition:I

    int-to-float v6, v6

    const/high16 v7, 0x4120

    div-float/2addr v6, v7

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/SeekBar;->setValue(I)V

    .line 83
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarLayout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v5, 0x4

    invoke-virtual {v2, v5}, Landroid/widget/GridView;->setVisibility(I)V

    .line 85
    const/4 v0, 0x1

    .line 91
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    if-eq v2, v1, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setFocusModeSwitching(Z)V

    .line 93
    iget v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    if-ne v2, v1, :cond_0

    if-eqz v0, :cond_1

    .line 94
    :cond_0
    const/4 v0, 0x0

    .line 95
    iput v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 96
    iget-object v2, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-interface {v2}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingChanged()V

    .line 100
    :cond_1
    return-void

    .line 87
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarLayout:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v2, v4

    .line 91
    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->onFinishInflate()V

    .line 105
    const v0, 0x7f0c0049

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupFocusMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarLeftText:Landroid/widget/TextView;

    .line 106
    const v0, 0x7f0c004a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupFocusMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarCenterText:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0c004b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupFocusMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarRightText:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f0c004c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupFocusMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SeekBar;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    .line 109
    const v0, 0x7f0c0048

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupFocusMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarLayout:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBar:Lcom/android/camera/ui/SeekBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/SeekBar;->setOnValueChangedListener(Lcom/android/camera/ui/SeekBar$OnValueChangedListener;)V

    .line 111
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupFocusMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mContentView:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mOnBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method public onValueChanged(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 37
    mul-int/lit8 v1, p1, 0xa

    rsub-int v0, v1, 0x3e8

    .line 38
    .local v0, postion:I
    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setFocusPosition(I)V

    .line 39
    iget v1, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mFocusPosition:I

    if-eq v0, v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarCenterText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 41
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarCenterText:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mRunable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/GridSettingPopupFocusMode;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 43
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mRunable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/camera/ui/GridSettingPopupFocusMode;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mFocusPosition:I

    .line 45
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    const-string v2, "pref_qc_focus_position_key"

    invoke-interface {v1, v2}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingValueChanged(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->show()V

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 122
    :cond_0
    return-void
.end method
