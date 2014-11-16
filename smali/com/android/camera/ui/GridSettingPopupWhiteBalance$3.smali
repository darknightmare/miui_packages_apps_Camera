.class Lcom/android/camera/ui/GridSettingPopupWhiteBalance$3;
.super Ljava/lang/Object;
.source "GridSettingPopupWhiteBalance.java"

# interfaces
.implements Lcom/android/camera/ui/OnWheelChangedListener;


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
    .line 125
    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$3;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/camera/ui/WheelView;II)V
    .locals 1
    .parameter "wheel"
    .parameter "oldValue"
    .parameter "newValue"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$3;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    #getter for: Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->mWheelScrolled:Z
    invoke-static {v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->access$100(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupWhiteBalance$3;->this$0:Lcom/android/camera/ui/GridSettingPopupWhiteBalance;

    #calls: Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->onKValueChanged()V
    invoke-static {v0}, Lcom/android/camera/ui/GridSettingPopupWhiteBalance;->access$200(Lcom/android/camera/ui/GridSettingPopupWhiteBalance;)V

    .line 130
    :cond_0
    return-void
.end method
