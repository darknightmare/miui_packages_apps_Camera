.class public Lcom/android/camera/CameraPreferenceActivity;
.super Lcom/android/camera/BasePreferenceActivity;
.source "CameraPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/camera/BasePreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected filterOptionsAccordingToIntent()V
    .locals 3

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/android/camera/CameraPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IsCaptureIntent"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_camera_burst_shooting_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 87
    iget-object v0, p0, Lcom/android/camera/BasePreferenceActivity;->mPreferenceGroup:Landroid/preference/PreferenceScreen;

    const-string v1, "pref_capture_when_stable_key"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/CameraPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Ljava/lang/String;)Z

    .line 89
    :cond_0
    return-void
.end method

.method protected getPreferenceXml(Z)I
    .locals 1
    .parameter "isSimpleLayoutMode"

    .prologue
    .line 10
    if-eqz p1, :cond_0

    const v0, 0x7f060003

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f060002

    goto :goto_0
.end method

.method protected onSettingChanged(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 15
    sget-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/ChangeManager;->request(I)V

    .line 16
    return-void
.end method

.method protected updatePreference(Lcom/android/camera/ui/PreviewListPreference;Ljava/lang/String;)V
    .locals 6
    .parameter "pref"
    .parameter "key"

    .prologue
    const v5, 0x7f0d00b8

    const v4, 0x7f0d00b5

    const v3, 0x7f0d00b4

    const v2, 0x7f0d00b1

    const v1, 0x7f0d00b0

    .line 20
    const-string v0, "pref_camera_picturesize_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getEntries()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 22
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getEntryValues()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 23
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefauleValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefauleValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    const-string v0, "pref_qc_camera_saturation_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    const v0, 0x7f08002f

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntries(I)V

    .line 31
    const v0, 0x7f080038

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntryValues(I)V

    .line 32
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, v3}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 36
    :cond_2
    const-string v0, "pref_qc_camera_contrast_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    const v0, 0x7f08002c

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntries(I)V

    .line 38
    const v0, 0x7f080035

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntryValues(I)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 43
    :cond_3
    const-string v0, "pref_qc_camera_sharpness_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 44
    const v0, 0x7f080032

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntries(I)V

    .line 45
    const v0, 0x7f08003b

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntryValues(I)V

    .line 46
    invoke-virtual {p0, v5}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, v5}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->isLeadcorePlatform()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 51
    const-string v0, "pref_qc_camera_saturation_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 52
    const v0, 0x7f080030

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntries(I)V

    .line 53
    const v0, 0x7f080039

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntryValues(I)V

    .line 54
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v4}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 58
    :cond_5
    const-string v0, "pref_qc_camera_contrast_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 59
    const v0, 0x7f08002d

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntries(I)V

    .line 60
    const v0, 0x7f080036

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntryValues(I)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v2}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 65
    :cond_6
    const-string v0, "pref_qc_camera_sharpness_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 66
    const v0, 0x7f080033

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntries(I)V

    .line 67
    const v0, 0x7f08003c

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setEntryValues(I)V

    .line 68
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 69
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 76
    :cond_7
    const-string v0, "pref_camera_antibanding_key"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/Util;->isAntibanding60()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const v0, 0x7f0d00e4

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setValue(Ljava/lang/String;)V

    .line 78
    const v0, 0x7f0d00e4

    invoke-virtual {p0, v0}, Lcom/android/camera/CameraPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/PreviewListPreference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
