.class public Lcom/android/camera/ui/EffectSurfacePopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "EffectSurfacePopup.java"


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field mClickListener:Landroid/view/View$OnClickListener;

.field private mEffectCropView:Lcom/android/camera/ui/EffectCropView;

.field private mEffectSurfaceView:[Lcom/android/camera/ui/EffectSurfaceView;

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mSelectedIndex:I

.field private mViewContainer:Landroid/widget/LinearLayout;

.field private mViewList:[Landroid/view/View;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    new-instance v0, Lcom/android/camera/ui/EffectSurfacePopup$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/EffectSurfacePopup$1;-><init>(Lcom/android/camera/ui/EffectSurfacePopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 33
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1
    iput-object p1, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mActivity:Lcom/android/camera/ActivityBase;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/EffectSurfacePopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/EffectSurfacePopup;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput p1, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ui/EffectSurfacePopup;)Lcom/android/camera/ui/EffectCropView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mEffectCropView:Lcom/android/camera/ui/EffectCropView;

    return-object v0
.end method

.method private updateBackground()V
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mViewList:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 180
    iget v1, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mSelectedIndex:I

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/EffectSurfaceView;

    aget-object v1, v1, v0

    const v2, 0x7f0201b9

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/EffectSurfaceView;->setBackgroundResource(I)V

    .line 179
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/EffectSurfaceView;

    aget-object v1, v1, v0

    const v2, 0x7f0201b8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/EffectSurfaceView;->setBackgroundResource(I)V

    goto :goto_1

    .line 186
    :cond_1
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    invoke-super {p0}, Lcom/android/camera/ui/AbstractSettingPopup;->dismiss()V

    .line 155
    iput-boolean v1, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mVisible:Z

    .line 156
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setDisplayShow(Z)V

    .line 157
    return-void
.end method

.method public hideSeperator()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 140
    const v0, 0x7f0c003e

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectSurfacePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 142
    return-void
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 13
    .parameter "preference"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSurfacePopup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    .local v0, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 42
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 43
    iget-object v8, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v9}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :cond_0
    iget-object v8, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mActivity:Lcom/android/camera/ActivityBase;

    const v9, 0x7f0c0078

    invoke-virtual {v8, v9}, Lcom/android/camera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/camera/ui/EffectCropView;

    iput-object v8, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mEffectCropView:Lcom/android/camera/ui/EffectCropView;

    .line 46
    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/preferences/CameraSettingPreferences;->isSimpleLayoutMode()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 47
    iget-object v8, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/high16 v9, 0x4040

    invoke-static {v9}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v9

    const/high16 v10, 0x4140

    invoke-static {v10}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v10

    const/high16 v11, 0x4040

    invoke-static {v11}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v11

    const/high16 v12, 0x4140

    invoke-static {v12}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    .line 60
    :goto_0
    const/16 v8, 0xf

    new-array v8, v8, [Landroid/view/View;

    iput-object v8, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mViewList:[Landroid/view/View;

    .line 61
    const/16 v8, 0xf

    new-array v8, v8, [Lcom/android/camera/ui/EffectSurfaceView;

    iput-object v8, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/EffectSurfaceView;

    .line 62
    const-string v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 64
    .local v4, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v8, 0xf

    if-ge v2, v8, :cond_2

    .line 65
    const v8, 0x7f04000f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 66
    .local v7, v:Landroid/view/View;
    iget-object v8, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    const v8, 0x7f0c000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ui/EffectSurfaceView;

    .line 69
    .local v3, img:Lcom/android/camera/ui/EffectSurfaceView;
    const v8, 0x7f0c000b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 70
    .local v6, title:Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 71
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    sget v8, Lcom/android/camera/effect/EffectController;->SURFACE_WIDTH:I

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 72
    sget v8, Lcom/android/camera/effect/EffectController;->SURFACE_WIDTH:I

    iput v8, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {v3, v2}, Lcom/android/camera/ui/EffectSurfaceView;->setCacheIndex(I)V

    .line 76
    aget-object v8, v1, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    iget-object v8, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mViewList:[Landroid/view/View;

    aput-object v7, v8, v2

    .line 79
    iget-object v8, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/EffectSurfaceView;

    aput-object v3, v8, v2

    .line 80
    iget-object v8, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .end local v2           #i:I
    .end local v3           #img:Lcom/android/camera/ui/EffectSurfaceView;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v5           #params:Landroid/view/ViewGroup$LayoutParams;
    .end local v6           #title:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    :cond_1
    iget-object v8, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/high16 v9, 0x4120

    invoke-static {v9}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v9

    const/4 v10, 0x0

    const/high16 v11, 0x4120

    invoke-static {v11}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/HorizontalScrollView;->setPadding(IIII)V

    goto :goto_0

    .line 83
    .restart local v2       #i:I
    .restart local v4       #inflater:Landroid/view/LayoutInflater;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/EffectSurfacePopup;->reloadPreference()V

    .line 84
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/android/camera/ui/AbstractSettingPopup;->onFinishInflate()V

    .line 134
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectSurfacePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 135
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/EffectSurfacePopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mViewContainer:Landroid/widget/LinearLayout;

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 137
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mSelectedIndex:I

    .line 170
    iget v1, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mSelectedIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/camera/ui/EffectSurfacePopup;->updateBackground()V

    .line 176
    :goto_0
    return-void

    .line 173
    :cond_0
    const-string v1, "HorizontalSettingPopup"

    const-string v2, "Invalid preference value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-boolean v2, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mVisible:Z

    if-eqz v2, :cond_3

    .line 103
    const/4 v1, -0x1

    .line 104
    .local v1, start:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mViewList:[Landroid/view/View;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/EffectSurfaceView;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/android/camera/Util;->isViewIntersectWindow(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    move v1, v0

    .line 111
    :cond_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 112
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectController;->setDisplayStartIndex(I)V

    .line 113
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectController;->setDisplayEndtIndex(I)V

    .line 122
    :goto_1
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getDisplayStartIndex()I

    move-result v0

    .line 123
    :goto_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getDisplayEndIndex()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 125
    iget-object v2, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/EffectSurfaceView;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/camera/ui/EffectSurfaceView;->invalidate()V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 104
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/camera/effect/EffectController;->setDisplayStartIndex(I)V

    .line 116
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    add-int/lit8 v3, v1, 0x5

    const/16 v4, 0xf

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera/effect/EffectController;->setDisplayEndtIndex(I)V

    goto :goto_1

    .line 129
    .end local v0           #i:I
    .end local v1           #start:I
    :cond_3
    return-void
.end method

.method public scrollToChecked()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 160
    iget-object v2, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mViewList:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mSelectedIndex:I

    add-int/lit8 v3, v3, 0x1

    mul-int v0, v2, v3

    .line 161
    .local v0, right:I
    iget-object v2, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    sub-int v1, v0, v2

    .line 163
    .local v1, scrollValue:I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    .line 164
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mViewList:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 191
    .local v3, v:Landroid/view/View;
    instance-of v4, v3, Lcom/android/camera/ui/TitleImageView;

    if-eqz v4, :cond_0

    .line 192
    check-cast v3, Lcom/android/camera/ui/TitleImageView;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/TitleImageView;->setOrientation(IZ)V

    .line 190
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mEffectSurfaceView:[Lcom/android/camera/ui/EffectSurfaceView;

    .local v0, arr$:[Lcom/android/camera/ui/EffectSurfaceView;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 197
    .local v3, v:Lcom/android/camera/ui/EffectSurfaceView;
    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/EffectSurfaceView;->setOrientation(IZ)V

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    .end local v3           #v:Lcom/android/camera/ui/EffectSurfaceView;
    :cond_2
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 146
    invoke-super {p0}, Lcom/android/camera/ui/AbstractSettingPopup;->show()V

    .line 147
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setDisplayShow(Z)V

    .line 148
    iput-boolean v1, p0, Lcom/android/camera/ui/EffectSurfacePopup;->mVisible:Z

    .line 149
    return-void
.end method
