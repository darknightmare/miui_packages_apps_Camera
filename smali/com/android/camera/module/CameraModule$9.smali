.class Lcom/android/camera/module/CameraModule$9;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->onIndicatorClick(Landroid/view/View;Ljava/lang/String;)V
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
    .line 3110
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$9;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3112
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$9;->this$0:Lcom/android/camera/module/CameraModule;

    const v1, 0x7f0c003b

    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3113
    invoke-static {v2}, Lcom/android/camera/ModuleManager;->setCurrentMode(I)V

    .line 3114
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$9;->this$0:Lcom/android/camera/module/CameraModule;

    #calls: Lcom/android/camera/module/CameraModule;->switchToOtherMode(I)V
    invoke-static {v0, v2}, Lcom/android/camera/module/CameraModule;->access$5500(Lcom/android/camera/module/CameraModule;I)V

    .line 3115
    return-void
.end method
