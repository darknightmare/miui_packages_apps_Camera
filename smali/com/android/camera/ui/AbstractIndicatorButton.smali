.class public abstract Lcom/android/camera/ui/AbstractIndicatorButton;
.super Lcom/android/camera/ui/RotateImageView;
.source "AbstractIndicatorButton.java"

# interfaces
.implements Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/AbstractIndicatorButton$1;,
        Lcom/android/camera/ui/AbstractIndicatorButton$MainHandler;,
        Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;,
        Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;
    }
.end annotation


# instance fields
.field protected final HIGHLIGHT_COLOR:I

.field private final MSG_DISMISS_POPUP:I

.field private final MSG_SCROLL_TO_CHECKED:I

.field protected mBackgroundLocked:Z

.field private mFadeIn:Landroid/view/animation/Animation;

.field protected mHandler:Landroid/os/Handler;

.field private mIndicatorChangeListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;

.field private mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

.field protected mPopup:Lcom/android/camera/ui/AbstractSettingPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/camera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Lcom/android/camera/ui/AbstractIndicatorButton$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/AbstractIndicatorButton$MainHandler;-><init>(Lcom/android/camera/ui/AbstractIndicatorButton;Lcom/android/camera/ui/AbstractIndicatorButton$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    .line 38
    iput v2, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->MSG_DISMISS_POPUP:I

    .line 39
    iput v3, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->MSG_SCROLL_TO_CHECKED:I

    .line 43
    iput-boolean v2, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mBackgroundLocked:Z

    .line 55
    const v0, 0x7f050004

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mFadeIn:Landroid/view/animation/Animation;

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->HIGHLIGHT_COLOR:I

    .line 57
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 58
    invoke-static {p1}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/PopupManager;->setOnOtherPopupShowedListener(Lcom/android/camera/ui/PopupManager$OnOtherPopupShowedListener;)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/AbstractIndicatorButton;->setClickable(Z)V

    .line 61
    return-void
.end method


# virtual methods
.method public dismissPopup()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->setPressed(Z)V

    .line 183
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractSettingPopup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractSettingPopup;->clearAnimation()V

    .line 186
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractSettingPopup;->dismiss()V

    .line 187
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 188
    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mIndicatorChangeListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mIndicatorChangeListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;

    invoke-interface {v1, p0, v0}, Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;->onShowIndicator(Landroid/view/View;Z)V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->invalidate()V

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 193
    const/4 v0, 0x1

    .line 195
    :cond_1
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPopupWindow()Lcom/android/camera/ui/AbstractSettingPopup;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractSettingPopup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    .line 202
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract initializePopup()V
.end method

.method public isOverridden()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method protected notifyClickToListener()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public onOtherPopupShowed()V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    .line 66
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v1

    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 96
    .local v0, action:I
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->isOverridden()Z

    move-result v3

    if-nez v3, :cond_2

    .line 97
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/AbstractIndicatorButton;->setPressed(Z)V

    move v1, v2

    .line 98
    goto :goto_0

    .line 99
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 100
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    move v1, v2

    .line 101
    goto :goto_0

    .line 102
    :cond_3
    if-ne v0, v2, :cond_0

    .line 103
    iget-object v3, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/AbstractSettingPopup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_5

    .line 104
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 107
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->isOverridden()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/CameraSettings;->isNoPopup(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 108
    iget-object v3, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v3}, Lcom/android/camera/ui/AbstractSettingPopup;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_9

    .line 109
    :cond_6
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/AbstractIndicatorButton;->showPopup(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/ui/PopupManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/ui/PopupManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/camera/ui/PopupManager;->notifyShowPopup(Landroid/view/View;)V

    .line 111
    iget-object v3, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 117
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-nez v3, :cond_8

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->setPressed(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->notifyClickToListener()V

    :cond_8
    move v1, v2

    .line 121
    goto :goto_0

    .line 113
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    goto :goto_1
.end method

.method public varargs abstract overrideSettings([Ljava/lang/String;)V
.end method

.method public reloadPreference()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractSettingPopup;->reloadPreference()V

    .line 208
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 155
    const-string v0, "pref_shader_coloreffect_key"

    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractSettingPopup;->requestRender()V

    .line 160
    :cond_0
    return-void
.end method

.method public setBackgoundLocked()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mBackgroundLocked:Z

    .line 83
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->isOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const/4 p1, 0x0

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, p1

    if-eqz v0, :cond_1

    .line 142
    invoke-super {p0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 144
    :cond_1
    return-void
.end method

.method public setIndicatorClickListener(Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

    .line 74
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/AbstractSettingPopup;->setOrientation(IZ)V

    .line 152
    :cond_0
    return-void
.end method

.method protected showPopup(Z)V
    .locals 4
    .parameter "animate"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/AbstractIndicatorButton;->setPressed(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->initializePopup()V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractSettingPopup;->clearAnimation()V

    .line 170
    if-eqz p1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    iget-object v1, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/AbstractSettingPopup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractSettingPopup;->show()V

    .line 174
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/AbstractSettingPopup;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mPopup:Lcom/android/camera/ui/AbstractSettingPopup;

    invoke-virtual {p0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getDegree()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/AbstractSettingPopup;->setOrientation(IZ)V

    .line 176
    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mIndicatorChangeListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/AbstractIndicatorButton;->mIndicatorChangeListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;

    invoke-interface {v0, p0, v3}, Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorChangeListener;->onShowIndicator(Landroid/view/View;Z)V

    .line 179
    :cond_2
    return-void
.end method
