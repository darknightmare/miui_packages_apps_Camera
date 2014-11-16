.class public Lcom/android/camera/ui/FlashButton;
.super Landroid/widget/RelativeLayout;
.source "FlashButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FlashButton$Callback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sAutoFlashIndex:I


# instance fields
.field private mCallback:Lcom/android/camera/ui/FlashButton$Callback;

.field private mCanEnabled:Z

.field public mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

.field private mIsFlash:Z

.field private mLastestFlashState:I

.field private mLastestFlashTimes:I

.field private mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

.field private mMutexModeStatus:Z

.field private mOverrideValue:Ljava/lang/String;

.field private mPreference:Lcom/android/camera/preferences/IconListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "FlashButton.java"

    sput-object v0, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 31
    iput-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mMutexModeStatus:Z

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/FlashButton;->mLastestFlashState:I

    .line 35
    iput v1, p0, Lcom/android/camera/ui/FlashButton;->mLastestFlashTimes:I

    .line 46
    return-void
.end method

.method private findCurrentIndex()I
    .locals 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, value:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mMutexModeStatus:Z

    if-eqz v1, :cond_0

    .line 179
    const-string v0, "off"

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getPrefrenceSize()I
    .locals 2

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 209
    .local v0, entries:[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private grayClosed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 127
    iput-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 128
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 130
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 100
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/CameraModule;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0073

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0079

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public initialize(ILjava/util/List;)V
    .locals 4
    .parameter "resId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 58
    new-instance v0, Lcom/android/camera/preferences/PreferenceInflater;

    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 59
    .local v0, inflater:Lcom/android/camera/preferences/PreferenceInflater;
    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    iput-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 60
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/FlashButton;->setIconListPreference(Ljava/util/List;)V

    .line 61
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/camera/ui/FlashButton;->sAutoFlashIndex:I

    .line 62
    iput-boolean v3, p0, Lcom/android/camera/ui/FlashButton;->mIsFlash:Z

    .line 63
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/FlashButton;->mLastestFlashState:I

    .line 64
    iput v3, p0, Lcom/android/camera/ui/FlashButton;->mLastestFlashTimes:I

    .line 65
    return-void
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mCallback:Lcom/android/camera/ui/FlashButton$Callback;

    invoke-interface {v0}, Lcom/android/camera/ui/FlashButton$Callback;->dismissSettingView()V

    .line 71
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->toggle()V

    .line 72
    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mMutexModeStatus:Z

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mCallback:Lcom/android/camera/ui/FlashButton$Callback;

    invoke-interface {v0}, Lcom/android/camera/ui/FlashButton$Callback;->exitMutexModeStatus()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 51
    const v0, 0x7f0c0018

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    .line 52
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/FlashButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 54
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->requestLayout()V

    .line 55
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 84
    invoke-static {p0}, Lcom/android/camera/ui/UIHelper;->measureWidthByBackground(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Lcom/android/camera/ui/UIHelper;->measureHeightByBackground(Landroid/view/View;)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 86
    return-void
.end method

.method public overrideSettings(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    .line 185
    iget-boolean v1, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    if-nez v1, :cond_0

    .line 192
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/RotateImageView;->enableFilter(Z)V

    .line 189
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 191
    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public overrideValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public refreshValue()V
    .locals 3

    .prologue
    .line 164
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v2, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->findCurrentIndex()I

    move-result v0

    .line 166
    .local v0, index:I
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v2

    aget v1, v2, v0

    .line 167
    .local v1, resId:I
    sget v2, Lcom/android/camera/ui/FlashButton;->sAutoFlashIndex:I

    if-ne v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mIsFlash:Z

    if-eqz v2, :cond_1

    .line 168
    const/high16 v1, 0x7f05

    .line 172
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 174
    .end local v0           #index:I
    .end local v1           #resId:I
    :cond_0
    return-void

    .line 170
    .restart local v0       #index:I
    .restart local v1       #resId:I
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mIsFlash:Z

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 161
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/android/camera/ui/FlashButton$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mCallback:Lcom/android/camera/ui/FlashButton$Callback;

    .line 234
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isOverridden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    if-nez v0, :cond_1

    .line 216
    :cond_0
    const/4 p1, 0x0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 223
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 225
    :cond_2
    return-void
.end method

.method public setIconListPreference(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 133
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v3, :cond_1

    .line 134
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->grayClosed()V

    .line 155
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/camera/preferences/IconListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 138
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-gt v1, v3, :cond_2

    .line 139
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->grayClosed()V

    .line 140
    iput-boolean v2, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 141
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    goto :goto_0

    .line 146
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/ui/FlashButton;->mCanEnabled:Z

    .line 147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/FlashButton;->mOverrideValue:Ljava/lang/String;

    .line 148
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FlashButton;->setEnabled(Z)V

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/FlashButton;->setVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    .line 152
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/camera/ui/FlashButton;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    .line 123
    return-void
.end method

.method public setMutexModeStatus(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/android/camera/ui/FlashButton;->mMutexModeStatus:Z

    .line 229
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 230
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mFlashModeImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 91
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .parameter "value"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/camera/preferences/IconListPreference;->setValue(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 201
    return-void
.end method

.method public toggle()V
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-nez v1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->findCurrentIndex()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 112
    .local v0, index:I
    invoke-direct {p0}, Lcom/android/camera/ui/FlashButton;->getPrefrenceSize()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 113
    const/4 v0, 0x0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/ui/FlashButton;->refreshValue()V

    .line 118
    sget-object v1, Lcom/android/camera/ui/FlashButton;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch flash mode to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/FlashButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
