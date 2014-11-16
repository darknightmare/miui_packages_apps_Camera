.class public abstract Lcom/android/camera/ui/SettingView;
.super Landroid/widget/RelativeLayout;
.source "SettingView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/SettingView$SettingViewChangedListener;
    }
.end annotation


# instance fields
.field protected mAnchor:Landroid/widget/ImageView;

.field protected mCurrentMode:Ljava/lang/String;

.field protected mDismissRequest:Z

.field protected mExitButton:Landroid/widget/TextView;

.field protected mExitView:Landroid/view/View;

.field protected mIndicatorClickListener:Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;

.field protected mIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/AbstractIndicatorButton;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsAnimating:Z

.field protected mKeepExitButtonGone:Z

.field protected mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

.field protected mOrientation:I

.field protected mPopupRequest:Z

.field protected mPreferenceGroup:Lcom/android/camera/preferences/PreferenceGroup;

.field protected mRotatables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ui/Rotatable;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field protected mSettingButton:Lcom/android/camera/ui/SettingButton;

.field protected mViewChangeListener:Lcom/android/camera/ui/SettingView$SettingViewChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    .line 31
    iput v1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mPopupRequest:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mDismissRequest:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    .line 46
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mKeepExitButtonGone:Z

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const-string v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    .line 31
    iput v1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mPopupRequest:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mDismissRequest:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    .line 46
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mKeepExitButtonGone:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const-string v0, "mode_none"

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    .line 31
    iput v1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mPopupRequest:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mDismissRequest:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    .line 46
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mKeepExitButtonGone:Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/SettingView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/camera/ui/SettingView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    iget-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;

    .line 167
    .local v0, runnalbe:Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;

    .line 168
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 177
    .end local v0           #runnalbe:Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return-void

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SettingView;->setPressed(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/SettingView;->updateExitLayout(Z)V

    .line 174
    iput-boolean v2, p0, Lcom/android/camera/ui/SettingView;->mDismissRequest:Z

    .line 175
    iput-boolean v2, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 176
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->requestLayout()V

    goto :goto_0
.end method

.method public dismissSettingPopup()Z
    .locals 3

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 87
    .local v1, v:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v1}, Lcom/android/camera/ui/AbstractIndicatorButton;->dismissPopup()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->invalidate()V

    .line 89
    const/4 v2, 0x1

    .line 92
    .end local v1           #v:Lcom/android/camera/ui/AbstractIndicatorButton;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveSettingPopup()Landroid/view/View;
    .locals 4

    .prologue
    .line 96
    iget-object v3, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 97
    .local v2, v:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v2}, Lcom/android/camera/ui/AbstractIndicatorButton;->getPopupWindow()Lcom/android/camera/ui/AbstractSettingPopup;

    move-result-object v1

    .line 98
    .local v1, result:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 100
    .end local v1           #result:Landroid/view/View;
    .end local v2           #v:Lcom/android/camera/ui/AbstractIndicatorButton;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    return-object v0
.end method

.method public hide()V
    .locals 0

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->dismiss()V

    .line 157
    return-void
.end method

.method public abstract initializeSettingScreen(Lcom/android/camera/preferences/PreferenceGroup;Ljava/util/List;Lcom/android/camera/ui/AbstractIndicatorButton$IndicatorClickListener;I)V
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
.end method

.method public keepExitButtonGone(Z)V
    .locals 0
    .parameter "keepGone"

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/camera/ui/SettingView;->mKeepExitButtonGone:Z

    .line 161
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 244
    iget-boolean v0, p0, Lcom/android/camera/ui/SettingView;->mPopupRequest:Z

    if-eqz v0, :cond_0

    .line 245
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mPopupRequest:Z

    .line 246
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingView;->startAnim(Z)V

    .line 248
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/SettingView;->mDismissRequest:Z

    if-eqz v0, :cond_1

    .line 249
    iput-boolean v1, p0, Lcom/android/camera/ui/SettingView;->mDismissRequest:Z

    .line 250
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SettingView;->startAnim(Z)V

    .line 252
    :cond_1
    return-void
.end method

.method public varargs overrideSettings([Ljava/lang/String;)V
    .locals 3
    .parameter "keyvalues"

    .prologue
    .line 131
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    .line 132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 136
    .local v0, b:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/AbstractIndicatorButton;->overrideSettings([Ljava/lang/String;)V

    goto :goto_0

    .line 138
    .end local v0           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_1
    return-void
.end method

.method public popup(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 141
    iget-boolean v0, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->tryReinstall()V

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingView;->setPressed(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SettingView;->updateExitLayout(Z)V

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/SettingView;->setVisibility(I)V

    .line 148
    if-eqz p1, :cond_0

    .line 149
    iput-boolean v2, p0, Lcom/android/camera/ui/SettingView;->mPopupRequest:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/camera/ui/SettingView;->mIsAnimating:Z

    .line 151
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->requestLayout()V

    goto :goto_0
.end method

.method public reloadPreferences()V
    .locals 3

    .prologue
    .line 76
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 77
    .local v0, b:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->reloadPreference()V

    goto :goto_0

    .line 79
    .end local v0           #b:Lcom/android/camera/ui/AbstractIndicatorButton;
    :cond_0
    return-void
.end method

.method public requestRender()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public resetSettings(Lcom/android/camera/preferences/CameraSettingPreferences;)V
    .locals 0
    .parameter "preferences"

    .prologue
    .line 299
    return-void
.end method

.method public runAfterDismiss(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "run"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mRunnable:Ljava/lang/Runnable;

    .line 181
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->dismiss()V

    .line 182
    return-void
.end method

.method public sendClickTo(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 279
    iget-object v3, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/Rotatable;

    .line 280
    .local v2, r:Lcom/android/camera/ui/Rotatable;
    instance-of v3, v2, Lcom/android/camera/ui/PopupMenuItem;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 281
    check-cast v1, Lcom/android/camera/ui/PopupMenuItem;

    .line 282
    .local v1, item:Lcom/android/camera/ui/PopupMenuItem;
    invoke-virtual {v1}, Lcom/android/camera/ui/PopupMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    invoke-virtual {v1}, Lcom/android/camera/ui/PopupMenuItem;->performClick()Z

    goto :goto_0

    .line 287
    .end local v1           #item:Lcom/android/camera/ui/PopupMenuItem;
    .end local v2           #r:Lcom/android/camera/ui/Rotatable;
    :cond_1
    return-void
.end method

.method public setCurrentMode(Ljava/lang/String;)V
    .locals 0
    .parameter "currentMode"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setIndicatorImage(Ljava/lang/String;I)V
    .locals 3
    .parameter "key"
    .parameter "resId"

    .prologue
    .line 104
    if-nez p1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mIndicators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/AbstractIndicatorButton;

    .line 108
    .local v0, b:Lcom/android/camera/ui/AbstractIndicatorButton;
    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {v0}, Lcom/android/camera/ui/AbstractIndicatorButton;->setBackgoundLocked()V

    .line 110
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/AbstractIndicatorButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public setListener(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    .line 118
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 3
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 66
    iput p1, p0, Lcom/android/camera/ui/SettingView;->mOrientation:I

    .line 67
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    .line 68
    .local v1, v:Lcom/android/camera/ui/Rotatable;
    invoke-interface {v1, p1, p2}, Lcom/android/camera/ui/Rotatable;->setOrientation(IZ)V

    goto :goto_0

    .line 70
    .end local v1           #v:Lcom/android/camera/ui/Rotatable;
    :cond_0
    return-void
.end method

.method protected setPressed(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 255
    iget-object v2, p0, Lcom/android/camera/ui/SettingView;->mRotatables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/Rotatable;

    .line 256
    .local v1, v:Lcom/android/camera/ui/Rotatable;
    instance-of v2, v1, Lcom/android/camera/ui/PopupMenuItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 257
    check-cast v2, Lcom/android/camera/ui/PopupMenuItem;

    invoke-virtual {v2}, Lcom/android/camera/ui/PopupMenuItem;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 258
    check-cast v1, Lcom/android/camera/ui/PopupMenuItem;

    .end local v1           #v:Lcom/android/camera/ui/Rotatable;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PopupMenuItem;->setPressed(Z)V

    goto :goto_0

    .line 260
    .restart local v1       #v:Lcom/android/camera/ui/Rotatable;
    :cond_1
    check-cast v1, Lcom/android/camera/ui/PopupMenuItem;

    .end local v1           #v:Lcom/android/camera/ui/Rotatable;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/PopupMenuItem;->setPressed(Z)V

    goto :goto_0

    .line 264
    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/SettingView;->mViewChangeListener:Lcom/android/camera/ui/SettingView$SettingViewChangedListener;

    invoke-interface {v0, p1}, Lcom/android/camera/ui/SettingView$SettingViewChangedListener;->onVisibleChanged(I)V

    .line 128
    return-void
.end method

.method public setVisibleChangedListener(Lcom/android/camera/ui/SettingView$SettingViewChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/camera/ui/SettingView;->mViewChangeListener:Lcom/android/camera/ui/SettingView$SettingViewChangedListener;

    .line 122
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/SettingView;->popup(Z)V

    .line 268
    return-void
.end method

.method public showPopup(Ljava/lang/String;)V
    .locals 0
    .parameter "key"

    .prologue
    .line 297
    return-void
.end method

.method protected startAnim(Z)V
    .locals 13
    .parameter "isPopup"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v12, 0x3f80

    const v11, 0x3f7d70a4

    const-wide/16 v9, 0x12c

    const v8, 0x3c23d70a

    .line 185
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v11

    div-float v3, v5, v7

    .line 186
    .local v3, moveY:F
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f02007c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    .line 187
    .local v4, rightW:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020079

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    .line 188
    .local v1, anchorW:I
    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mAnchor:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 189
    .local v0, anchorActualW:I
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v11

    div-float/2addr v5, v7

    add-int v6, v4, v0

    div-int/lit8 v7, v1, 0x2

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-float v2, v5, v6

    .line 190
    .local v2, moveX:F
    if-eqz p1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/SettingView;->setX(F)V

    .line 192
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/SettingView;->setY(F)V

    .line 193
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/SettingView;->setScaleX(F)V

    .line 194
    invoke-virtual {p0, v8}, Lcom/android/camera/ui/SettingView;->setScaleY(F)V

    .line 195
    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 196
    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const v7, -0x40828f5c

    mul-float/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    neg-float v6, v2

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    neg-float v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/camera/ui/SettingView$1;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/SettingView$1;-><init>(Lcom/android/camera/ui/SettingView;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 232
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    .line 212
    iget-object v5, p0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v11

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 215
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/SettingView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/camera/ui/SettingView$2;

    invoke-direct {v6, p0}, Lcom/android/camera/ui/SettingView$2;-><init>(Lcom/android/camera/ui/SettingView;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method protected tryReinstall()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public updateExitLayout(Z)V
    .locals 0
    .parameter "isMenuShow"

    .prologue
    .line 294
    return-void
.end method

.method public updateExitView(Landroid/widget/TextView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 292
    return-void
.end method

.method protected updatePrefence(Lcom/android/camera/preferences/IconListPreference;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 235
    const-string v0, "pref_shader_coloreffect_key"

    invoke-virtual {p1}, Lcom/android/camera/preferences/IconListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getEntries()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 237
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->getEntryValues()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/camera/preferences/IconListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    return-void
.end method
