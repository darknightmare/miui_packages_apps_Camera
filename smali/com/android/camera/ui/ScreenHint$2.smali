.class Lcom/android/camera/ui/ScreenHint$2;
.super Ljava/lang/Object;
.source "ScreenHint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ScreenHint;->showFirstUseHint(Lcom/android/camera/preferences/CameraSettingPreferences;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/ScreenHint;

.field final synthetic val$focusAreaSupported:Z

.field final synthetic val$preferences:Lcom/android/camera/preferences/CameraSettingPreferences;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ScreenHint;Lcom/android/camera/preferences/CameraSettingPreferences;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/camera/ui/ScreenHint$2;->this$0:Lcom/android/camera/ui/ScreenHint;

    iput-object p2, p0, Lcom/android/camera/ui/ScreenHint$2;->val$preferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iput-boolean p3, p0, Lcom/android/camera/ui/ScreenHint$2;->val$focusAreaSupported:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/ScreenHint$2;->this$0:Lcom/android/camera/ui/ScreenHint;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenHint$2;->val$preferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    iget-boolean v2, p0, Lcom/android/camera/ui/ScreenHint$2;->val$focusAreaSupported:Z

    const/4 v3, 0x0

    #calls: Lcom/android/camera/ui/ScreenHint;->updateFirstUseHintState(Lcom/android/camera/preferences/CameraSettingPreferences;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/ui/ScreenHint;->access$000(Lcom/android/camera/ui/ScreenHint;Lcom/android/camera/preferences/CameraSettingPreferences;ZZ)V

    .line 105
    return-void
.end method
