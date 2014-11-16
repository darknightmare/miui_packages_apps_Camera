.class public Lcom/android/camera/ui/CameraPickerButton;
.super Landroid/widget/RelativeLayout;
.source "CameraPickerButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/RotateImageView$OnRotateFinishedListener;


# static fields
.field private static final sButtonImageResource:[I


# instance fields
.field private mCameraFacing:I

.field private mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

.field private mCameras:[Ljava/lang/CharSequence;

.field private mIsChangeImage:Z

.field private mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

.field private mPreference:Lcom/android/camera/preferences/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/CameraPickerButton;->sButtonImageResource:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x74t 0x1t 0x2t 0x7ft
        0x76t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method private updateImageResource()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 68
    invoke-static {}, Lcom/android/camera/ModuleManager;->getCurrentMode()I

    move-result v3

    if-eq v3, v1, :cond_0

    move v0, v1

    .line 69
    .local v0, bCameraMode:Z
    :goto_0
    iget-object v3, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/camera/ui/CameraPickerButton;->sButtonImageResource:[I

    aget v1, v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/ui/RotateImageView;->setImageResource(I)V

    .line 72
    return-void

    .end local v0           #bCameraMode:Z
    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    .line 69
    .restart local v0       #bCameraMode:Z
    :cond_1
    sget-object v2, Lcom/android/camera/ui/CameraPickerButton;->sButtonImageResource:[I

    aget v1, v2, v1

    goto :goto_1
.end method


# virtual methods
.method public OnRotateAxisFinished()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    iget v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    invoke-interface {v0, v1}, Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)Z

    .line 87
    :cond_0
    return-void
.end method

.method public OnRotatePointFinished()V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mIsChangeImage:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/camera/ui/CameraPickerButton;->updateImageResource()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mIsChangeImage:Z

    .line 80
    :cond_0
    return-void
.end method

.method public initialize(Lcom/android/camera/preferences/PreferenceGroup;)V
    .locals 6
    .parameter "group"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 94
    const-string v2, "pref_camera_id_key"

    invoke-virtual {p1, v2}, Lcom/android/camera/preferences/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/android/camera/preferences/ListPreference;

    move-result-object v1

    .line 96
    .local v1, pref:Lcom/android/camera/preferences/ListPreference;
    if-nez v1, :cond_0

    .line 97
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 115
    :goto_0
    return-void

    .line 100
    :cond_0
    iput-object v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mPreference:Lcom/android/camera/preferences/ListPreference;

    .line 101
    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    .line 102
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 103
    invoke-virtual {p0, v5}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 107
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/CameraPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-virtual {v1}, Lcom/android/camera/preferences/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, cameraId:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    iput v4, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    goto :goto_0

    .line 113
    :cond_2
    iput v3, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    goto :goto_0
.end method

.method public initializeForPanorama(Lcom/android/camera/preferences/PreferenceGroup;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "group"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 120
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/CameraPickerButton;->setVisibility(I)V

    .line 124
    iput v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    .line 125
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/CameraPickerButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 130
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    if-nez v2, :cond_0

    .line 142
    :goto_0
    return-void

    .line 131
    :cond_0
    iget v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    if-nez v2, :cond_2

    const/4 v0, 0x1

    .line 134
    .local v0, newCameraIndex:I
    :goto_1
    iget v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    .line 135
    .local v1, oldFacing:I
    iput v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    .line 136
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/camera/AutoLockManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/AutoLockManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/AutoLockManager;->onUserInteraction()V

    .line 137
    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    iget v3, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    invoke-interface {v2, v3}, Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;->onCameraPickerClicked(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    iput v1, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    .line 140
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/CameraPickerButton;->mPreference:Lcom/android/camera/preferences/ListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameras:[Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraFacing:I

    aget-object v2, v2, v4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/android/camera/preferences/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 131
    .end local v0           #newCameraIndex:I
    .end local v1           #oldFacing:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 57
    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraPickerButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    .line 58
    invoke-direct {p0}, Lcom/android/camera/ui/CameraPickerButton;->updateImageResource()V

    .line 59
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/RotateImageView;->setEnabled(Z)V

    .line 155
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 156
    return-void
.end method

.method public setListener(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/ui/CameraPickerButton;->mListener:Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;

    .line 91
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .parameter "orientation"
    .parameter "animation"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/ui/CameraPickerButton;->mCameraPickerButtonImage:Lcom/android/camera/ui/RotateImageView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/RotateImageView;->setOrientation(IZ)V

    .line 65
    return-void
.end method
