.class public abstract Lcom/android/camera/ui/SettingsStatusBar;
.super Ljava/lang/Object;
.source "SettingsStatusBar.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# instance fields
.field protected mColorEffectIndicator:Landroid/widget/ImageView;

.field protected mExposureIndicator:Landroid/widget/ImageView;

.field protected mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

.field protected mWhiteBalanceIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const v0, 0x7f0c001e

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RestrictRotateLayout;

    iput-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    .line 18
    const v0, 0x7f0c0081

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mColorEffectIndicator:Landroid/widget/ImageView;

    .line 19
    const v0, 0x7f0c0083

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    .line 20
    const v0, 0x7f0c0084

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    .line 21
    return-void
.end method


# virtual methods
.method protected getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 92
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RestrictRotateLayout;->setVisibility(I)V

    .line 33
    :cond_0
    return-void
.end method

.method protected isSimpleLayoutMode()Z
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isSimpleLayoutMode()Z

    move-result v0

    return v0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RestrictRotateLayout;->setOrientation(IZ)V

    .line 100
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mOnScreenIndicators:Lcom/android/camera/ui/RestrictRotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RestrictRotateLayout;->setVisibility(I)V

    .line 27
    :cond_0
    return-void
.end method

.method protected updateColorEffectIndicator(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mColorEffectIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 83
    :cond_0
    if-nez p1, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mColorEffectIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mColorEffectIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020107

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mColorEffectIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateExposureOnScreenIndicator(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 70
    :cond_0
    if-nez p1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020108

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public abstract updateOnScreenIndicators()V
.end method

.method protected updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 40
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02011a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 46
    :cond_2
    const v0, 0x7f0d0086

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020118

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 49
    :cond_3
    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020119

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 52
    :cond_4
    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 53
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020117

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 55
    :cond_5
    const v0, 0x7f0d0089

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 56
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02011b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 58
    :cond_6
    const v0, 0x7f0d008a

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 59
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02011c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 62
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method
