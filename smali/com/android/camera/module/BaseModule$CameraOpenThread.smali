.class public Lcom/android/camera/module/BaseModule$CameraOpenThread;
.super Ljava/lang/Thread;
.source "BaseModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/BaseModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CameraOpenThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/BaseModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/BaseModule;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/module/BaseModule$CameraOpenThread;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/module/BaseModule$CameraOpenThread;->this$0:Lcom/android/camera/module/BaseModule;

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->openCamera()V

    .line 101
    return-void
.end method
