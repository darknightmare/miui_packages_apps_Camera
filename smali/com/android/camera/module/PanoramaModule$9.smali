.class Lcom/android/camera/module/PanoramaModule$9;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/PanoramaModule;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/PanoramaModule;

.field final synthetic val$mode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/camera/module/PanoramaModule;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$9;->this$0:Lcom/android/camera/module/PanoramaModule;

    iput-object p2, p0, Lcom/android/camera/module/PanoramaModule$9;->val$mode:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$9;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "camera_mode_change_simple_mode"

    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule$9;->val$mode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$9;->this$0:Lcom/android/camera/module/PanoramaModule;

    #calls: Lcom/android/camera/module/PanoramaModule;->switchToCameraMode()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$2100(Lcom/android/camera/module/PanoramaModule;)V

    .line 910
    return-void
.end method
