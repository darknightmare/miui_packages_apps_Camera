.class public Lcom/android/camera/ui/SettingScreenView;
.super Lcom/android/camera/ui/SettingView;
.source "SettingScreenView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;
.implements Lcom/android/camera/ui/IndicatorButton$Listener;


# instance fields
.field private mColumnCount:I

.field private mDisabledIndicator:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFadeIn:Landroid/view/animation/Animation;

.field private mFadeOut:Landroid/view/animation/Animation;

.field private mParent:Landroid/view/View;

.field private mRowCount:I

.field private mRowHeight:I

.field private mScreenHeight:I

.field private mSettingScreen:Lcom/android/camera/ui/ScreenView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/SettingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    .line 44
    return-void
.end method

.method private dissmissAllPopup()V
    .locals 3

    .prologue
    .line 171
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

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

    check-cast v1, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 172
    .local v1, indicator:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->getPopupWindow()Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    goto :goto_0

    .line 176
    .end local v1           #indicator:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_1
    return-void
.end method

.method private initScreenView()V
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    .line 85
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mRowHeight:I

    .line 86
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    .line 87
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 196
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 198
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingButton;->updateImageResource()V

    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mViewChangeListener:Lcom/android/camera/ui/SettingView$SettingViewChangedListener;

    invoke-interface {v0, v2}, Lcom/android/camera/ui/SettingView$SettingViewChangedListener;->onVisibleChanged(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingButton;->updateImageResource()V

    .line 209
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mViewChangeListener:Lcom/android/camera/ui/SettingView$SettingViewChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/ui/SettingView$SettingViewChangedListener;->onVisibleChanged(I)V

    .line 210
    return-void
.end method

.method protected initIndicators(Ljava/util/List;)V
    .locals 17
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
    .line 90
    .local p1, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    mul-int v14, v2, v3

    .line 91
    .local v14, screenGridCount:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v14

    add-int/lit8 v13, v2, 0x1

    .line 92
    .local v13, screenCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mPaddingLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mPaddingRight:I

    sub-int v16, v2, v3

    .line 95
    .local v16, w:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v9, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 96
    .local v9, h:I
    move/from16 v0, v16

    if-ge v0, v9, :cond_1

    .end local v16           #w:I
    :goto_0
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v5, v2

    .line 98
    .local v5, viewWidth:I
    const/4 v15, 0x0

    .local v15, screenIndex:I
    :goto_1
    if-ge v15, v13, :cond_4

    .line 99
    new-instance v1, Lcom/android/camera/ui/StaticGridView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/camera/ui/SettingScreenView;->mRowHeight:I

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/ui/StaticGridView;-><init>(Landroid/content/Context;IIII)V

    .line 102
    .local v1, gridView:Lcom/android/camera/ui/StaticGridView;
    const/4 v8, 0x0

    .local v8, gridIndex:I
    :goto_2
    if-ge v8, v14, :cond_0

    .line 103
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    mul-int/2addr v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ui/SettingScreenView;->mColumnCount:I

    mul-int/2addr v2, v3

    add-int v11, v8, v2

    .line 104
    .local v11, listIndex:I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v11, v2, :cond_2

    .line 122
    .end local v11           #listIndex:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v2, v1}, Lcom/android/camera/ui/ScreenView;->addView(Landroid/view/View;)V

    .line 98
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .end local v1           #gridView:Lcom/android/camera/ui/StaticGridView;
    .end local v5           #viewWidth:I
    .end local v8           #gridIndex:I
    .end local v15           #screenIndex:I
    .restart local v16       #w:I
    :cond_1
    move/from16 v16, v9

    .line 96
    goto :goto_0

    .line 107
    .end local v16           #w:I
    .restart local v1       #gridView:Lcom/android/camera/ui/StaticGridView;
    .restart local v5       #viewWidth:I
    .restart local v8       #gridIndex:I
    .restart local v11       #listIndex:I
    .restart local v15       #screenIndex:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v12

    check-cast v12, Lcom/android/camera/preferences/IconListPreference;

    .line 109
    .local v12, pref:Lcom/android/camera/preferences/IconListPreference;
    if-eqz v12, :cond_3

    .line 110
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/camera/ui/SettingScreenView;->updatePrefence(Lcom/android/camera/preferences/IconListPreference;)V

    .line 111
    new-instance v7, Lcom/android/camera/ui/IndicatorButton;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/SettingScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v7, v2, v12}, Lcom/android/camera/ui/IndicatorButton;-><init>(Landroid/content/Context;Lcom/android/camera/preferences/IconListPreference;)V

    .line 112
    .local v7, b:Lcom/android/camera/ui/IndicatorButton;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/camera/ui/IndicatorButton;->setSettingChangedListener(Lcom/android/camera/ui/IndicatorButton$Listener;)V

    .line 113
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/camera/ui/IndicatorButton;->setIndicatorClickListener(Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;)V

    .line 114
    invoke-virtual {v12}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/camera/ui/IndicatorButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x2

    invoke-direct {v10, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 117
    .local v10, layout:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v7, v10}, Lcom/android/camera/ui/IndicatorButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-virtual {v1, v7}, Lcom/android/camera/ui/StaticGridView;->addView(Landroid/view/View;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v7           #b:Lcom/android/camera/ui/IndicatorButton;
    .end local v10           #layout:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 124
    .end local v1           #gridView:Lcom/android/camera/ui/StaticGridView;
    .end local v8           #gridIndex:I
    .end local v11           #listIndex:I
    .end local v12           #pref:Lcom/android/camera/preferences/IconListPreference;
    :cond_4
    return-void
.end method

.method public initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;I)V
    .locals 7
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
    .local p2, keys:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 52
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mContext:Landroid/content/Context;

    const v2, 0x7f050007

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    .line 53
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mContext:Landroid/content/Context;

    const v2, 0x7f050008

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    .line 54
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 55
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    .line 57
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/SettingButton;

    iput-object v1, p0, Lcom/android/camera/ui/SettingView;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    .line 59
    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

    .line 60
    iput-object p3, p0, Lcom/android/camera/ui/SettingView;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    .line 61
    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->initScreenView()V

    .line 63
    const v1, 0x7f0c0037

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SettingScreenView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/ScreenView;

    iput-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    .line 64
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    const v2, 0x7f0201a7

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ScreenView;->setSeekPointResource(I)V

    .line 66
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/android/camera/ui/SettingScreenView;->mScreenHeight:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/ScreenView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x31

    invoke-direct {v0, v6, v6, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 71
    .local v0, seekbarParams:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/camera/ui/SettingScreenView;->mRowHeight:I

    iget v2, p0, Lcom/android/camera/ui/SettingScreenView;->mRowCount:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 72
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenView;->removeAllScreens()V

    .line 74
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 75
    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->dissmissAllPopup()V

    .line 76
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 77
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 78
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/SettingScreenView;->initIndicators(Ljava/util/List;)V

    .line 79
    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mSettingScreen:Lcom/android/camera/ui/ScreenView;

    invoke-virtual {v1, v5}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 80
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeOut:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/camera/ui/SettingScreenView;->dissmissAllPopup()V

    .line 146
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 181
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 139
    return-void
.end method

.method public onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "key"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V

    .line 250
    :cond_0
    return-void
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0}, Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;->onSharedPreferenceChanged()V

    .line 235
    :cond_0
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;->onSettingValueChanged(Ljava/lang/String;)V

    .line 243
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 3

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 266
    :cond_0
    return-void

    .line 262
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 263
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 264
    .local v1, view:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->requestRender()V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 128
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 129
    .local v0, i:Lcom/android/camera/ui/AbstractIndicatorButton;
    iget-object v2, p0, Lcom/android/camera/ui/SettingScreenView;->mDisabledIndicator:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/AbstractIndicatorButton;->setEnabled(Z)V

    goto :goto_0

    .line 133
    .end local v0           #i:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/ui/SettingView;->setEnabled(Z)V

    .line 134
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 253
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 258
    :cond_0
    return-void

    .line 254
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 256
    .local v1, view:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/ui/AbstractIndicatorButton;->setOrientation(IZ)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 222
    if-nez p1, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->show()V

    .line 227
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mViewChangeListener:Lcom/android/camera/ui/SettingView$SettingViewChangedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/SettingView$SettingViewChangedListener;->onVisibleChanged(I)V

    .line 228
    return-void

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingScreenView;->dismiss()V

    goto :goto_0
.end method

.method public show()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 187
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/SettingScreenView;->mParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/camera/ui/SettingScreenView;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mSettingButton:Lcom/android/camera/ui/SettingButton;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingButton;->updateImageResource()V

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mViewChangeListener:Lcom/android/camera/ui/SettingView$SettingViewChangedListener;

    invoke-interface {v0, v2}, Lcom/android/camera/ui/SettingView$SettingViewChangedListener;->onVisibleChanged(I)V

    .line 192
    :cond_0
    return-void
.end method

.method public showPopup(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 156
    :cond_0
    return-void

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 152
    .local v0, i:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/AbstractIndicatorButton;->showPopup(Z)V

    goto :goto_0
.end method
