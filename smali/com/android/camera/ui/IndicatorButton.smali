.class public Lcom/android/camera/ui/IndicatorButton;
.super Lcom/android/camera/ui/AbstractIndicatorButton;
.source "IndicatorButton.java"

# interfaces
.implements Lcom/android/camera/ui/AbstractSettingPopup$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/IndicatorButton$Listener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

.field private mOverrideValue:Ljava/lang/String;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/camera/preferences/IconListPreference;)V
    .locals 1
    .parameter "context"
    .parameter "pref"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/ui/AbstractIndicatorButton;-><init>(Landroid/content/Context;)V

    .line 31
    const-string v0, "IndicatorButton"

    iput-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->TAG:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->reloadPreference()V

    .line 50
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v0}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializePopup()V
    .locals 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isNoPopup(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const-string v1, "IndicatorButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialize popup failed with key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v3}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 118
    .local v0, root:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/android/camera/ui/SettingPopupFactory;->createSettingPopup(Ljava/lang/String;Landroid/view/ViewGroup;Landroid/content/Context;)Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 119
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    iget-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/AbstractSettingPopup;->initialize(Lcom/android/camera/preferences/IconListPreference;)V

    .line 120
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1, p0}, Lcom/android/camera/ui/AbstractSettingPopup;->setSettingChangedListener(Lcom/android/camera/ui/AbstractSettingPopup$Listener;)V

    .line 121
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettingChanged()V
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->reloadPreference()V

    .line 138
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

    invoke-interface {v0}, Lcom/android/camera/ui/IndicatorButton$Listener;->onSettingChanged()V

    .line 141
    :cond_0
    return-void
.end method

.method public onSettingValueChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/camera/ui/IndicatorButton;->mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/IndicatorButton$Listener;->onSettingValueChanged(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 5
    .parameter "keyvalues"

    .prologue
    const/4 v3, 0x1

    .line 96
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 98
    aget-object v1, p1, v0

    .line 99
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v2, p1, v4

    .line 100
    .local v2, value:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    iput-object v2, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/IndicatorButton;->enableFilter(Z)V

    .line 103
    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/IndicatorButton;->setEnabled(Z)V

    .line 107
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/IndicatorButton;->reloadPreference()V

    .line 108
    return-void

    .line 103
    .restart local v1       #key:Ljava/lang/String;
    .restart local v2       #value:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 97
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public reloadPreference()V
    .locals 7

    .prologue
    .line 54
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getSingleIcon()I

    move-result v2

    .line 55
    .local v2, singleIcon:I
    iget-boolean v4, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mBackgroundLocked:Z

    if-eqz v4, :cond_0

    .line 82
    :goto_0
    return-void

    .line 58
    :cond_0
    if-eqz v2, :cond_1

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/IndicatorButton;->setImageResource(I)V

    .line 81
    :goto_1
    invoke-super {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->reloadPreference()V

    goto :goto_0

    .line 64
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getLargeIconIds()[I

    move-result-object v0

    .line 66
    .local v0, iconIds:[I
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 67
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v5, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v5}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 71
    .local v1, index:I
    :goto_2
    if-ltz v1, :cond_2

    array-length v4, v0

    if-lt v1, v4, :cond_5

    .line 73
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, value:Ljava/lang/String;
    :goto_3
    const-string v4, "IndicatorButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fail to find override value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    invoke-virtual {v4}, Lcom/android/camera/preferences/IconListPreference;->print()V

    goto :goto_0

    .line 69
    .end local v1           #index:I
    .end local v3           #value:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ui/IndicatorButton;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v5, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/preferences/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .restart local v1       #index:I
    goto :goto_2

    .line 73
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ui/IndicatorButton;->mOverrideValue:Ljava/lang/String;

    goto :goto_3

    .line 79
    :cond_5
    aget v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/IndicatorButton;->setImageResource(I)V

    goto :goto_1
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/IndicatorButton$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/camera/ui/IndicatorButton;->mListener:Lcom/android/camera/ui/IndicatorButton$Listener;

    .line 44
    return-void
.end method
