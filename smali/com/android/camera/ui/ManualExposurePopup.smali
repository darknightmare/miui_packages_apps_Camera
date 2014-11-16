.class public Lcom/android/camera/ui/ManualExposurePopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "ManualExposurePopup.java"

# interfaces
.implements Lcom/android/camera/ui/AutoExposureBar$OnSettingChangedListener;


# instance fields
.field protected mAutoExposureBarISO:Lcom/android/camera/ui/AutoExposureBar;

.field protected mAutoExposureBarTime:Lcom/android/camera/ui/AutoExposureBar;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method private filterPreference(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, entryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080065

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, preferenceEntries:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080066

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, preferenceEntryValues:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getMaxExposureTimes(Landroid/content/Context;)I

    move-result v2

    .line 60
    .local v2, maxExposure:I
    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/camera/CameraSettings;->getMinExposureTimes(Landroid/content/Context;)I

    move-result v3

    .line 62
    .local v3, minExposure:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 63
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, entryValue:I
    if-gt v3, v0, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    iget-object v6, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d022c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 66
    :cond_1
    aget-object v6, v4, v1

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    aget-object v6, v5, v1

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0           #entryValue:I
    :cond_3
    return-void
.end method

.method private getExposureTime()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_qc_camera_exposuretime_key"

    iget-object v2, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d022c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getISOValue()Ljava/lang/String;
    .locals 4

    .prologue
    .line 83
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_qc_camera_iso_key"

    iget-object v2, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d00d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 9
    .parameter "preference"

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 28
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v8

    .line 29
    .local v8, isFrontCamera:Z
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mAutoExposureBarISO:Lcom/android/camera/ui/AutoExposureBar;

    const-string v1, "pref_qc_camera_iso_key"

    iget-object v2, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz v8, :cond_1

    const v2, 0x7f080042

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v8, :cond_2

    const v3, 0x7f080043

    :goto_1
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d00d2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/ui/ManualExposurePopup;->getISOValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/AutoExposureBar;->initialize(Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .local v6, entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v7, entryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v6, v7}, Lcom/android/camera/ui/ManualExposurePopup;->filterPreference(Ljava/util/List;Ljava/util/List;)V

    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mAutoExposureBarTime:Lcom/android/camera/ui/AutoExposureBar;

    const-string v1, "pref_qc_camera_exposuretime_key"

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v6, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/camera/ui/ManualExposurePopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d022b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/ui/ManualExposurePopup;->getExposureTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/AutoExposureBar;->initialize(Ljava/lang/String;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    if-eqz v8, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mAutoExposureBarTime:Lcom/android/camera/ui/AutoExposureBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoExposureBar;->setVisibility(I)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-void

    .line 29
    .end local v6           #entries:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #entryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const v2, 0x7f080040

    goto :goto_0

    :cond_2
    const v3, 0x7f080041

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/android/camera/ui/AbstractSettingPopup;->onFinishInflate()V

    .line 75
    const v0, 0x7f0c0054

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ManualExposurePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AutoExposureBar;

    iput-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mAutoExposureBarISO:Lcom/android/camera/ui/AutoExposureBar;

    .line 76
    const v0, 0x7f0c0055

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ManualExposurePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AutoExposureBar;

    iput-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mAutoExposureBarTime:Lcom/android/camera/ui/AutoExposureBar;

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mAutoExposureBarISO:Lcom/android/camera/ui/AutoExposureBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/AutoExposureBar;->setSettingChangedListener(Lcom/android/camera/ui/AutoExposureBar$OnSettingChangedListener;)V

    .line 78
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mAutoExposureBarTime:Lcom/android/camera/ui/AutoExposureBar;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/AutoExposureBar;->setSettingChangedListener(Lcom/android/camera/ui/AutoExposureBar$OnSettingChangedListener;)V

    .line 79
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ManualExposurePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mTitle:Landroid/widget/TextView;

    .line 80
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/ui/ManualExposurePopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 101
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingChanged()V

    .line 106
    :cond_1
    return-void
.end method

.method public reloadPreference()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mAutoExposureBarISO:Lcom/android/camera/ui/AutoExposureBar;

    invoke-direct {p0}, Lcom/android/camera/ui/ManualExposurePopup;->getISOValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoExposureBar;->setValue(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/android/camera/ui/ManualExposurePopup;->mAutoExposureBarTime:Lcom/android/camera/ui/AutoExposureBar;

    invoke-direct {p0}, Lcom/android/camera/ui/ManualExposurePopup;->getExposureTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AutoExposureBar;->setValue(Ljava/lang/String;)V

    .line 96
    return-void
.end method
