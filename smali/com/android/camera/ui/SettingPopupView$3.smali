.class Lcom/android/camera/ui/SettingPopupView$3;
.super Ljava/lang/Object;
.source "SettingPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/SettingPopupView;->initSubmenuView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/SettingPopupView;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/SettingPopupView;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/camera/ui/SettingPopupView$3;->this$0:Lcom/android/camera/ui/SettingPopupView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$3;->this$0:Lcom/android/camera/ui/SettingPopupView;

    #calls: Lcom/android/camera/ui/SettingPopupView;->popupNewSubmenuView()V
    invoke-static {v0}, Lcom/android/camera/ui/SettingPopupView;->access$300(Lcom/android/camera/ui/SettingPopupView;)V

    .line 330
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$3;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$3;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/ui/SettingPopupView$3;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v1, v1, Lcom/android/camera/ui/SettingView;->mCurrentMode:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getExitText(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$3;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$3;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$3;->this$0:Lcom/android/camera/ui/SettingPopupView;

    iget-object v0, v0, Lcom/android/camera/ui/SettingView;->mExitView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/SettingPopupView$3;->this$0:Lcom/android/camera/ui/SettingPopupView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/SettingPopupView;->updateExitLayout(Z)V

    .line 336
    return-void
.end method
