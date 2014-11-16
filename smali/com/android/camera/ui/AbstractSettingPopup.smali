.class public abstract Lcom/android/camera/ui/AbstractSettingPopup;
.super Landroid/widget/RelativeLayout;
.source "AbstractSettingPopup.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AbstractSettingPopup$Listener;
    }
.end annotation


# instance fields
.field protected mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

.field protected mPreference:Lcom/android/camera/preferences/IconListPreference;

.field protected mSettingList:Landroid/view/ViewGroup;

.field protected mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractSettingPopup;->setBackgroundResource(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public abstract initialize(Lcom/android/camera/preferences/IconListPreference;)V
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 57
    const v0, 0x7f0c000b

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mTitle:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractSettingPopup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mSettingList:Landroid/view/ViewGroup;

    .line 59
    return-void
.end method

.method public abstract reloadPreference()V
.end method

.method public requestRender()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public scrollToChecked()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 50
    return-void
.end method

.method public setSettingChangedListener(Lcom/android/camera/ui/AbstractSettingPopup$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    .line 63
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractSettingPopup;->reloadPreference()V

    .line 80
    :cond_0
    return-void
.end method
