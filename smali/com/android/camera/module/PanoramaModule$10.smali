.class Lcom/android/camera/module/PanoramaModule$10;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/PanoramaModule;->initializeCameraPickerButton(Lcom/android/camera/preferences/CameraPreference$OnPreferenceChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0
    .parameter

    .prologue
    .line 941
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$10;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$10;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v0, v0, Lcom/android/camera/module/BaseModule;->mPreferences:Lcom/android/camera/preferences/CameraSettingPreferences;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/CameraSettings;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 944
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$10;->this$0:Lcom/android/camera/module/PanoramaModule;

    #calls: Lcom/android/camera/module/PanoramaModule;->switchToCameraMode()V
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$2100(Lcom/android/camera/module/PanoramaModule;)V

    .line 945
    return-void
.end method
