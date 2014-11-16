.class public Lcom/android/camera/CameraLayoutModeManager;
.super Lcom/android/camera/LayoutModeManager;
.source "CameraLayoutModeManager.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "activity"
    .parameter "indicatorClickListener"
    .parameter "preferenceChangedListener"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/LayoutModeManager;-><init>(Lcom/android/camera/ActivityBase;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected getPreferencesXML(Z)I
    .locals 1
    .parameter "isSimpleLayoutMode"

    .prologue
    .line 15
    if-eqz p1, :cond_0

    const v0, 0x7f060005

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f060004

    goto :goto_0
.end method
