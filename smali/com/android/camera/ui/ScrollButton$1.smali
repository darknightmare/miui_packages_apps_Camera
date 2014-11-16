.class Lcom/android/camera/ui/ScrollButton$1;
.super Landroid/os/Handler;
.source "ScrollButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/ScrollButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScrollButton;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ScrollButton;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/camera/ui/ScrollButton$1;->this$0:Lcom/android/camera/ui/ScrollButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "m"

    .prologue
    .line 57
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/ui/ScrollButton$1;->this$0:Lcom/android/camera/ui/ScrollButton;

    #calls: Lcom/android/camera/ui/ScrollButton;->doAnimation()V
    invoke-static {v1}, Lcom/android/camera/ui/ScrollButton;->access$000(Lcom/android/camera/ui/ScrollButton;)V

    goto :goto_0

    .line 62
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/ui/ScrollButton$1;->this$0:Lcom/android/camera/ui/ScrollButton;

    #getter for: Lcom/android/camera/ui/ScrollButton;->mSliderOffset:I
    invoke-static {v1}, Lcom/android/camera/ui/ScrollButton;->access$100(Lcom/android/camera/ui/ScrollButton;)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/ScrollButton$1;->this$0:Lcom/android/camera/ui/ScrollButton;

    #getter for: Lcom/android/camera/ui/ScrollButton;->mSliderEndPosition:I
    invoke-static {v2}, Lcom/android/camera/ui/ScrollButton;->access$200(Lcom/android/camera/ui/ScrollButton;)I

    move-result v2

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 63
    .local v0, b:Z
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ui/ScrollButton$1;->this$0:Lcom/android/camera/ui/ScrollButton;

    #getter for: Lcom/android/camera/ui/ScrollButton;->mOnCheckedChangedListener:Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;
    invoke-static {v1}, Lcom/android/camera/ui/ScrollButton;->access$300(Lcom/android/camera/ui/ScrollButton;)Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ScrollButton$1;->this$0:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScrollButton;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/camera/ui/ScrollButton$1;->this$0:Lcom/android/camera/ui/ScrollButton;

    #getter for: Lcom/android/camera/ui/ScrollButton;->mSoundView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/camera/ui/ScrollButton;->access$400(Lcom/android/camera/ui/ScrollButton;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->performClick()Z

    .line 65
    iget-object v1, p0, Lcom/android/camera/ui/ScrollButton$1;->this$0:Lcom/android/camera/ui/ScrollButton;

    invoke-virtual {v1, v0}, Lcom/android/camera/ui/ScrollButton;->setChecked(Z)V

    .line 66
    iget-object v1, p0, Lcom/android/camera/ui/ScrollButton$1;->this$0:Lcom/android/camera/ui/ScrollButton;

    #getter for: Lcom/android/camera/ui/ScrollButton;->mOnCheckedChangedListener:Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;
    invoke-static {v1}, Lcom/android/camera/ui/ScrollButton;->access$300(Lcom/android/camera/ui/ScrollButton;)Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/ui/ScrollButton$OnCheckedChangedListener;->onCheckedChanged(Z)V

    goto :goto_0

    .line 62
    .end local v0           #b:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
