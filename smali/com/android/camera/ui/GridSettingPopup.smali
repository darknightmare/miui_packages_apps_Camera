.class public Lcom/android/camera/ui/GridSettingPopup;
.super Lcom/android/camera/ui/AbstractSettingPopup;
.source "GridSettingPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mCurrentIndex:I

.field protected mGridView:Landroid/widget/GridView;

.field private mIsSimpleMode:Z

.field protected mOrientation:I

.field protected mSeperatorLine:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const-string v0, "GridSettingPopup"

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 26
    iput v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mOrientation:I

    .line 27
    iput-boolean v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mIsSimpleMode:Z

    .line 30
    return-void
.end method


# virtual methods
.method public initialize(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 14
    .parameter "preference"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 35
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 36
    .local v2, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 37
    .local v7, entries:[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getImageIds()[I

    move-result-object v9

    .line 38
    .local v9, iconIds:[I
    if-nez v9, :cond_0

    .line 39
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getIconIds()[I

    move-result-object v9

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v3, listItem:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v1, v7

    if-ge v8, v1, :cond_2

    .line 49
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v11, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "text"

    aget-object v4, v7, v8

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    if-eqz v9, :cond_1

    const-string v1, "image"

    aget v4, v9, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_1
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 56
    .end local v11           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v1, "pref_qc_camera_iso_key"

    iget-object v4, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "image"

    aput-object v4, v5, v1

    .line 58
    .local v5, from:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [I

    const/4 v1, 0x0

    const v4, 0x7f0c000a

    aput v4, v6, v1

    .line 63
    .local v6, to:[I
    :goto_1
    new-instance v0, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;

    const v4, 0x7f040016

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;-><init>(Lcom/android/camera/ui/GridSettingPopup;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 68
    .local v0, listItemAdapter:Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 70
    iget-boolean v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mIsSimpleMode:Z

    if-eqz v1, :cond_3

    .line 71
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mSeperatorLine:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 74
    .local v10, layout:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v1, v4, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 75
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v10}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .end local v10           #layout:Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/GridSettingPopup;->reloadPreference()V

    .line 78
    return-void

    .line 60
    .end local v0           #listItemAdapter:Lcom/android/camera/ui/GridSettingPopup$MySimpleAdapter;
    .end local v5           #from:[Ljava/lang/String;
    .end local v6           #to:[I
    :cond_4
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "image"

    aput-object v4, v5, v1

    const/4 v1, 0x1

    const-string v4, "text"

    aput-object v4, v5, v1

    .line 61
    .restart local v5       #from:[Ljava/lang/String;
    const/4 v1, 0x2

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    .restart local v6       #to:[I
    goto :goto_1

    :array_0
    .array-data 0x4
        0xat 0x0t 0xct 0x7ft
        0x9t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 112
    .local v0, index:I
    iget v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    if-ne v1, v0, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 114
    iget-object v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 115
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v0}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 116
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    if-eqz v1, :cond_0

    .line 117
    iget-boolean v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mIsSimpleMode:Z

    if-eqz v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    iget-object v2, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v2}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-interface {v1}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingChanged()V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/android/camera/ui/AbstractSettingPopup;->onFinishInflate()V

    .line 128
    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    .line 129
    const v0, 0x7f0c0050

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/GridSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mSeperatorLine:Landroid/view/View;

    .line 130
    return-void
.end method

.method public reloadPreference()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    .line 83
    iget v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/camera/ui/GridSettingPopup;->mCurrentIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/GridView;->setItemChecked(IZ)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const-string v0, "GridSettingPopup"

    const-string v1, "Invalid preference value."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 3
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    if-nez v2, :cond_0

    .line 146
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v1, 0x0

    .line 139
    .local v1, v:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 140
    iget-object v2, p0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 141
    instance-of v2, v1, Lcom/android/camera/ui/Rotatable;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 142
    check-cast v2, Lcom/android/camera/ui/Rotatable;

    invoke-interface {v2, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    .line 139
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_2
    iput p1, p0, Lcom/android/camera/ui/GridSettingPopup;->mOrientation:I

    goto :goto_0
.end method
