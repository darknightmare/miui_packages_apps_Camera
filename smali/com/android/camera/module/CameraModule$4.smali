.class Lcom/android/camera/module/CameraModule$4;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .parameter

    .prologue
    .line 1569
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1572
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    if-eqz v0, :cond_0

    .line 1573
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$4;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mSettingView:Lcom/android/camera/ui/SettingView;

    invoke-virtual {v0}, Lcom/android/camera/ui/SettingView;->requestRender()V

    .line 1575
    :cond_0
    return-void
.end method
