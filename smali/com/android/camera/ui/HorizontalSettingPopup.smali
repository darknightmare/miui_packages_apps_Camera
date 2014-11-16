.class public Lcom/android/camera/ui/HorizontalSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "HorizontalSettingPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private mSelectedIndex:I

.field private mViewContainer:Landroid/widget/LinearLayout;

.field private mViewList:[Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Lcom/android/camera/ui/HorizontalSettingPopup$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/HorizontalSettingPopup$1;-><init>(Lcom/android/camera/ui/HorizontalSettingPopup;)V

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/HorizontalSettingPopup;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    iget v0, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/HorizontalSettingPopup;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iput p1, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mSelectedIndex:I

    return p1
.end method

.method private clearViewBackground()V
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mViewList:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mViewList:[Landroid/view/View;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 11
    .parameter "preference"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 32
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, context:Landroid/content/Context;
    iget-object v8, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 34
    .local v1, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/preferences/IconListPreference;->getImageIds()[I

    move-result-object v3

    .line 35
    .local v3, iconIds:[I
    if-nez v3, :cond_0

    .line 36
    iget-object v8, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v8}, Lcom/android/camera/preferences/IconListPreference;->getLargeIconIds()[I

    move-result-object v3

    .line 38
    :cond_0
    iget-object v8, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 39
    iget-object v8, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v9}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    :cond_1
    array-length v8, v1

    new-array v8, v8, [Landroid/view/View;

    iput-object v8, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mViewList:[Landroid/view/View;

    .line 42
    const-string v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 44
    .local v5, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, v1

    if-ge v2, v8, :cond_2

    .line 45
    const v8, 0x7f04001a

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 46
    .local v7, v:Landroid/view/View;
    const v8, 0x7f0c000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 47
    .local v4, img:Landroid/widget/ImageView;
    const v8, 0x7f0c0009

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 48
    .local v6, text:Landroid/widget/TextView;
    aget v8, v3, v2

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    aget-object v8, v1, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v8, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 51
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    iget-object v8, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mViewList:[Landroid/view/View;

    aput-object v7, v8, v2

    .line 53
    iget-object v8, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v4           #img:Landroid/widget/ImageView;
    .end local v6           #text:Landroid/widget/TextView;
    .end local v7           #v:Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/HorizontalSettingPopup;->reloadPreference()V

    .line 57
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/camera/ui/AbstractSettingPopup;->onFinishInflate()V

    .line 72
    const v0, 0x7f0c003d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 73
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/HorizontalSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mViewContainer:Landroid/widget/LinearLayout;

    .line 74
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0, p3}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 116
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingChanged()V

    .line 117
    :cond_0
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, value:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mSelectedIndex:I

    .line 87
    iget v1, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mSelectedIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 88
    invoke-direct {p0}, Lcom/android/camera/ui/HorizontalSettingPopup;->clearViewBackground()V

    .line 89
    iget-object v1, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mViewList:[Landroid/view/View;

    iget v2, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mSelectedIndex:I

    aget-object v1, v1, v2

    const v2, 0x7f02002f

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v1, "HorizontalSettingPopup"

    const-string v2, "Invalid preference value."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public scrollToChecked()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mViewList:[Landroid/view/View;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mSelectedIndex:I

    add-int/lit8 v3, v3, 0x1

    mul-int v0, v2, v3

    .line 78
    .local v0, right:I
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    sub-int v1, v0, v2

    .line 80
    .local v1, scrollValue:I
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    .line 81
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 5
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/HorizontalSettingPopup;->mViewList:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 123
    .local v3, v:Landroid/view/View;
    instance-of v4, v3, Lcom/android/camera/ui/PopupMenuItem;

    if-eqz v4, :cond_0

    .line 124
    check-cast v3, Lcom/android/camera/ui/PopupMenuItem;

    .end local v3           #v:Landroid/view/View;
    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/PopupMenuItem;->setOrientation(IZ)V

    .line 122
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method
