.class Lcom/android/camera/module/CameraModule$8;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/CameraModule;->initializeControlByIntent()V
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
    .line 2305
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$8;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$8;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0, p1}, Lcom/android/camera/module/CameraModule;->onThumbnailClicked(Landroid/view/View;)V

    .line 2309
    return-void
.end method
