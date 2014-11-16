.class public Lcom/android/camera/ui/SwitchIndicatorButton;
.super Landroid/widget/RelativeLayout;
.source "SwitchIndicatorButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field private mIndicatorImage:Lcom/android/camera/ui/RotateImageView;

.field private mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method private getPrefrenceSize()I
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 54
    .local v0, entries:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 74
    .local v0, index:I
    invoke-direct {p0}, Lcom/android/camera/ui/SwitchIndicatorButton;->getPrefrenceSize()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 75
    const/4 v0, 0x0

    .line 78
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/ui/SwitchIndicatorButton;->refreshValue()V

    .line 80
    iget-object v1, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "pref_camera_hdr_type_key"

    iget-object v2, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 82
    iget-object v1, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    const-string v2, "pref_camera_hdr_type_key"

    invoke-interface {v1, v2}, Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v1}, Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    goto :goto_0
.end method


# virtual methods
.method public initialize(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 47
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 48
    .local v0, inflater:Lcom/android/camera/preferences/PreferenceInflater;
    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/ui/SwitchIndicatorButton;->refreshValue()V

    .line 50
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/camera/ui/SwitchIndicatorButton;->toggle()V

    .line 40
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 26
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SwitchIndicatorButton;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mIndicatorImage:Lcom/android/camera/ui/RotateImageView;

    .line 27
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/SwitchIndicatorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/camera/ui/SwitchIndicatorButton;->refreshValue()V

    .line 29
    invoke-virtual {p0}, Lcom/android/camera/ui/SwitchIndicatorButton;->requestLayout()V

    .line 30
    return-void
.end method

.method public refreshValue()V
    .locals 5

    .prologue
    .line 95
    iget-object v3, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v3, :cond_1

    .line 96
    iget-object v3, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 98
    .local v1, index:I
    iget-object v3, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 99
    iget-object v3, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 100
    const/4 v1, 0x0

    .line 102
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v3

    aget v0, v3, v1

    .line 103
    .local v0, iconId:I
    iget-object v3, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mIndicatorImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v3, v0}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 105
    .end local v0           #iconId:I
    .end local v1           #index:I
    .end local v2           #value:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/camera/ui/SwitchIndicatorButton;->refreshValue()V

    .line 66
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    .line 44
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mIndicatorImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 35
    return-void
.end method

.method public updateIcons(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/SwitchIndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setIconRes(I)V

    .line 91
    invoke-virtual {p0}, Lcom/android/camera/ui/SwitchIndicatorButton;->refreshValue()V

    .line 92
    return-void
.end method
