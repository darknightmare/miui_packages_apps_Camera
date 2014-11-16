.class public Lcom/android/camera/ui/GridSettingPopupWhiteBalance;
.super Lcom/android/camera/ui/GridSettingPopup;
.source "GridSettingPopupWhiteBalance.java"


# instance fields
.field private mChangedListener:Lcom/android/camera/ui/OnWheelChangedListener;

.field private mContentView:Landroid/view/View;

.field private mCurrentKValue:I

.field private mOnBackListener:Landroid/view/View$OnClickListener;

.field private mScrolledListener:Lcom/android/camera/ui/OnWheelScrollListener;

.field private mWheelScrolled:Z

.field private mWheelView:Lcom/android/camera/ui/WheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/GridSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelScrolled:Z

    .line 102
    new-instance v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$1;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mOnBackListener:Landroid/view/View$OnClickListener;

    .line 113
    new-instance v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$2;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mScrolledListener:Lcom/android/camera/ui/OnWheelScrollListener;

    .line 125
    new-instance v0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$3;-><init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mChangedListener:Lcom/android/camera/ui/OnWheelChangedListener;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)Lcom/android/camera/ui/WheelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelScrolled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelScrolled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->onKValueChanged()V

    return-void
.end method

.method private onKValueChanged()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v1}, Lcom/android/camera/ui/WheelView;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->getItemValue(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 135
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->setKValue(I)V

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    const-string v1, "pref_qc_manual_whitebalance_k_value_key"

    invoke-interface {v0, v1}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingValueChanged(Ljava/lang/String;)V

    .line 139
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->dismiss()V

    .line 100
    return-void
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 5
    .parameter "preference"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/android/camera/ui/GridSettingPopup;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    new-instance v1, Lcom/android/camera/ui/NumericWheelAdapter;

    const/16 v2, 0x7d0

    const/16 v3, 0x1f40

    const/16 v4, 0x64

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/NumericWheelAdapter;-><init>(III)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->setAdapter(Lcom/android/camera/ui/WheelAdapter;)V

    .line 32
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mChangedListener:Lcom/android/camera/ui/OnWheelChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->addChangingListener(Lcom/android/camera/ui/OnWheelChangedListener;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mScrolledListener:Lcom/android/camera/ui/OnWheelScrollListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->addScrollingListener(Lcom/android/camera/ui/OnWheelScrollListener;)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->setCyclic(Z)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    const-string v1, "K"

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->setLabel(Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    new-instance v1, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 42
    .local v2, index:I
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 43
    iget-object v3, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 44
    const-string v3, "manual-cct"

    iget-object v4, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    invoke-static {}, Lcom/android/camera/CameraSettings;->getKValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 47
    :try_start_0
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager;->getCameraProxy()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v0

    .line 48
    .local v0, cameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/android/camera/CameraManager$CameraProxy;->getWBCT()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 50
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Current WB CCT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0           #cameraProxy:Lcom/android/camera/CameraManager$CameraProxy;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v3, v6}, Lcom/android/camera/ui/WheelView;->setVisibility(I)V

    .line 57
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 58
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    iget-object v4, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    iget v5, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/WheelView;->getItemIndexByValue(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/WheelView;->setCurrentItem(I)V

    .line 59
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    iget-object v4, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v4}, Lcom/android/camera/ui/WheelView;->getCurrentItem()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/WheelView;->getItemValue(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    .line 60
    iget v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mCurrentKValue:I

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->setKValue(I)V

    .line 72
    :goto_1
    iget v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    if-eq v3, v2, :cond_1

    .line 73
    iput v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 74
    iget-object v3, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    if-eqz v3, :cond_1

    .line 75
    iget-object v3, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-interface {v3}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingChanged()V

    .line 78
    :cond_1
    :goto_2
    return-void

    .line 52
    :catch_0
    move-exception v1

    .line 53
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "Camera"

    const-string v4, "Can\'t get current WB CCT"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    const-string v3, "measure"

    iget-object v4, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/WheelView;->setVisibility(I)V

    .line 63
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v6}, Landroid/widget/GridView;->setVisibility(I)V

    .line 64
    iput v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 65
    iget-object v3, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    const-string v4, "pref_qc_measure_whitebalance_value_key"

    invoke-interface {v3, v4}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_2

    .line 68
    :cond_3
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v3, v5}, Lcom/android/camera/ui/WheelView;->setVisibility(I)V

    .line 69
    iget-object v3, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v6}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->onFinishInflate()V

    .line 83
    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/WheelView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    .line 84
    const v0, 0x7f0c0051

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContentView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mOnBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/camera/ui/GridSettingPopup;->show()V

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    invoke-virtual {v0}, Lcom/android/camera/ui/WheelView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelView:Lcom/android/camera/ui/WheelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/WheelView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 95
    :cond_0
    return-void
.end method
