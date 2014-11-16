.class Lcom/android/camera/ui/GridSettingPopupWhiteBalance$2;
.super Ljava/lang/Object;
.source "GridSettingPopupWhiteBalance.java"

# interfaces
.implements Lcom/android/camera/ui/OnWheelScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/GridSettingPopupWhiteBalance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$2;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcom/android/camera/ui/WheelView;)V
    .locals 2
    .parameter "wheel"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$2;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelScrolled:Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->access$102(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;Z)Z

    .line 120
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$2;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    #calls: Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->onKValueChanged()V
    invoke-static {v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->access$200(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V

    .line 121
    return-void
.end method

.method public onScrollingStarted(Lcom/android/camera/ui/WheelView;)V
    .locals 2
    .parameter "wheel"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$2;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelScrolled:Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->access$102(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;Z)Z

    .line 116
    return-void
.end method
