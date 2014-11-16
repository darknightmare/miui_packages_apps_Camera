.class public Lcom/android/camera/ModuleManager;
.super Ljava/lang/Object;
.source "ModuleManager.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ModuleManager$OnModeChangeListener;
    }
.end annotation


# static fields
.field private static sAnimating:Z

.field private static sCurrentMode:I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mListener:Lcom/android/camera/ModuleManager$OnModeChangeListener;

.field private mScrollButton:Lcom/android/camera/ui/ScrollButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput v0, Lcom/android/camera/ModuleManager;->sCurrentMode:I

    .line 29
    sput-boolean v0, Lcom/android/camera/ModuleManager;->sAnimating:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/ModuleManager;->mActivity:Landroid/app/Activity;

    .line 33
    iget-object v0, p0, Lcom/android/camera/ModuleManager;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ScrollButton;

    iput-object v0, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    .line 34
    iget-object v0, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/ScrollButton;->setOnCheckedChangedListener(Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;)V

    .line 36
    iget-object v1, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-static {}, Lcom/android/camera/ModuleManager;->isCameraEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ScrollButton;->setChecked(Z)V

    .line 37
    invoke-direct {p0}, Lcom/android/camera/ModuleManager;->updateImage()V

    .line 39
    :cond_0
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCurrentMode()I
    .locals 1

    .prologue
    .line 104
    sget v0, Lcom/android/camera/ModuleManager;->sCurrentMode:I

    return v0
.end method

.method private static isCameraEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 45
    sget v1, Lcom/android/camera/ModuleManager;->sCurrentMode:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCameraModule()Z
    .locals 1

    .prologue
    .line 111
    sget v0, Lcom/android/camera/ModuleManager;->sCurrentMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCurrentMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 100
    sput p0, Lcom/android/camera/ModuleManager;->sCurrentMode:I

    .line 101
    return-void
.end method

.method private switchMode()V
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/android/camera/ModuleManager;->isCameraEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    const/4 v0, 0x0

    .line 87
    .local v0, newMode:I
    :goto_0
    invoke-static {v0}, Lcom/android/camera/ModuleManager;->setCurrentMode(I)V

    .line 88
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/camera/ModuleManager;->sAnimating:Z

    .line 89
    iget-object v1, p0, Lcom/android/camera/ModuleManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 90
    iget-object v1, p0, Lcom/android/camera/ModuleManager;->mListener:Lcom/android/camera/ModuleManager$OnModeChangeListener;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/camera/ModuleManager;->mListener:Lcom/android/camera/ModuleManager$OnModeChangeListener;

    sget v2, Lcom/android/camera/ModuleManager;->sCurrentMode:I

    invoke-interface {v1, v2}, Lcom/android/camera/ModuleManager$OnModeChangeListener;->onModeChanged(I)Z

    .line 93
    :cond_0
    return-void

    .line 84
    .end local v0           #newMode:I
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #newMode:I
    goto :goto_0
.end method

.method private updateImage()V
    .locals 8

    .prologue
    const v7, 0x7f0201b2

    const v6, 0x7f0201b1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 50
    const/4 v3, 0x2

    new-array v2, v3, [Landroid/graphics/drawable/Drawable;

    .line 51
    .local v2, thumbs:[Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/camera/ModuleManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 52
    .local v0, resources:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/camera/ModuleManager;->isCameraEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    .line 54
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v4

    .line 59
    :goto_0
    sget-boolean v3, Lcom/android/camera/ModuleManager;->sAnimating:Z

    if-eqz v3, :cond_1

    .line 60
    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 61
    .local v1, thumbTransition:Landroid/graphics/drawable/TransitionDrawable;
    iget-object v3, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v3, v1}, Lcom/android/camera/ui/ScrollButton;->setSliderDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 63
    const/16 v3, 0x190

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 64
    sput-boolean v5, Lcom/android/camera/ModuleManager;->sAnimating:Z

    .line 68
    .end local v1           #thumbTransition:Landroid/graphics/drawable/TransitionDrawable;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    const v4, 0x7f0201af

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setFrameBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v3, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    const v4, 0x7f0201b0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setSliderBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v3, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    const v4, 0x7f020173

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setCameraIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    iget-object v3, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    const v4, 0x7f020175

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setVideoIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    return-void

    .line 56
    :cond_0
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v5

    .line 57
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, v4

    goto :goto_0

    .line 66
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/ScrollButton;->setSliderDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/camera/ModuleManager;->switchMode()V

    .line 77
    return-void
.end method

.method public onFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ScrollButton;->onFullScreenChanged(Z)V

    .line 133
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ScrollButton;->setEnabled(Z)V

    .line 129
    return-void
.end method

.method public setOnModeChangeListener(Lcom/android/camera/ModuleManager$OnModeChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/camera/ModuleManager;->mListener:Lcom/android/camera/ModuleManager$OnModeChangeListener;

    .line 97
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ScrollButton;->setOrientation(IZ)V

    .line 121
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/ModuleManager;->mScrollButton:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ScrollButton;->setVisibility(I)V

    .line 125
    return-void
.end method
