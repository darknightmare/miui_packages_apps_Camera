.class Lcom/android/camera/SmartShutterButton$1;
.super Landroid/os/Handler;
.source "SmartShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SmartShutterButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SmartShutterButton;


# direct methods
.method constructor <init>(Lcom/android/camera/SmartShutterButton;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/camera/SmartShutterButton$1;->this$0:Lcom/android/camera/SmartShutterButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/SmartShutterButton$1;->this$0:Lcom/android/camera/SmartShutterButton;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/SmartShutterButton;->mVisibleState:I
    invoke-static {v0, v1}, Lcom/android/camera/SmartShutterButton;->access$002(Lcom/android/camera/SmartShutterButton;I)I

    .line 87
    iget-object v0, p0, Lcom/android/camera/SmartShutterButton$1;->this$0:Lcom/android/camera/SmartShutterButton;

    #calls: Lcom/android/camera/SmartShutterButton;->updateVisibleState()V
    invoke-static {v0}, Lcom/android/camera/SmartShutterButton;->access$100(Lcom/android/camera/SmartShutterButton;)V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
