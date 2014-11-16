.class public abstract Lcom/android/camera/LayoutModeManager;
.super Ljava/lang/Object;
.source "LayoutModeManager.java"


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

.field private mPreferenceChangedListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

.field private mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field private mSettingView:Lcom/android/camera/ui/SettingView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "activity"
    .parameter "indicatorClickListener"
    .parameter "preferenceChangedListener"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/camera/LayoutModeManager;->mActivity:Lcom/android/camera/ActivityBase;

    .line 29
    iput-object p2, p0, Lcom/android/camera/LayoutModeManager;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    .line 30
    iput-object p3, p0, Lcom/android/camera/LayoutModeManager;->mPreferenceChangedListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    .line 31
    return-void
.end method


# virtual methods
.method public dismissSettingPopup()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->dismissSettingPopup()Z

    move-result v0

    .line 86
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableSettingView(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SettingView;->setEnabled(Z)V

    .line 67
    :cond_0
    return-void
.end method

.method public getActiveSettingPopup()Landroid/view/View;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->getActiveSettingPopup()Landroid/view/View;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/LayoutModeManager;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    return-object v0
.end method

.method protected abstract getPreferencesXML(Z)I
.end method

.method public initializeSettingScreen(ZZLandroid/hardware/Camera$Parameters;Lcom/android/camera/ui/SettingView$SettingViewChangedListener;)Lcom/android/camera/ui/SettingView;
    .locals 6
    .parameter "isFrontCamera"
    .parameter "isSimpleLayoutMode"
    .parameter "parameters"
    .parameter "listener"

    .prologue
    .line 35
    if-eqz p2, :cond_0

    .line 36
    iget-object v2, p0, Lcom/android/camera/LayoutModeManager;->mActivity:Lcom/android/camera/ActivityBase;

    const v3, 0x7f0c000e

    invoke-virtual {v2, v3}, Lcom/android/camera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/SettingView;

    iput-object v2, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    .line 42
    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 43
    .local v0, cameraId:I
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/camera/LayoutModeManager;->getPreferencesXML(Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/LayoutModeManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {}, Lcom/android/camera/CameraHolder;->instance()Lcom/android/camera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    invoke-static {v2, v3, p3, v0, v4}, Lcom/android/camera/CameraSettings;->getPreferenceGroup(ILandroid/content/Context;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/LayoutModeManager;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 51
    iget-object v2, p0, Lcom/android/camera/LayoutModeManager;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getModule()Lcom/android/camera/module/Module;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getSupportedSettingKeys()Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, indicatorKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    iget-object v3, p0, Lcom/android/camera/LayoutModeManager;->mPreferenceChangedListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/SettingView;->setListener(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V

    .line 53
    iget-object v2, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v2, p4}, Lcom/android/camera/ui/SettingView;->setVisibleChangedListener(Lcom/android/camera/ui/SettingView$SettingViewChangedListener;)V

    .line 54
    iget-object v2, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {p0}, Lcom/android/camera/LayoutModeManager;->getPreferenceGroup()Lcom/android/camera/preferences/PreferenceGroup;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/LayoutModeManager;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/camera/ui/SettingView;->initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;I)V

    .line 56
    iget-object v2, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    return-object v2

    .line 38
    .end local v0           #cameraId:I
    .end local v1           #indicatorKeys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/camera/LayoutModeManager;->mActivity:Lcom/android/camera/ActivityBase;

    const v3, 0x7f0c0036

    invoke-virtual {v2, v3}, Lcom/android/camera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/SettingView;

    iput-object v2, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 1
    .parameter "keyvalues"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/SettingView;->overrideSettings([Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method public reloadPreferences()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/camera/LayoutModeManager;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->reloadPreferences()V

    .line 73
    :cond_0
    return-void
.end method
