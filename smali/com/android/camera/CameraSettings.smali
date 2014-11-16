.class public Lcom/android/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"


# static fields
.field private static final MMS_VIDEO_DURATION:I

.field public static final sCameraChangeManager:Lcom/android/camera/ChangeManager;

.field public static sCroppedIfNeeded:Z

.field private static sSceneToFlash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sVideoChangeManager:Lcom/android/camera/ChangeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->duration:I

    :goto_0
    sput v0, Lcom/android/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    .line 192
    const-string v0, "camera_full_preview"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    .line 199
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    .line 201
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "auto"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "portrait"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "landscape"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "sports"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "night"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "night-portrait"

    const-string v2, "on"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "beach"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "snow"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "sunset"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "fireworks"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "backlight"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    const-string v1, "flowers"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    new-instance v0, Lcom/android/camera/ChangeManager;

    invoke-direct {v0}, Lcom/android/camera/ChangeManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sCameraChangeManager:Lcom/android/camera/ChangeManager;

    .line 688
    new-instance v0, Lcom/android/camera/ChangeManager;

    invoke-direct {v0}, Lcom/android/camera/ChangeManager;-><init>()V

    sput-object v0, Lcom/android/camera/CameraSettings;->sVideoChangeManager:Lcom/android/camera/ChangeManager;

    return-void

    .line 170
    :cond_0
    const/16 v0, 0x1e

    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCameraId([Landroid/hardware/Camera$CameraInfo;Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;)V
    .locals 8
    .parameter "cameraInfo"
    .parameter "group"
    .parameter "preference"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 443
    array-length v3, p0

    .line 444
    .local v3, numOfCameras:I
    if-ge v3, v6, :cond_0

    .line 445
    invoke-virtual {p2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    .line 461
    :goto_0
    return-void

    .line 449
    :cond_0
    new-array v0, v6, [Ljava/lang/CharSequence;

    .line 450
    .local v0, entryValues:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v6, p0

    if-ge v1, v6, :cond_1

    .line 451
    aget-object v6, p0, v1

    iget v6, v6, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v6, v4, :cond_2

    move v2, v4

    .line 455
    .local v2, index:I
    :goto_2
    aget-object v6, v0, v2

    if-nez v6, :cond_4

    .line 456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 457
    if-ne v2, v4, :cond_3

    move v6, v5

    :goto_3
    aget-object v6, v0, v6

    if-eqz v6, :cond_4

    .line 460
    .end local v2           #index:I
    :cond_1
    invoke-virtual {p2, v0}, Lcom/android/camera/preferences/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v2, v5

    .line 451
    goto :goto_2

    .restart local v2       #index:I
    :cond_3
    move v6, v4

    .line 457
    goto :goto_3

    .line 450
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static buildExposureCompensation(Landroid/hardware/Camera$Parameters;Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;)V
    .locals 19
    .parameter "parameters"
    .parameter "group"
    .parameter "exposure"

    .prologue
    .line 411
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v8

    .line 412
    .local v8, max:I
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v11

    .line 413
    .local v11, min:I
    if-nez v8, :cond_0

    if-nez v11, :cond_0

    .line 414
    invoke-virtual/range {p2 .. p2}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    .line 439
    :goto_0
    return-void

    .line 417
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v13

    .line 419
    .local v13, step:F
    int-to-float v14, v8

    mul-float/2addr v14, v13

    invoke-static {v14}, Landroid/util/FloatMath;->floor(F)F

    move-result v14

    float-to-int v10, v14

    .line 420
    .local v10, maxValue:I
    int-to-float v14, v11

    mul-float/2addr v14, v13

    invoke-static {v14}, Landroid/util/FloatMath;->ceil(F)F

    move-result v14

    float-to-int v12, v14

    .line 421
    .local v12, minValue:I
    sub-int v14, v8, v11

    add-int/lit8 v9, v14, 0x1

    .line 422
    .local v9, maxCount:I
    sub-int v14, v10, v12

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 423
    .local v4, gearCount:I
    if-ne v4, v9, :cond_3

    const/4 v7, 0x1

    .line 424
    .local v7, integerStep:Z
    :goto_1
    new-array v2, v4, [Ljava/lang/CharSequence;

    .line 425
    .local v2, entries:[Ljava/lang/CharSequence;
    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 426
    .local v3, entryValues:[Ljava/lang/CharSequence;
    move v5, v12

    .local v5, i:I
    :goto_2
    if-gt v5, v10, :cond_5

    .line 427
    if-eqz v7, :cond_4

    sub-int v6, v10, v5

    .line 428
    .local v6, index:I
    :goto_3
    int-to-float v14, v5

    div-float/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v6

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v1, builder:Ljava/lang/StringBuilder;
    if-lez v5, :cond_1

    const/16 v14, 0x2b

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 431
    :cond_1
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v6

    .line 432
    if-nez v7, :cond_2

    if-lez v6, :cond_2

    .line 433
    add-int/lit8 v14, v6, -0x1

    int-to-double v15, v5

    const-wide/high16 v17, 0x3fe0

    add-double v15, v15, v17

    double-to-float v15, v15

    div-float/2addr v15, v13

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v3, v14

    .line 434
    add-int/lit8 v14, v6, -0x1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v14

    .line 426
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 423
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #entries:[Ljava/lang/CharSequence;
    .end local v3           #entryValues:[Ljava/lang/CharSequence;
    .end local v5           #i:I
    .end local v6           #index:I
    .end local v7           #integerStep:Z
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 427
    .restart local v2       #entries:[Ljava/lang/CharSequence;
    .restart local v3       #entryValues:[Ljava/lang/CharSequence;
    .restart local v5       #i:I
    .restart local v7       #integerStep:Z
    :cond_4
    sub-int v14, v10, v5

    mul-int/lit8 v6, v14, 0x2

    goto :goto_3

    .line 437
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/camera/preferences/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 438
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/camera/preferences/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private static changePreviewPanelLayoutParams(Landroid/app/Activity;I)V
    .locals 7
    .parameter "activity"
    .parameter "index"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 749
    const v3, 0x7f0c0060

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 750
    .local v1, previewPanel:Landroid/widget/RelativeLayout;
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 752
    .local v0, p1:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    .line 754
    .local v2, rules1:[I
    if-nez p1, :cond_0

    .line 755
    const v3, 0x7f0c000f

    aput v3, v2, v5

    .line 756
    const v3, 0x7f0c0016

    aput v3, v2, v6

    .line 762
    :goto_0
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 763
    return-void

    .line 758
    :cond_0
    aput v4, v2, v5

    .line 759
    aput v4, v2, v6

    goto :goto_0
.end method

.method public static changeUIByPreviewSize(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "index"

    .prologue
    .line 810
    sget-boolean v0, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-nez v0, :cond_0

    .line 811
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->changePreviewPanelLayoutParams(Landroid/app/Activity;I)V

    .line 812
    invoke-static {}, Lcom/android/camera/ModuleManager;->getCurrentMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 813
    invoke-static {p0, p1}, Lcom/android/camera/CameraSettings;->changeViewFinderLayout(Landroid/app/Activity;I)V

    .line 816
    :cond_0
    return-void
.end method

.method private static changeViewFinderLayout(Landroid/app/Activity;I)V
    .locals 11
    .parameter "activity"
    .parameter "index"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 766
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 768
    .local v0, bottomPanelHeight:I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b003b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 771
    .local v1, finderFramePadding:I
    const v6, 0x7f0c0098

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 773
    .local v3, qRCodeFragmentLayout:Landroid/widget/RelativeLayout;
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 775
    .local v2, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v4

    .line 776
    .local v4, rules:[I
    const v6, 0x7f0c009a

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 778
    .local v5, viewFinderFrame:Landroid/view/View;
    if-nez p1, :cond_0

    .line 779
    const v6, 0x7f0c000f

    aput v6, v4, v9

    .line 780
    const v6, 0x7f0c0016

    aput v6, v4, v10

    .line 782
    sub-int v6, v1, v0

    invoke-virtual {v5, v8, v8, v8, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 789
    :goto_0
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 790
    return-void

    .line 784
    :cond_0
    aput v8, v4, v9

    .line 785
    aput v8, v4, v10

    .line 787
    invoke-virtual {v5, v8, v8, v8, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private static filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V
    .locals 2
    .parameter "group"
    .parameter "pref"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Lcom/android/camera/preferences/ListPreference;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 485
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 486
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    .line 497
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/camera/preferences/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 491
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-gt v0, v1, :cond_2

    .line 492
    invoke-virtual {p1}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    goto :goto_0

    .line 496
    :cond_2
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V

    goto :goto_0
.end method

.method public static get4kProfile()I
    .locals 3

    .prologue
    .line 634
    const/4 v1, -0x1

    .line 636
    :try_start_0
    const-class v0, Landroid/media/CamcorderProfile;

    const-string v2, "QUALITY_4kUHD"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 637
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 638
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v0

    .line 644
    :goto_0
    return v0

    .line 639
    :catch_0
    move-exception v0

    move v0, v1

    .line 643
    goto :goto_0

    .line 640
    :catch_1
    move-exception v0

    move v0, v1

    .line 643
    goto :goto_0

    .line 641
    :catch_2
    move-exception v0

    move v0, v1

    .line 643
    goto :goto_0

    .line 642
    :catch_3
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "cameraId"
    .parameter "defaultQuality"

    .prologue
    .line 309
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 310
    .local v0, quality:I
    invoke-static {p0, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getExitText(Ljava/lang/String;)I
    .locals 4
    .parameter "key"

    .prologue
    .line 832
    const-string v0, "pref_camera_coloreffect_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shader_coloreffect_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    :cond_0
    const v0, 0x7f0d01df

    .line 861
    :goto_0
    return v0

    .line 835
    :cond_1
    const-string v0, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_video_hdr_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 837
    :cond_2
    const v0, 0x7f0d01dc

    goto :goto_0

    .line 838
    :cond_3
    const-string v0, "pref_camera_hand_night_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 839
    const v0, 0x7f0d01dd

    goto :goto_0

    .line 840
    :cond_4
    const-string v0, "pref_audio_capture"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 841
    const v0, 0x7f0d01e0

    goto :goto_0

    .line 842
    :cond_5
    const-string v0, "pref_camera_panoramamode_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 843
    const v0, 0x7f0d01de

    goto :goto_0

    .line 844
    :cond_6
    const-string v0, "pref_video_speed_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 845
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "fast"

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    const-string v2, "pref_video_speed_key"

    const-string v3, "normal"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0d01e2

    goto :goto_0

    :cond_7
    const v0, 0x7f0d01e1

    goto :goto_0

    .line 850
    :cond_8
    const-string v0, "pref_video_quality_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 851
    const v0, 0x7f0d0275

    goto :goto_0

    .line 852
    :cond_9
    const-string v0, "pref_camera_face_beauty_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 853
    const v0, 0x7f0d0259

    goto :goto_0

    .line 854
    :cond_a
    const-string v0, "pref_camera_ubi_focus_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 855
    const v0, 0x7f0d0269

    goto/16 :goto_0

    .line 856
    :cond_b
    const-string v0, "pref_camera_countdown_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 857
    const v0, 0x7f0d0277

    goto/16 :goto_0

    .line 858
    :cond_c
    const-string v0, "pref_camera_burst_shooting_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 859
    const v0, 0x7f0d0187

    goto/16 :goto_0

    .line 861
    :cond_d
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public static getFlashModeByScene(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "sceneMode"

    .prologue
    .line 998
    sget-object v0, Lcom/android/camera/CameraSettings;->sSceneToFlash:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getFocusMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 945
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_focus_mode_key"

    const v2, 0x7f0d0072

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFocusPosition()I
    .locals 3

    .prologue
    .line 983
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_qc_focus_position_key"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getKValue()I
    .locals 3

    .prologue
    .line 931
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_qc_manual_whitebalance_k_value_key"

    const/16 v2, 0x157c

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxExposureTimes(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 1009
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-eqz v0, :cond_0

    .line 1010
    check-cast p0, Lcom/android/camera/ActivityBase;

    .end local p0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMaxExposureTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1012
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getMaxPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I
    .locals 2
    .parameter "params"

    .prologue
    .line 1016
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 1017
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1019
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 1021
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [I

    goto :goto_0
.end method

.method public static getMinExposureTimes(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 1002
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI3W:Z

    if-eqz v0, :cond_0

    .line 1003
    check-cast p0, Lcom/android/camera/ActivityBase;

    .end local p0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getParameter()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    check-cast v0, Lcom/android/camera/hardware/QcomCamera$QcomParameters;

    invoke-virtual {v0}, Lcom/android/camera/hardware/QcomCamera$QcomParameters;->getMinExposureTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1005
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPhotoPreviewFpsRange(Landroid/hardware/Camera$Parameters;)[I
    .locals 10
    .parameter

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x7530

    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 1068
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v7

    .line 1069
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1070
    const-string v0, "CameraSettings"

    const-string v1, "No suppoted frame rates returned!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 1104
    :goto_0
    return-object v0

    .line 1075
    :cond_0
    const v0, 0x61a80

    .line 1076
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1077
    aget v2, v0, v3

    .line 1078
    aget v0, v0, v9

    .line 1079
    if-lt v0, v5, :cond_5

    if-gt v2, v5, :cond_5

    if-ge v2, v1, :cond_5

    move v0, v2

    :goto_2
    move v1, v0

    .line 1084
    goto :goto_1

    .line 1088
    :cond_1
    const/4 v0, -0x1

    move v2, v3

    move v4, v3

    move v5, v0

    .line 1090
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1091
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1092
    aget v8, v0, v3

    .line 1093
    aget v0, v0, v9

    .line 1094
    if-ne v8, v1, :cond_2

    if-ge v4, v0, :cond_2

    move v4, v0

    move v5, v2

    .line 1090
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 1100
    :cond_3
    if-ltz v5, :cond_4

    .line 1101
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    .line 1103
    :cond_4
    const-string v0, "CameraSettings"

    const-string v1, "Can\'t find an appropiate frame rate range!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 1104
    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static getPreferenceGroup(ILandroid/content/Context;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)Lcom/android/camera/preferences/PreferenceGroup;
    .locals 2
    .parameter "preferenceRes"
    .parameter "context"
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 249
    new-instance v1, Lcom/android/camera/preferences/PreferenceInflater;

    invoke-direct {v1, p1}, Lcom/android/camera/preferences/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 250
    .local v1, inflater:Lcom/android/camera/preferences/PreferenceInflater;
    invoke-virtual {v1, p0}, Lcom/android/camera/preferences/PreferenceInflater;->inflate(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v0

    check-cast v0, Lcom/android/camera/preferences/PreferenceGroup;

    .line 252
    .local v0, group:Lcom/android/camera/preferences/PreferenceGroup;
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/camera/CameraSettings;->initPreference(Lcom/android/camera/preferences/PreferenceGroup;Landroid/content/Context;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V

    .line 254
    return-object v0
.end method

.method public static getPreviewAspectRatio(II)D
    .locals 8
    .parameter "width"
    .parameter "height"

    .prologue
    .line 258
    const-wide/16 v0, 0x0

    .line 259
    .local v0, ratio:D
    int-to-double v2, p0

    int-to-double v4, p1

    div-double/2addr v2, v4

    const-wide v4, 0x3ff5555555555555L

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    int-to-double v4, p0

    int-to-double v6, p1

    div-double/2addr v4, v6

    const-wide v6, 0x3ffc71c71c71c71cL

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 261
    const-wide v0, 0x3ffc71c720000000L

    .line 265
    :goto_0
    return-wide v0

    .line 263
    :cond_0
    const-wide v0, 0x3ff5555560000000L

    goto :goto_0
.end method

.method public static getSmartShutterPosition()Ljava/lang/String;
    .locals 3

    .prologue
    .line 941
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_key_camera_smart_shutter_position"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1
    .parameter "resId"

    .prologue
    .line 346
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedVideoQuality(Landroid/hardware/Camera$Parameters;I)Ljava/util/ArrayList;
    .locals 11
    .parameter "parameters"
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    .line 648
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v1, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "fast"

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    const-string v4, "pref_video_speed_key"

    const-string v5, "normal"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 652
    invoke-static {}, Lcom/android/camera/CameraSettings;->get4kProfile()I

    move-result v0

    .line 653
    .local v0, quality4k:I
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoQuality4kUHD()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_0
    invoke-static {p1, v8}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    .end local v0           #quality4k:I
    :cond_1
    invoke-static {p1, v7}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 661
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    :cond_2
    invoke-static {p1, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 664
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_3
    const/16 v2, 0xb

    invoke-static {p1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 667
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 669
    :cond_4
    invoke-static {p1, v10}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 670
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_5
    invoke-static {p1, v9}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 673
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    :cond_6
    return-object v1
.end method

.method public static getSupportedVideoSpeed(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 6
    .parameter "context"
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    check-cast p0, Lcom/android/camera/ActivityBase;

    .end local p0
    invoke-virtual {p0}, Lcom/android/camera/ActivityBase;->getModule()Lcom/android/camera/module/Module;

    move-result-object v4

    const v5, 0x7f0d0020

    invoke-interface {v4, v5}, Lcom/android/camera/module/Module;->getDefaultPreferenceId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 622
    .local v0, defaultQuality:Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    const-string v4, "pref_video_quality_key"

    invoke-virtual {v3, v4, v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 624
    .local v1, quality:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v2, supported:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "normal"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 627
    const-string v3, "fast"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    :cond_0
    const-string v3, "slow"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    return-object v2
.end method

.method public static getUIStyleByPreview(II)I
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 797
    sget-boolean v1, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v1, :cond_1

    .line 798
    const/4 v0, 0x1

    .line 806
    :cond_0
    :goto_0
    return v0

    .line 800
    :cond_1
    const/4 v0, 0x0

    .line 802
    .local v0, index:I
    int-to-double v1, p0

    int-to-double v3, p1

    div-double/2addr v1, v3

    const-wide v3, 0x3ff5555555555555L

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    int-to-double v3, p0

    int-to-double v5, p1

    div-double/2addr v3, v5

    const-wide v5, 0x3ffc71c71c71c71cL

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 804
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static initPreference(Lcom/android/camera/preferences/PreferenceGroup;Landroid/content/Context;Landroid/hardware/Camera$Parameters;I[Landroid/hardware/Camera$CameraInfo;)V
    .locals 13
    .parameter "group"
    .parameter "context"
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "cameraInfo"

    .prologue
    .line 351
    const-string v11, "pref_video_quality_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v8

    .line 352
    .local v8, videoQuality:Lcom/android/camera/preferences/ListPreference;
    const-string v11, "pref_video_speed_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v9

    .line 353
    .local v9, videoSpeed:Lcom/android/camera/preferences/ListPreference;
    const-string v11, "pref_video_time_lapse_frame_interval_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v7

    .line 354
    .local v7, timeLapseInterval:Lcom/android/camera/preferences/ListPreference;
    const-string v11, "pref_camera_whitebalance_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v10

    .line 355
    .local v10, whiteBalance:Lcom/android/camera/preferences/ListPreference;
    const-string v11, "pref_camera_scenemode_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v6

    .line 356
    .local v6, sceneMode:Lcom/android/camera/preferences/ListPreference;
    const-string v11, "pref_camera_coloreffect_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v3

    .line 357
    .local v3, colorEffect:Lcom/android/camera/preferences/ListPreference;
    const-string v11, "pref_camera_exposure_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v4

    .line 358
    .local v4, exposure:Lcom/android/camera/preferences/ListPreference;
    const-string v11, "pref_camera_id_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/preferences/IconListPreference;

    .line 360
    .local v2, cameraIdPref:Lcom/android/camera/preferences/IconListPreference;
    const-string v11, "pref_camera_focus_mode_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v1

    .line 361
    .local v1, cameraFocusMode:Lcom/android/camera/preferences/ListPreference;
    const-string v11, "pref_qc_camera_iso_key"

    invoke-virtual {p0, v11}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v5

    .line 365
    .local v5, iso:Lcom/android/camera/preferences/ListPreference;
    if-eqz v8, :cond_0

    move-object v11, p1

    .line 366
    check-cast v11, Lcom/android/camera/ActivityBase;

    invoke-virtual {v11}, Lcom/android/camera/ActivityBase;->getModule()Lcom/android/camera/module/Module;

    move-result-object v11

    const v12, 0x7f080001

    invoke-interface {v11, v12}, Lcom/android/camera/module/Module;->getDefaultPreferenceId(I)I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/camera/preferences/ListPreference;->setEntryValues(I)V

    .line 368
    invoke-static/range {p2 .. p3}, Lcom/android/camera/CameraSettings;->getSupportedVideoQuality(Landroid/hardware/Camera$Parameters;I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {p0, v8, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 371
    :cond_0
    if-eqz v9, :cond_2

    .line 372
    move/from16 v0, p3

    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->getSupportedVideoSpeed(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v11

    invoke-static {p0, v9, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 373
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_2

    .line 374
    :cond_1
    const v11, 0x7f0d01e4

    invoke-static {v11}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/camera/preferences/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 378
    :cond_2
    if-eqz v10, :cond_3

    .line 379
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v11

    invoke-static {p0, v10, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 382
    :cond_3
    if-eqz v6, :cond_4

    .line 383
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v11

    invoke-static {p0, v6, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 387
    :cond_4
    if-eqz v3, :cond_5

    .line 388
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v11

    invoke-static {p0, v3, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 392
    :cond_5
    if-eqz v1, :cond_6

    .line 393
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v11

    invoke-static {p0, v1, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 396
    :cond_6
    if-eqz v4, :cond_7

    invoke-static {p2, p0, v4}, Lcom/android/camera/CameraSettings;->buildExposureCompensation(Landroid/hardware/Camera$Parameters;Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;)V

    .line 398
    :cond_7
    if-eqz v2, :cond_8

    move-object/from16 v0, p4

    invoke-static {v0, p0, v2}, Lcom/android/camera/CameraSettings;->buildCameraId([Landroid/hardware/Camera$CameraInfo;Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/IconListPreference;)V

    .line 400
    :cond_8
    if-eqz v7, :cond_9

    invoke-static {v7}, Lcom/android/camera/CameraSettings;->resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V

    .line 402
    :cond_9
    if-eqz v5, :cond_a

    .line 403
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getModule()Lcom/android/camera/module/Module;

    move-result-object v11

    const v12, 0x7f080043

    invoke-interface {v11, v12}, Lcom/android/camera/module/Module;->getDefaultPreferenceId(I)I

    move-result v11

    invoke-virtual {v5, v11}, Lcom/android/camera/preferences/ListPreference;->setEntryValues(I)V

    .line 405
    check-cast p2, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;

    .end local p2
    invoke-virtual {p2}, Lcom/android/camera/hardware/CameraHardware$HardwareParameters;->getSupportedIsoValues()Ljava/util/List;

    move-result-object v11

    invoke-static {p0, v5, v11}, Lcom/android/camera/CameraSettings;->filterUnsupportedOptions(Lcom/android/camera/preferences/PreferenceGroup;Lcom/android/camera/preferences/ListPreference;Ljava/util/List;)V

    .line 407
    :cond_a
    return-void
.end method

.method public static isAspectRatio16_9(II)Z
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 282
    if-ge p0, p1, :cond_0

    .line 283
    move v2, p0

    .line 284
    .local v2, tmp:I
    move p0, p1

    .line 285
    move p1, v2

    .line 287
    .end local v2           #tmp:I
    :cond_0
    int-to-double v3, p0

    int-to-double v5, p1

    div-double v0, v3, v5

    .line 288
    .local v0, ratio:D
    const-wide v3, 0x3ffc71c71c71c71cL

    sub-double v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f947ae147ae147bL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 289
    const/4 v3, 0x1

    .line 291
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isAspectRatio4_3(II)Z
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 269
    if-ge p0, p1, :cond_0

    .line 270
    move v2, p0

    .line 271
    .local v2, tmp:I
    move p0, p1

    .line 272
    move p1, v2

    .line 274
    .end local v2           #tmp:I
    :cond_0
    int-to-double v3, p0

    int-to-double v5, p1

    div-double v0, v3, v5

    .line 275
    .local v0, ratio:D
    const-wide v3, 0x3ff5555555555555L

    sub-double v3, v0, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f947ae147ae147bL

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 276
    const/4 v3, 0x1

    .line 278
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isBigForBeautify(Landroid/hardware/Camera$Size;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 987
    if-eqz p0, :cond_0

    .line 988
    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v1, v2

    const v2, 0x3d0900

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    .line 990
    :cond_0
    return v0
.end method

.method public static isBurstShootingEnable(Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter "pref"

    .prologue
    .line 738
    invoke-static {}, Lcom/android/camera/Device;->isSupportedLongClichBurstMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "on"

    const-string v1, "pref_camera_burst_shooting_key"

    const v2, 0x7f0d017b

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraSoundOpen(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 717
    const-string v0, "pref_camera_sound_key"

    const v1, 0x7f0d001a

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isCountDownCapture()Z
    .locals 3

    .prologue
    .line 1044
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_camera_countdown_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFaceBeautyOn(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 994
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFocusModeSwitching()Z
    .locals 3

    .prologue
    .line 961
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    const-string v1, "pref_qc_focus_mode_switching_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFrontCamera()Z
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->isFrontCamera()Z

    move-result v0

    return v0
.end method

.method public static isFrontMirror(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 725
    const-string v0, "pref_captrue_mirror_key"

    const v1, 0x7f0d001e

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isFullScreen(II)Z
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 295
    if-ge p0, p1, :cond_0

    .line 296
    move v0, p0

    .line 297
    .local v0, tmp:I
    move p0, p1

    .line 298
    move p1, v0

    .line 300
    .end local v0           #tmp:I
    :cond_0
    int-to-double v1, p0

    int-to-double v3, p1

    div-double/2addr v1, v3

    const-wide v3, 0x3ff5555555555555L

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    int-to-double v3, p0

    int-to-double v5, p1

    div-double/2addr v3, v5

    const-wide v5, 0x3ffc71c71c71c71cL

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 302
    const/4 v1, 0x1

    .line 304
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isLongPressFocused(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "pref"

    .prologue
    const/4 v0, 0x0

    .line 743
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSingleClickBurstMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "pref_long_pressed_shutter_button_focus_key"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isMovieSolidOn(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 721
    const-string v0, "pref_camera_movie_solid_key"

    const v1, 0x7f0d018a

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNoPopup(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 228
    const-string v0, "pref_camera_panoramamode_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_hand_night_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_audio_capture"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_key_camera_referenceline"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_settings"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_video_hdr_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_ubi_focus_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_burst_shooting_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_ae_bracket_hdr_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_nv_raw_data_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPressDownCapture()Z
    .locals 1

    .prologue
    .line 957
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI4:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isLongPressFocused(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRecordLocation(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 713
    const-string v0, "pref_camera_recordlocation_key"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isScanQRCode(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "pref"

    .prologue
    .line 734
    const-string v0, "pref_scan_qrcode_key"

    const v1, 0x7f0d0229

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSimpleLayoutMode(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "sp"

    .prologue
    const/4 v0, 0x0

    .line 691
    const-string v1, "pref_layout_mode_key"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isVideoCaptureEnabled(Landroid/content/SharedPreferences;)Z
    .locals 2
    .parameter "sp"

    .prologue
    .line 709
    const-string v0, "pref_video_captrue_ability_key"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I
    .locals 5
    .parameter "preferences"

    .prologue
    .line 562
    const-string v2, "pref_camera_exposure_key"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, exposure:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 568
    :goto_0
    return v2

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid exposure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static readPreferredCameraId(Landroid/content/SharedPreferences;)I
    .locals 2
    .parameter "pref"

    .prologue
    .line 551
    const-string v0, "pref_camera_id_key"

    const-string v1, "0"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static readZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)I
    .locals 5
    .parameter "preferences"

    .prologue
    .line 584
    const-string v2, "pref_camera_zoom_key"

    const-string v3, "0"

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, exposure:Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 590
    :goto_0
    return v2

    .line 587
    :catch_0
    move-exception v0

    .line 588
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "CameraSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid zoom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z
    .locals 5
    .parameter "group"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    .line 464
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/android/camera/preferences/PreferenceGroup;->size()I

    move-result v2

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 465
    invoke-virtual {p0, v1}, Lcom/android/camera/preferences/PreferenceGroup;->get(I)Lcom/android/camera/preferences/CameraPreference;

    move-result-object v0

    .line 466
    .local v0, child:Lcom/android/camera/preferences/CameraPreference;
    instance-of v3, v0, Lcom/android/camera/preferences/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v0

    .line 467
    check-cast v3, Lcom/android/camera/preferences/PreferenceGroup;

    invoke-static {v3, p1}, Lcom/android/camera/CameraSettings;->removePreference(Lcom/android/camera/preferences/PreferenceGroup;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 477
    .end local v0           #child:Lcom/android/camera/preferences/CameraPreference;
    :goto_1
    return v3

    .line 471
    .restart local v0       #child:Lcom/android/camera/preferences/CameraPreference;
    :cond_0
    instance-of v3, v0, Lcom/android/camera/preferences/ListPreference;

    if-eqz v3, :cond_1

    check-cast v0, Lcom/android/camera/preferences/ListPreference;

    .end local v0           #child:Lcom/android/camera/preferences/CameraPreference;
    invoke-virtual {v0}, Lcom/android/camera/preferences/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 473
    invoke-virtual {p0, v1}, Lcom/android/camera/preferences/PreferenceGroup;->removePreference(I)V

    move v3, v4

    .line 474
    goto :goto_1

    .line 464
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static resetCountDownCapturePreference()V
    .locals 2

    .prologue
    .line 1025
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1026
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_countdown_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1027
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1028
    return-void
.end method

.method public static resetExposure()V
    .locals 2

    .prologue
    .line 578
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 579
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_exposure_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 580
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 581
    return-void
.end method

.method private static resetIfInvalid(Lcom/android/camera/preferences/ListPreference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/camera/preferences/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 503
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/preferences/ListPreference;->setValueIndex(I)V

    .line 505
    :cond_0
    return-void
.end method

.method public static resetManualExposure()V
    .locals 2

    .prologue
    .line 912
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 913
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_qc_camera_iso_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 914
    const-string v1, "pref_qc_camera_exposuretime_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 915
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 916
    return-void
.end method

.method public static resetOpenCameraFailTimes()V
    .locals 4

    .prologue
    .line 703
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 704
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "open_camera_fail_key"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 705
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 706
    return-void
.end method

.method public static resetSettingsNoNeedToSave(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 9
    .parameter "preferences"

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 866
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "pref_camera_exposure_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 867
    const-string v6, "pref_camera_coloreffect_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 868
    const-string v6, "pref_shader_coloreffect_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 869
    const-string v6, "pref_camera_focus_mode_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 870
    const-string v6, "pref_video_focusmode_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 871
    const-string v6, "pref_qc_camera_iso_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 872
    const-string v6, "pref_camera_whitebalance_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 873
    const-string v6, "pref_camera_scenemode_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 874
    const-string v6, "pref_video_speed_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 875
    const-string v6, "pref_camera_ae_bracket_hdr_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 876
    const-string v6, "pref_video_hdr_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 877
    const-string v6, "pref_video_quality_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 878
    const-string v6, "pref_qc_camera_iso_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 879
    const-string v6, "pref_qc_camera_exposuretime_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 880
    const-string v6, "pref_camera_face_beauty_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 881
    const-string v6, "pref_camera_id_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 882
    const-string v6, "pref_camera_countdown_key"

    invoke-interface {v0, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 885
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 886
    .local v4, preferenceMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "pref_camera_sound_key"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "pref_scan_qrcode_key"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "pref_camera_watermark_key"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-string v8, "pref_key_camera_referenceline"

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "pref_camera_facedetection_key"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const-string v8, "pref_captrue_mirror_key"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "pref_camera_movie_solid_key"

    aput-object v8, v6, v7

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 893
    .local v3, keyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 894
    .local v5, value:Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v5           #value:Ljava/lang/Object;
    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 895
    .local v2, key:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 896
    .restart local v5       #value:Ljava/lang/Object;
    if-eqz v5, :cond_0

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 897
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 898
    const-string v6, "on"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 901
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/Object;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 902
    return-void
.end method

.method public static resetWhiteBalance()V
    .locals 2

    .prologue
    .line 919
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 920
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_whitebalance_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 921
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 922
    return-void
.end method

.method public static resetZoom(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 2
    .parameter "preferences"

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 601
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_zoom_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 602
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 603
    return-void
.end method

.method public static restorePreferences(Landroid/content/Context;Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 2
    .parameter "context"
    .parameter "preferences"

    .prologue
    .line 606
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->readPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    .line 607
    .local v0, currentCameraId:I
    invoke-virtual {p1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 608
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 609
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 613
    invoke-static {p1}, Lcom/android/camera/CameraSettings;->upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V

    .line 615
    invoke-static {p1, v0}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 616
    return-void
.end method

.method public static setAutoExposure(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 9
    .parameter "parameters"
    .parameter "value"

    .prologue
    const/16 v8, 0x3e8

    const/16 v7, 0xfa

    const/16 v6, -0xfa

    const/16 v5, -0x3e8

    const/4 v4, 0x0

    .line 317
    if-nez p1, :cond_0

    .line 343
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v0, meteringAreas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Camera$Area;>;"
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 320
    .local v1, meteringRect:Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 321
    .local v2, weight:I
    const v3, 0x7f0d0138

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    iput v6, v1, Landroid/graphics/Rect;->left:I

    .line 323
    iput v6, v1, Landroid/graphics/Rect;->top:I

    .line 324
    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 325
    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 326
    const/4 v2, 0x1

    .line 341
    :goto_1
    new-instance v3, Landroid/hardware/Camera$Area;

    invoke-direct {v3, v1, v2}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {p0, v0}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0

    .line 327
    :cond_1
    const v3, 0x7f0d0137

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 328
    iput v4, v1, Landroid/graphics/Rect;->left:I

    .line 329
    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 330
    iput v4, v1, Landroid/graphics/Rect;->right:I

    .line 331
    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    .line 332
    const/4 v2, 0x0

    goto :goto_1

    .line 335
    :cond_2
    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 336
    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 337
    iput v8, v1, Landroid/graphics/Rect;->right:I

    .line 338
    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 339
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static setCountDownCapturePreference(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1031
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1032
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_countdown_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1033
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1034
    return-void
.end method

.method public static setFocusModeSwitching(Z)V
    .locals 2
    .parameter

    .prologue
    .line 950
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 951
    const-string v1, "pref_qc_focus_mode_switching_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 952
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 953
    return-void
.end method

.method public static setFocusPosition(I)V
    .locals 2
    .parameter

    .prologue
    .line 971
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 972
    const-string v1, "pref_qc_focus_position_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 973
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 974
    return-void
.end method

.method public static setKValue(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 925
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 926
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_qc_manual_whitebalance_k_value_key"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 927
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 928
    return-void
.end method

.method public static setPriorityStoragePreference(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1048
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1049
    const-string v1, "pref_priority_storage"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1050
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1051
    return-void
.end method

.method public static setSmartShutterPosition(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 935
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 936
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_key_camera_smart_shutter_position"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 937
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 938
    return-void
.end method

.method public static switchCountDownCapturePreference()V
    .locals 4

    .prologue
    .line 1037
    invoke-static {}, Lcom/android/camera/CameraSettings;->isCountDownCapture()Z

    move-result v1

    .line 1038
    .local v1, oldValue:Z
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1039
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "pref_camera_countdown_key"

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1040
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1041
    return-void

    .line 1039
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static updateOpenCameraFailTimes()J
    .locals 7

    .prologue
    .line 695
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 696
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v3

    const-string v4, "open_camera_fail_key"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/camera/preferences/CameraSettingPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long v1, v3, v5

    .line 697
    .local v1, openCameraFail:J
    const-string v3, "open_camera_fail_key"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 698
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 699
    return-wide v1
.end method

.method public static upgradeGlobalPreferences(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 4
    .parameter "combPref"

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 534
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_version_key"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/preferences/CameraSettingPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 535
    .local v1, version:I
    const-string v2, "pref_version_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 536
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 537
    return-void
.end method

.method public static upgradeLocalPreferences(Landroid/content/SharedPreferences;)V
    .locals 4
    .parameter "prefLocal"

    .prologue
    .line 540
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 541
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_local_version_key"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 542
    .local v1, version:I
    if-nez v1, :cond_0

    .line 543
    const/4 v1, 0x1

    .line 546
    :cond_0
    const-string v2, "pref_local_version_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 547
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 548
    return-void
.end method

.method public static writeExposure(Lcom/android/camera/preferences/CameraSettingPreferences;I)V
    .locals 3
    .parameter "preferences"
    .parameter "value"

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 573
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_exposure_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 574
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 575
    return-void
.end method

.method public static writePreferredCameraId(Landroid/content/SharedPreferences;I)V
    .locals 3
    .parameter "pref"
    .parameter "cameraId"

    .prologue
    .line 556
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 557
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_id_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 558
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 559
    return-void
.end method

.method public static writeZoom(Lcom/android/camera/preferences/CameraSettingPreferences;I)V
    .locals 3
    .parameter "preferences"
    .parameter "value"

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 595
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_zoom_key"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 596
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 597
    return-void
.end method
