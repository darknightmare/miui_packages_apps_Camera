.class public Lcom/android/camera/ui/VideoSettingsStatusBar;
.super Lcom/android/camera/ui/SettingsStatusBar;
.source "VideoSettingsStatusBar.java"


# instance fields
.field private mVideoSpeedIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingsStatusBar;-><init>(Landroid/app/Activity;)V

    .line 16
    const v0, 0x7f0c008b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/VideoSettingsStatusBar;->mVideoSpeedIndicator:Landroid/widget/ImageView;

    .line 17
    return-void
.end method

.method private updateVideoSpeedIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 20
    iget-object v0, p0, Lcom/android/camera/ui/VideoSettingsStatusBar;->mVideoSpeedIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 32
    :goto_0
    return-void

    .line 23
    :cond_0
    const v0, 0x7f0d00ff

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/VideoSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/android/camera/ui/VideoSettingsStatusBar;->mVideoSpeedIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020104

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/ui/VideoSettingsStatusBar;->mVideoSpeedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 26
    :cond_1
    const v0, 0x7f0d0100

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/VideoSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/VideoSettingsStatusBar;->mVideoSpeedIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020105

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 28
    iget-object v0, p0, Lcom/android/camera/ui/VideoSettingsStatusBar;->mVideoSpeedIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/VideoSettingsStatusBar;->mVideoSpeedIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public updateOnScreenIndicators()V
    .locals 8

    .prologue
    const v7, 0x7f0d008b

    .line 36
    invoke-virtual {p0}, Lcom/android/camera/ui/VideoSettingsStatusBar;->isSimpleLayoutMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 37
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    .line 38
    .local v2, preferences:Lcom/android/camera/preferences/CameraSettingPreferences;
    const-string v5, "pref_camera_whitebalance_key"

    const v6, 0x7f0d007a

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/VideoSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    .local v4, whiteBalance:Ljava/lang/String;
    const-string v5, "pref_camera_coloreffect_key"

    invoke-virtual {p0, v7}, Lcom/android/camera/ui/VideoSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, colorEffect:Ljava/lang/String;
    const-string v5, "pref_video_speed_key"

    const v6, 0x7f0d00fa

    invoke-virtual {p0, v6}, Lcom/android/camera/ui/VideoSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, videoSpeed:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v1

    .line 47
    .local v1, exposure:I
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/VideoSettingsStatusBar;->updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v7}, Lcom/android/camera/ui/VideoSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/VideoSettingsStatusBar;->updateColorEffectIndicator(Z)V

    .line 49
    invoke-direct {p0, v3}, Lcom/android/camera/ui/VideoSettingsStatusBar;->updateVideoSpeedIndicator(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/VideoSettingsStatusBar;->updateExposureOnScreenIndicator(I)V

    .line 52
    .end local v0           #colorEffect:Ljava/lang/String;
    .end local v1           #exposure:I
    .end local v2           #preferences:Lcom/android/camera/preferences/CameraSettingPreferences;
    .end local v3           #videoSpeed:Ljava/lang/String;
    .end local v4           #whiteBalance:Ljava/lang/String;
    :cond_0
    return-void

    .line 48
    .restart local v0       #colorEffect:Ljava/lang/String;
    .restart local v1       #exposure:I
    .restart local v2       #preferences:Lcom/android/camera/preferences/CameraSettingPreferences;
    .restart local v3       #videoSpeed:Ljava/lang/String;
    .restart local v4       #whiteBalance:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
