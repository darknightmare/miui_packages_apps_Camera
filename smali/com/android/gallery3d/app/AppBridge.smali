.class public abstract Lcom/android/gallery3d/app/AppBridge;
.super Ljava/lang/Object;
.source "AppBridge.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/app/AppBridge$Server;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method


# virtual methods
.method public abstract attachScreenNail()Lcom/android/gallery3d/ui/ScreenNail;
.end method

.method public abstract canIgnoreAnimation()Z
.end method

.method public abstract createCameraScreenNail()Z
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public abstract detachScreenNail()V
.end method

.method public abstract isPanorama()Z
.end method

.method public abstract onDown(FF)V
.end method

.method public abstract onFullScreenChanged(Z)V
.end method

.method public abstract onLeftFling()V
.end method

.method public abstract onLongPress(II)V
.end method

.method public abstract onScale(FFF)Z
.end method

.method public abstract onScaleBegin(FF)Z
.end method

.method public abstract onScaleEnd()V
.end method

.method public abstract onSingleTapUp(II)Z
.end method

.method public abstract onSlideTrack(Landroid/graphics/RectF;Z)Z
.end method

.method public abstract setServer(Lcom/android/gallery3d/app/AppBridge$Server;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 32
    return-void
.end method
