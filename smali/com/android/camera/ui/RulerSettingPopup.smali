.class public Lcom/android/camera/ui/RulerSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "RulerSettingPopup.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCursName:[Landroid/view/View;

.field protected mCursor:Landroid/widget/ImageView;

.field protected mCursorLine:Landroid/widget/ImageView;

.field protected mCursorMoveStep:I

.field protected mCursorPos:[I

.field protected mCursorX:I

.field protected mCursors:Landroid/widget/LinearLayout;

.field private mIntegerStep:Z

.field private mMeasure:Z

.field protected mNeedRedrawScale:Z

.field mParamBlank:Landroid/widget/LinearLayout$LayoutParams;

.field mParamImg:Landroid/widget/LinearLayout$LayoutParams;

.field mTouchListener:Landroid/view/View$OnTouchListener;

.field protected mValueCount:I

.field protected mValueIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mNeedRedrawScale:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mIntegerStep:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mMeasure:Z

    .line 38
    new-instance v0, Lcom/android/camera/ui/RulerSettingPopup$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/RulerSettingPopup$1;-><init>(Lcom/android/camera/ui/RulerSettingPopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 37
    return-void
.end method


# virtual methods
.method protected addBlankViewTo(Landroid/widget/LinearLayout;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 209
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 210
    .local v0, blank:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mParamBlank:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 211
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    return-void
.end method

.method protected addViewTo(Landroid/widget/LinearLayout;I)Landroid/widget/ImageView;
    .locals 2
    .parameter "parent"
    .parameter "res"

    .prologue
    .line 201
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 202
    .local v0, img:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 203
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mParamImg:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    return-object v0
.end method

.method protected filterX(I)I
    .locals 2
    .parameter "x"

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    aget v0, v0, v1

    if-ge p1, v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    aget p1, v0, v1

    .line 142
    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 139
    .restart local p1
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    if-le p1, v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget p1, v0, v1

    goto :goto_0
.end method

.method protected indexOfPos(I)I
    .locals 5
    .parameter "x"

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, nearby:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-gt p1, v2, :cond_1

    .line 150
    move v1, v0

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    aget v2, v2, v1

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    sub-int/2addr v3, p1

    if-ge v2, v3, :cond_2

    .end local v1           #nearby:I
    :goto_1
    return v1

    .line 148
    .restart local v1       #nearby:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected initCursorPos()V
    .locals 7

    .prologue
    .line 181
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 182
    iget-boolean v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mIntegerStep:Z

    if-eqz v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursName:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursName:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 181
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursName:[Landroid/view/View;

    div-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursName:[Landroid/view/View;

    div-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 188
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    add-int/lit8 v2, v0, -0x1

    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    add-int/lit8 v4, v0, -0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    add-int/lit8 v6, v0, -0x2

    aget v5, v5, v6

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v1, v2

    goto :goto_1

    .line 193
    :cond_2
    return-void
.end method

.method protected initScaler()V
    .locals 7

    .prologue
    .line 101
    iget-object v3, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v3, v3

    iput v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    .line 102
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isLeadcorePlatform()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mIntegerStep:Z

    .line 104
    iget v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursName:[Landroid/view/View;

    .line 105
    iget-object v3, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    const v4, 0x7f080064

    invoke-virtual {v3, v4}, Lcom/android/camera/preferences/IconListPreference;->setIconRes(I)V

    .line 106
    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorLine:Landroid/widget/ImageView;

    const v4, 0x7f020071

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 110
    :goto_0
    iget v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    .line 111
    iget-object v3, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getImageIds()[I

    move-result-object v1

    .line 112
    .local v1, iconIds:[I
    if-nez v1, :cond_1

    .line 113
    iget-object v3, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v1

    .line 116
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 117
    .local v2, layout:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/ui/RulerSettingPopup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 118
    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    if-ge v0, v3, :cond_7

    .line 120
    iget-boolean v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mIntegerStep:Z

    if-nez v3, :cond_5

    .line 121
    rem-int/lit8 v3, v0, 0x2

    if-nez v3, :cond_3

    .line 122
    if-eqz v0, :cond_2

    .line 123
    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RulerSettingPopup;->addBlankViewTo(Landroid/widget/LinearLayout;)V

    .line 125
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursName:[Landroid/view/View;

    div-int/lit8 v4, v0, 0x2

    iget-object v5, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    div-int/lit8 v6, v0, 0x2

    aget v6, v1, v6

    invoke-virtual {p0, v5, v6}, Lcom/android/camera/ui/RulerSettingPopup;->addViewTo(Landroid/widget/LinearLayout;I)Landroid/widget/ImageView;

    move-result-object v5

    aput-object v5, v3, v4

    .line 119
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 108
    .end local v0           #i:I
    .end local v1           #iconIds:[I
    .end local v2           #layout:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursName:[Landroid/view/View;

    goto :goto_0

    .line 128
    .restart local v0       #i:I
    .restart local v1       #iconIds:[I
    .restart local v2       #layout:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    if-eqz v0, :cond_6

    .line 129
    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/RulerSettingPopup;->addBlankViewTo(Landroid/widget/LinearLayout;)V

    .line 131
    :cond_6
    iget-object v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursName:[Landroid/view/View;

    iget-object v4, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    aget v5, v1, v0

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/ui/RulerSettingPopup;->addViewTo(Landroid/widget/LinearLayout;I)Landroid/widget/ImageView;

    move-result-object v4

    aput-object v4, v3, v0

    goto :goto_2

    .line 134
    :cond_7
    return-void
.end method

.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, -0x2

    .line 78
    iput-object p1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 79
    invoke-virtual {p0}, Lcom/android/camera/ui/RulerSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mContext:Landroid/content/Context;

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const v0, 0x7f0c0042

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RulerSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursors:Landroid/widget/LinearLayout;

    .line 85
    const v0, 0x7f0c0044

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RulerSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursor:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f0c0043

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/RulerSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorLine:Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursor:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorLine:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mParamBlank:Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mParamBlank:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 93
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mParamImg:Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    invoke-virtual {p0}, Lcom/android/camera/ui/RulerSettingPopup;->initScaler()V

    .line 97
    invoke-virtual {p0}, Lcom/android/camera/ui/RulerSettingPopup;->reloadPreference()V

    .line 98
    return-void
.end method

.method protected onCursorUp()V
    .locals 4

    .prologue
    .line 65
    iget-object v2, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v3, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 66
    .local v1, indexOld:I
    iget v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    iget v3, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    sub-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    .line 67
    .local v0, indexNow:I
    iget-object v2, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 68
    iget-object v2, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    if-eqz v2, :cond_1

    if-eq v1, v0, :cond_1

    .line 69
    const-string v2, "pref_camera_exposure_key"

    iget-object v3, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getModule()Lcom/android/camera/module/Module;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/Module;->isSupportManualExposure()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->resetManualExposure()V

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-interface {v2}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingChanged()V

    .line 74
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-boolean v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mMeasure:Z

    if-eqz v0, :cond_0

    .line 167
    iget-boolean v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mNeedRedrawScale:Z

    if-eqz v0, :cond_1

    .line 168
    invoke-super {p0, p1}, Lcom/android/camera/ui/AbstractSettingPopup;->onDraw(Landroid/graphics/Canvas;)V

    .line 169
    iput-boolean v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mNeedRedrawScale:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/camera/ui/RulerSettingPopup;->initCursorPos()V

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorMoveStep:I

    .line 173
    invoke-virtual {p0}, Lcom/android/camera/ui/RulerSettingPopup;->invalidate()V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursor:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    iget-object v2, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursor:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 1
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 160
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;->onMeasure(II)V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mMeasure:Z

    .line 162
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/android/camera/ui/AbstractSettingPopup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 216
    iget v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueCount:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    .line 218
    iget-object v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorPos:[I

    iget v1, p0, Lcom/android/camera/ui/RulerSettingPopup;->mValueIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/camera/ui/RulerSettingPopup;->mCursorX:I

    .line 219
    invoke-virtual {p0}, Lcom/android/camera/ui/RulerSettingPopup;->invalidate()V

    .line 220
    return-void
.end method
