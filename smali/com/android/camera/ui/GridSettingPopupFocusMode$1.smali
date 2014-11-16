.class Lcom/android/camera/ui/GridSettingPopupFocusMode$1;
.super Ljava/lang/Object;
.source "GridSettingPopupFocusMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GridSettingPopupFocusMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GridSettingPopupFocusMode;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/GridSettingPopupFocusMode;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode$1;->this$0:Lcom/android/camera/ui/GridSettingPopupFocusMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode$1;->this$0:Lcom/android/camera/ui/GridSettingPopupFocusMode;

    #getter for: Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarCenterText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/camera/ui/GridSettingPopupFocusMode;->access$000(Lcom/android/camera/ui/GridSettingPopupFocusMode;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    return-void
.end method
