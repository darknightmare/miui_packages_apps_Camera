.class public Lcom/android/camera/ui/CameraSettingsStatusBar;
.super Lcom/android/camera/ui/SettingsStatusBar;
.source "CameraSettingsStatusBar.java"


# instance fields
.field private mAudioIndicator:Landroid/widget/ImageView;

.field private mExposureTimeIndicator:Landroid/widget/ImageView;

.field private mFaceBeautyIndicator:Landroid/widget/ImageView;

.field private mFocusIndicator:Landroid/widget/ImageView;

.field private mISOIndicator:Landroid/widget/ImageView;

.field private mSceneIndicator:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingsStatusBar;-><init>(Landroid/app/Activity;)V

    .line 25
    const v0, 0x7f0c0088

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mExposureTimeIndicator:Landroid/widget/ImageView;

    .line 26
    const v0, 0x7f0c0085

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    .line 27
    const v0, 0x7f0c0086

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mSceneIndicator:Landroid/widget/ImageView;

    .line 28
    const v0, 0x7f0c0087

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    .line 29
    const v0, 0x7f0c0080

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mAudioIndicator:Landroid/widget/ImageView;

    .line 30
    const v0, 0x7f0c0082

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFaceBeautyIndicator:Landroid/widget/ImageView;

    .line 31
    return-void
.end method

.method private isFrontCamera()Z
    .locals 1

    .prologue
    .line 210
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    return v0
.end method

.method private updateExposureTimeOnScreenIndicator(I)V
    .locals 2
    .parameter "time"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mExposureTimeIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 118
    :cond_0
    if-nez p1, :cond_1

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mExposureTimeIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mExposureTimeIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020109

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mExposureTimeIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFaceBeautyIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFaceBeautyIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 207
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFaceBeautyIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFaceBeautyIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFaceBeautyIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateFocusOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 195
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_1
    const-string v0, "infinity"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 186
    :cond_2
    const-string v0, "macro"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 189
    :cond_3
    const-string v0, "manual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 193
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateISOOnScreenIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isLeadcorePlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x7f0d00da

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0d00e1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 137
    :cond_3
    const v0, 0x7f0d00db

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 140
    :cond_4
    const v0, 0x7f0d00dc

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020110

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 143
    :cond_5
    const v0, 0x7f0d00dd

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020112

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 146
    :cond_6
    const v0, 0x7f0d00de

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 147
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020113

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 149
    :cond_7
    const v0, 0x7f0d00df

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const v1, 0x7f02010f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 152
    :cond_8
    const v0, 0x7f0d00e0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020111

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 156
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateSceneOnScreenIndicator(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mSceneIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 106
    :cond_0
    const v0, 0x7f0d00bb

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mSceneIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mSceneIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mSceneIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public updateAudioOnScreenIndicator(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mAudioIndicator:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 164
    :cond_0
    if-eqz p1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mAudioIndicator:Landroid/widget/ImageView;

    const v1, 0x7f020106

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mAudioIndicator:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mAudioIndicator:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateOnScreenIndicators()V
    .locals 13

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSettingsStatusBar;->isSimpleLayoutMode()Z

    move-result v11

    if-nez v11, :cond_1

    .line 36
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v6

    .line 37
    .local v6, preferences:Lcom/android/camera/preferences/CameraSettingPreferences;
    const-string v11, "pref_camera_face_beauty_key"

    const v12, 0x7f0d0240

    invoke-virtual {p0, v12}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, faceBeauty:Ljava/lang/String;
    const-string v11, "pref_qc_camera_iso_key"

    const v12, 0x7f0d00d1

    invoke-virtual {p0, v12}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 42
    .local v5, iso:Ljava/lang/String;
    const-string v11, "pref_qc_camera_exposuretime_key"

    const v12, 0x7f0d022c

    invoke-virtual {p0, v12}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, exposureTime:Ljava/lang/String;
    const-string v11, "pref_camera_focus_mode_key"

    const v12, 0x7f0d0072

    invoke-virtual {p0, v12}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, focusMode:Ljava/lang/String;
    const-string v11, "pref_camera_whitebalance_key"

    const v12, 0x7f0d007a

    invoke-virtual {p0, v12}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 50
    .local v10, whiteBalance:Ljava/lang/String;
    const-string v11, "pref_camera_coloreffect_key"

    const v12, 0x7f0d008b

    invoke-virtual {p0, v12}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, colorEffect:Ljava/lang/String;
    const-string v11, "pref_shader_coloreffect_key"

    const v12, 0x7f0d008c

    invoke-virtual {p0, v12}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 58
    .local v8, shaderColorEffect:Ljava/lang/String;
    const v11, 0x7f0d008b

    invoke-virtual {p0, v11}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const v11, 0x7f0d008c

    invoke-virtual {p0, v11}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_0
    const/4 v9, 0x1

    .line 60
    .local v9, showColorEffect:Z
    :goto_0
    invoke-static {v6}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v1

    .line 62
    .local v1, exposure:I
    invoke-direct {p0, v3}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateFaceBeautyIndicator(Ljava/lang/String;)V

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateExposureTimeOnScreenIndicator(I)V

    .line 66
    const-string v11, "pref_camera_scenemode_key"

    const v12, 0x7f0d00bb

    invoke-virtual {p0, v12}, Lcom/android/camera/ui/CameraSettingsStatusBar;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, sceneMode:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateSceneOnScreenIndicator(Ljava/lang/String;)V

    .line 70
    const-string v11, "auto"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 71
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateColorEffectIndicator(Z)V

    .line 72
    invoke-direct {p0, v5}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateISOOnScreenIndicator(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateExposureOnScreenIndicator(I)V

    .line 74
    invoke-virtual {p0, v10}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateWhiteBalanceOnScreenIndicator(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, v4}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateFocusOnScreenIndicator(Ljava/lang/String;)V

    .line 99
    .end local v0           #colorEffect:Ljava/lang/String;
    .end local v1           #exposure:I
    .end local v2           #exposureTime:Ljava/lang/String;
    .end local v3           #faceBeauty:Ljava/lang/String;
    .end local v4           #focusMode:Ljava/lang/String;
    .end local v5           #iso:Ljava/lang/String;
    .end local v6           #preferences:Lcom/android/camera/preferences/CameraSettingPreferences;
    .end local v7           #sceneMode:Ljava/lang/String;
    .end local v8           #shaderColorEffect:Ljava/lang/String;
    .end local v9           #showColorEffect:Z
    .end local v10           #whiteBalance:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 58
    .restart local v0       #colorEffect:Ljava/lang/String;
    .restart local v2       #exposureTime:Ljava/lang/String;
    .restart local v3       #faceBeauty:Ljava/lang/String;
    .restart local v4       #focusMode:Ljava/lang/String;
    .restart local v5       #iso:Ljava/lang/String;
    .restart local v6       #preferences:Lcom/android/camera/preferences/CameraSettingPreferences;
    .restart local v8       #shaderColorEffect:Ljava/lang/String;
    .restart local v10       #whiteBalance:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 77
    .restart local v1       #exposure:I
    .restart local v7       #sceneMode:Ljava/lang/String;
    .restart local v9       #showColorEffect:Z
    :cond_3
    iget-object v11, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    if-eqz v11, :cond_4

    .line 78
    iget-object v11, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mISOIndicator:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :cond_4
    iget-object v11, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    if-eqz v11, :cond_5

    .line 81
    iget-object v11, p0, Lcom/android/camera/ui/SettingsStatusBar;->mWhiteBalanceIndicator:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :cond_5
    iget-object v11, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    if-eqz v11, :cond_6

    .line 84
    iget-object v11, p0, Lcom/android/camera/ui/CameraSettingsStatusBar;->mFocusIndicator:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    :cond_6
    iget-object v11, p0, Lcom/android/camera/ui/SettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    if-eqz v11, :cond_7

    .line 87
    iget-object v11, p0, Lcom/android/camera/ui/SettingsStatusBar;->mExposureIndicator:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 89
    :cond_7
    iget-object v11, p0, Lcom/android/camera/ui/SettingsStatusBar;->mColorEffectIndicator:Landroid/widget/ImageView;

    if-eqz v11, :cond_1

    .line 90
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v11

    if-nez v11, :cond_8

    .line 91
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/CameraSettingsStatusBar;->updateColorEffectIndicator(Z)V

    goto :goto_1

    .line 93
    :cond_8
    iget-object v11, p0, Lcom/android/camera/ui/SettingsStatusBar;->mColorEffectIndicator:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
