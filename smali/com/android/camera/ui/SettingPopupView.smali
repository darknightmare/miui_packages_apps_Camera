.class public Lcom/android/camera/ui/SettingPopupView;
.super Lcom/android/camera/ui/SettingView;
.source "SettingPopupView.java"

# interfaces
.implements Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;
.implements Lcom/android/camera/ui/IndicatorButton$Listener;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mBackShadeWidth:I

.field private mBackTopMargin:I

.field protected mBootomView:Landroid/view/View;

.field mChangeListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

.field protected mColorMargin:I

.field private mColorViewMargin:I

.field private mColumnCount:I

.field protected mCurrentSubmenuView:Landroid/view/View;

.field private mDisabledItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectCropView:Lcom/android/camera/ui/EffectCropView;

.field protected mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

.field private mExitListener:Landroid/view/View$OnClickListener;

.field protected mFaceBeauty:Lcom/android/camera/ui/FaceBeautyPopup;

.field protected mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

.field mItemCheckedListener:Landroid/view/View$OnClickListener;

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLinearContent:Landroid/widget/LinearLayout;

.field private mMarginHorizon:I

.field private mNeedReinstall:Z

.field protected mPopupGridView:Lcom/android/camera/ui/PopupGridView;

.field private mPopupMenuMargin:I

.field private mRowCount:I

.field private mRowHeight:I

.field protected mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

.field protected mTopView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mDisabledItems:Ljava/util/Set;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/SettingPopupView;->mNeedReinstall:Z

    .line 223
    new-instance v0, Lcom/android/camera/ui/SettingPopupView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SettingPopupView$1;-><init>(Lcom/android/camera/ui/SettingPopupView;)V

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mItemCheckedListener:Landroid/view/View$OnClickListener;

    .line 253
    new-instance v0, Lcom/android/camera/ui/SettingPopupView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SettingPopupView$2;-><init>(Lcom/android/camera/ui/SettingPopupView;)V

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mExitListener:Landroid/view/View$OnClickListener;

    .line 396
    new-instance v0, Lcom/android/camera/ui/SettingPopupView$4;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/SettingPopupView$4;-><init>(Lcom/android/camera/ui/SettingPopupView;)V

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mChangeListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    .line 60
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ui/SettingPopupView;->mActivity:Lcom/android/camera/ActivityBase;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SettingPopupView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/ui/SettingPopupView;->initSubmenuView()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/ui/SettingPopupView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/camera/ui/SettingPopupView;->mNeedReinstall:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/ui/SettingPopupView;)Lcom/android/camera/ui/EffectCropView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectCropView:Lcom/android/camera/ui/EffectCropView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/SettingPopupView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/camera/ui/SettingPopupView;->popupNewSubmenuView()V

    return-void
.end method

.method private getActualColumnCount()I
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/SettingPopupView;->mColumnCount:I

    if-ge v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 203
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/SettingPopupView;->mColumnCount:I

    goto :goto_0
.end method

.method private getNewHeight()I
    .locals 4

    .prologue
    .line 348
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 349
    .local v1, margin:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 350
    .local v0, drawableHeigh:I
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v0

    return v2
.end method

.method private getNewSubmenu()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 354
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 356
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    const-string v3, "pref_camera_coloreffect_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    const v2, 0x7f04001c

    iget-object v3, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/HorizontalSettingPopup;

    iput-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    .line 359
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 360
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v3, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v4, "pref_camera_coloreffect_key"

    invoke-virtual {v2, v4}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/HorizontalSettingPopup;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 363
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    iget-object v3, p0, Lcom/android/camera/ui/SettingPopupView;->mChangeListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/HorizontalSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/AbstractSettingPopup$Listener;)V

    .line 364
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/HorizontalSettingPopup;->setVisibility(I)V

    .line 365
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/HorizontalSettingPopup;->scrollToChecked()V

    .line 366
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mHorizontalSettingPopup:Lcom/android/camera/ui/HorizontalSettingPopup;

    .line 393
    :goto_0
    return-object v2

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    const-string v3, "pref_shader_coloreffect_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    const v2, 0x7f040010

    iget-object v3, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/EffectSurfacePopup;

    iput-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    .line 370
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mActivity:Lcom/android/camera/ActivityBase;

    const v3, 0x7f0c0078

    invoke-virtual {v2, v3}, Lcom/android/camera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/EffectCropView;

    iput-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectCropView:Lcom/android/camera/ui/EffectCropView;

    .line 371
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 372
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v3, "pref_shader_coloreffect_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/android/camera/preferences/IconListPreference;

    .line 375
    .local v1, pref:Lcom/android/camera/preferences/IconListPreference;
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SettingPopupView;->updatePrefence(Lcom/android/camera/preferences/IconListPreference;)V

    .line 376
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/EffectSurfacePopup;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 377
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/EffectSurfacePopup;->hideSeperator()V

    .line 378
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    iget-object v3, p0, Lcom/android/camera/ui/SettingPopupView;->mChangeListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/EffectSurfacePopup;->setSettingChangedListener(Lcom/android/camera/ui/AbstractSettingPopup$Listener;)V

    .line 379
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/EffectSurfacePopup;->setVisibility(I)V

    .line 380
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/EffectSurfacePopup;->scrollToChecked()V

    .line 381
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    invoke-virtual {v2}, Lcom/android/camera/ui/EffectSurfacePopup;->show()V

    .line 382
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    goto :goto_0

    .line 383
    .end local v1           #pref:Lcom/android/camera/preferences/IconListPreference;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    const-string v3, "pref_camera_face_beauty_key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    const v2, 0x7f040012

    iget-object v3, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/FaceBeautyPopup;

    iput-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mFaceBeauty:Lcom/android/camera/ui/FaceBeautyPopup;

    .line 386
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mFaceBeauty:Lcom/android/camera/ui/FaceBeautyPopup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/FaceBeautyPopup;->setSimpleMode(Z)V

    .line 387
    iget-object v3, p0, Lcom/android/camera/ui/SettingPopupView;->mFaceBeauty:Lcom/android/camera/ui/FaceBeautyPopup;

    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    const-string v4, "pref_camera_face_beauty_key"

    invoke-virtual {v2, v4}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v2

    check-cast v2, Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3, v2}, Lcom/android/camera/ui/FaceBeautyPopup;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 389
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mFaceBeauty:Lcom/android/camera/ui/FaceBeautyPopup;

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/FaceBeautyPopup;->setVisibility(I)V

    .line 390
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mFaceBeauty:Lcom/android/camera/ui/FaceBeautyPopup;

    iget-object v3, p0, Lcom/android/camera/ui/SettingPopupView;->mChangeListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/FaceBeautyPopup;->setSettingChangedListener(Lcom/android/camera/ui/AbstractSettingPopup$Listener;)V

    .line 391
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mFaceBeauty:Lcom/android/camera/ui/FaceBeautyPopup;

    goto/16 :goto_0

    .line 393
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static hasExitButton(Ljava/lang/String;)Z
    .locals 1
    .parameter "currentMode"

    .prologue
    .line 418
    const-string v0, "pref_camera_coloreffect_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_countdown_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_shader_coloreffect_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_face_beauty_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_ae_bracket_hdr_key"

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

    const-string v0, "pref_video_speed_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_video_quality_key"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_camera_panoramamode_key"

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

    const-string v0, "pref_video_hdr_key"

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

.method private initSubmenuView()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x12c

    .line 323
    invoke-direct {p0}, Lcom/android/camera/ui/SettingPopupView;->getNewHeight()I

    move-result v0

    .line 324
    .local v0, newH:I
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v2}, Lcom/android/camera/ui/PopupGridView;->getHeight()I

    move-result v1

    .line 325
    .local v1, oldH:I
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mTopView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sub-int v3, v1, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/camera/ui/SettingPopupView$3;

    invoke-direct {v3, p0}, Lcom/android/camera/ui/SettingPopupView$3;-><init>(Lcom/android/camera/ui/SettingPopupView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 339
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sub-int v3, v1, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v2}, Lcom/android/camera/ui/PopupGridView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 343
    iget-object v2, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sub-int v3, v1, v0

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 345
    return-void
.end method

.method private initializeSplitLine()V
    .locals 8

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v4, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 209
    .local v4, w:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v0, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 210
    .local v0, h:I
    if-ge v4, v0, :cond_0

    move v3, v4

    .line 212
    .local v3, viewWidth:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02007e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    .line 213
    .local v2, top:I
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v5}, Lcom/android/camera/ui/SplitLineDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 214
    .local v1, layout:Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, p0, Lcom/android/camera/ui/SettingPopupView;->mBackShadeWidth:I

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 215
    iget v5, p0, Lcom/android/camera/ui/SettingPopupView;->mBackTopMargin:I

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 216
    iget v5, p0, Lcom/android/camera/ui/SettingPopupView;->mRowCount:I

    iget v6, p0, Lcom/android/camera/ui/SettingPopupView;->mRowHeight:I

    mul-int/2addr v5, v6

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/camera/ui/SettingPopupView;->mBackTopMargin:I

    sub-int/2addr v5, v6

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 217
    iget v5, p0, Lcom/android/camera/ui/SettingPopupView;->mMarginHorizon:I

    iget v6, p0, Lcom/android/camera/ui/SettingPopupView;->mBackShadeWidth:I

    add-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x2

    sub-int v5, v3, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 218
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    invoke-virtual {v5, v1}, Lcom/android/camera/ui/SplitLineDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    iget v6, p0, Lcom/android/camera/ui/SettingPopupView;->mRowCount:I

    invoke-direct {p0}, Lcom/android/camera/ui/SettingPopupView;->getActualColumnCount()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/ui/SplitLineDrawer;->initialize(II)V

    .line 220
    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    .line 221
    return-void

    .end local v1           #layout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #top:I
    .end local v3           #viewWidth:I
    :cond_0
    move v3, v0

    .line 210
    goto :goto_0
.end method

.method private popupNewSubmenuView()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x12c

    const/high16 v7, 0x3f80

    .line 282
    invoke-direct {p0}, Lcom/android/camera/ui/SettingPopupView;->getNewSubmenu()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentSubmenuView:Landroid/view/View;

    .line 283
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/SplitLineDrawer;->setVisibility(I)V

    .line 284
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 285
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentSubmenuView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    invoke-direct {p0}, Lcom/android/camera/ui/SettingPopupView;->restoreViewProperties()V

    .line 288
    iget v4, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/ui/SettingPopupView;->setOrientation(IZ)V

    .line 290
    iget v4, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupMenuMargin:I

    iget v5, p0, Lcom/android/camera/ui/SettingPopupView;->mColorMargin:I

    sub-int v0, v4, v5

    .line 291
    .local v0, diffW:I
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentSubmenuView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    move-object v1, v4

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 292
    .local v1, layout:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v4}, Lcom/android/camera/ui/PopupGridView;->getWidth()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 293
    iget v4, p0, Lcom/android/camera/ui/SettingPopupView;->mColorViewMargin:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 294
    iget v4, p0, Lcom/android/camera/ui/SettingPopupView;->mColorViewMargin:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 296
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentSubmenuView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentSubmenuView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 298
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentSubmenuView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v5}, Lcom/android/camera/ui/PopupGridView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/view/View;->setScaleX(F)V

    .line 300
    iget-object v4, p0, Lcom/android/camera/ui/SettingView;->mAnchor:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 301
    .local v2, layoutAnchor:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 303
    iget-object v4, p0, Lcom/android/camera/ui/SettingView;->mAnchor:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v4}, Lcom/android/camera/ui/PopupGridView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v5}, Lcom/android/camera/ui/PopupGridView;->getWidth()I

    move-result v5

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 306
    .local v3, sx:F
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mTopView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    .line 307
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 308
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mBootomView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setScaleX(F)V

    .line 309
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mTopView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 310
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 311
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mBootomView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 312
    iget-object v4, p0, Lcom/android/camera/ui/SettingPopupView;->mCurrentSubmenuView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 313
    return-void
.end method

.method private restoreViewProperties()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 316
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 317
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/PopupGridView;->setAlpha(F)V

    .line 319
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mTopView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 320
    return-void
.end method


# virtual methods
.method public initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;I)V
    .locals 19
    .parameter "preferenceGroup"
    .parameter
    .parameter "indicatorClickListener"
    .parameter "columns"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/preferences/PreferenceGroup;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p2, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getRootView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/SettingButton;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/ui/SettingView;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    .line 114
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 115
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/SettingView;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    .line 116
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ui/SettingPopupView;->mKeys:Ljava/util/List;

    .line 118
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ui/SettingPopupView;->mColumnCount:I

    .line 119
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getActualColumnCount()I

    move-result v3

    div-int v3, v2, v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getActualColumnCount()I

    move-result v4

    rem-int/2addr v2, v4

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/SettingPopupView;->mRowCount:I

    .line 121
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupMenuMargin:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/SettingPopupView;->mMarginHorizon:I

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 124
    .local v13, layout:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingPopupView;->mMarginHorizon:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 125
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/ui/SettingPopupView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 128
    .local v18, w:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v8, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 129
    .local v8, h:I
    move/from16 v0, v18

    if-ge v0, v8, :cond_2

    move/from16 v17, v18

    .line 131
    .local v17, viewWidth:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/SettingPopupView;->mMarginHorizon:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingPopupView;->mBackShadeWidth:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v17, v2

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getActualColumnCount()I

    move-result v3

    div-int v6, v2, v3

    .line 132
    .local v6, childWidth:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/SettingPopupView;->mMarginHorizon:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingPopupView;->mBackShadeWidth:I

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v17, v2

    div-int v2, v2, p4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/camera/ui/SettingPopupView;->mRowHeight:I

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    if-nez v2, :cond_3

    .line 135
    new-instance v2, Lcom/android/camera/ui/PopupGridView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/SettingPopupView;->mRowCount:I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getActualColumnCount()I

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/camera/ui/SettingPopupView;->mRowHeight:I

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/ui/PopupGridView;-><init>(Landroid/content/Context;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    .line 141
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 143
    .local v11, inflater:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 144
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v9, v2, :cond_4

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v15

    check-cast v15, Lcom/android/camera/preferences/IconListPreference;

    .line 147
    .local v15, pref:Lcom/android/camera/preferences/IconListPreference;
    if-eqz v15, :cond_0

    .line 148
    const v2, 0x7f040034

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v11, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ui/PopupMenuItem;

    .line 150
    .local v12, item:Lcom/android/camera/ui/PopupMenuItem;
    const v2, 0x7f0c000a

    invoke-virtual {v12, v2}, Lcom/android/camera/ui/PopupMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 151
    .local v10, image:Landroid/widget/ImageView;
    const v2, 0x7f0c0009

    invoke-virtual {v12, v2}, Lcom/android/camera/ui/PopupMenuItem;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 153
    .local v16, text:Landroid/widget/TextView;
    invoke-virtual {v15}, Lcom/android/camera/preferences/IconListPreference;->getSingleIcon()I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    invoke-virtual {v15}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mItemCheckedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v12, v2}, Lcom/android/camera/ui/PopupMenuItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {v15}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/camera/ui/PopupMenuItem;->setTag(Ljava/lang/Object;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v2, v12}, Lcom/android/camera/ui/PopupGridView;->addView(Landroid/view/View;)V

    .line 158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .end local v10           #image:Landroid/widget/ImageView;
    .end local v12           #item:Lcom/android/camera/ui/PopupMenuItem;
    .end local v16           #text:Landroid/widget/TextView;
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 119
    .end local v6           #childWidth:I
    .end local v8           #h:I
    .end local v9           #i:I
    .end local v11           #inflater:Landroid/view/LayoutInflater;
    .end local v13           #layout:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v15           #pref:Lcom/android/camera/preferences/IconListPreference;
    .end local v17           #viewWidth:I
    .end local v18           #w:I
    :cond_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .restart local v8       #h:I
    .restart local v13       #layout:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v18       #w:I
    :cond_2
    move/from16 v17, v8

    .line 129
    goto/16 :goto_1

    .line 138
    .restart local v6       #childWidth:I
    .restart local v17       #viewWidth:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingPopupView;->mRowCount:I

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getActualColumnCount()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/ui/SettingPopupView;->mRowHeight:I

    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/android/camera/ui/PopupGridView;->set(IIII)V

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v2}, Lcom/android/camera/ui/PopupGridView;->removeAllViews()V

    goto/16 :goto_2

    .line 161
    .restart local v9       #i:I
    .restart local v11       #inflater:Landroid/view/LayoutInflater;
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/ui/SettingPopupView;->setOrientation(IZ)V

    .line 162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingPopupView;->mPopupGridView:Lcom/android/camera/ui/PopupGridView;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->initializeSplitLine()V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingView;->mAnchor:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 167
    .local v14, layoutAnchor:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v14, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingView;->mAnchor:Landroid/widget/ImageView;

    invoke-virtual {v2, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/android/camera/ui/SettingView;->onFinishInflate()V

    .line 97
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/SplitLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mSplitLineDrawer:Lcom/android/camera/ui/SplitLineDrawer;

    .line 98
    const v0, 0x7f0c0028

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mLinearContent:Landroid/widget/LinearLayout;

    .line 99
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mTopView:Landroid/view/View;

    .line 100
    const v0, 0x7f0c0029

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mBootomView:Landroid/view/View;

    .line 101
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mAnchor:Landroid/widget/ImageView;

    .line 103
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingPopupView;->mBackShadeWidth:I

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingPopupView;->mBackTopMargin:I

    .line 105
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingPopupView;->mColorViewMargin:I

    .line 106
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingPopupView;->mPopupMenuMargin:I

    .line 107
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingPopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingPopupView;->mColorMargin:I

    .line 108
    return-void
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "key"

    .prologue
    .line 65
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 472
    invoke-super/range {p0 .. p5}, Lcom/android/camera/ui/SettingView;->onLayout(ZIIII)V

    .line 473
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 467
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/SettingView;->onMeasure(II)V

    .line 468
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 72
    :cond_0
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;->onSettingValueChanged(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "pref_shader_coloreffect_key"

    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectSurfacePopup;->requestRender()V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mEffectSurfacePopup:Lcom/android/camera/ui/EffectSurfacePopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/EffectSurfacePopup;->dismiss()V

    goto :goto_0
.end method

.method public resetSettings(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 3
    .parameter "preferences"

    .prologue
    .line 476
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    const-string v2, "pref_camera_coloreffect_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    const-string v2, "pref_shader_coloreffect_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    const-string v2, "pref_camera_face_beauty_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    const-string v2, "pref_camera_countdown_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    const-string v2, "pref_video_speed_key"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 482
    :cond_0
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/preferences/CameraSettingPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 483
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_coloreffect_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 484
    const-string v1, "pref_shader_coloreffect_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 485
    const-string v1, "pref_video_speed_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 486
    const-string v1, "pref_camera_countdown_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 489
    const-string v1, "mode_none"

    iput-object v1, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    .line 490
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ui/SettingPopupView;->mNeedReinstall:Z

    .line 491
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mExitButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mExitButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    .line 175
    .local v1, r:Lcom/android/camera/ui/Rotatable;
    instance-of v2, v1, Lcom/android/camera/ui/PopupMenuItem;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/camera/ui/SettingPopupView;->mDisabledItems:Ljava/util/Set;

    move-object v2, v1

    check-cast v2, Lcom/android/camera/ui/PopupMenuItem;

    invoke-virtual {v2}, Lcom/android/camera/ui/PopupMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 176
    check-cast v1, Lcom/android/camera/ui/PopupMenuItem;

    .end local v1           #r:Lcom/android/camera/ui/Rotatable;
    invoke-virtual {v1, p1}, Lcom/android/camera/ui/PopupMenuItem;->setEnabled(Z)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ui/SettingView;->setEnabled(Z)V

    .line 180
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/camera/ui/SettingView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingButton;->updateImageResource()V

    .line 196
    return-void
.end method

.method protected tryReinstall()V
    .locals 4

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/camera/ui/SettingPopupView;->mNeedReinstall:Z

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/SettingPopupView;->mNeedReinstall:Z

    .line 276
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView;->mKeys:Ljava/util/List;

    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    iget v3, p0, Lcom/android/camera/ui/SettingPopupView;->mColumnCount:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/camera/ui/SettingPopupView;->initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;I)V

    .line 279
    :cond_0
    return-void
.end method

.method public updateExitLayout(Z)V
    .locals 3
    .parameter "isMenuShow"

    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mExitButton:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 452
    .local v0, layout:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_2

    .line 453
    const/4 v1, 0x2

    const v2, 0x7f0c000e

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 454
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/ui/SettingPopupView;->hasExitButton(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mKeepExitButtonGone:Z

    if-nez v1, :cond_3

    .line 459
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mExitButton:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getModule()Lcom/android/camera/module/Module;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    invoke-interface {v1, v2}, Lcom/android/camera/module/Module;->updateExitLayoutPanel(I)V

    goto :goto_1

    .line 461
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mExitButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateExitView(Landroid/widget/TextView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/ui/SettingPopupView;->hasExitButton(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mExitButton:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView;->mExitListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mExitButton:Landroid/widget/TextView;

    .line 438
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getExitText(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 447
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    const-string v1, "pref_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    const-string v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    .line 445
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
