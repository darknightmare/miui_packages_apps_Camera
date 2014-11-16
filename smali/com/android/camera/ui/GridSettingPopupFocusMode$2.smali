.class Lcom/android/camera/ui/GridSettingPopupFocusMode$2;
.super Ljava/lang/Object;
.source "GridSettingPopupFocusMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 129
    iput-object p1, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode$2;->this$0:Lcom/android/camera/ui/GridSettingPopupFocusMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode$2;->this$0:Lcom/android/camera/ui/GridSettingPopupFocusMode;

    #getter for: Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/GridSettingPopupFocusMode;->access$100(Lcom/android/camera/ui/GridSettingPopupFocusMode;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode$2;->this$0:Lcom/android/camera/ui/GridSettingPopupFocusMode;

    invoke-virtual {v0}, Lcom/android/camera/ui/GridSettingPopupFocusMode;->reloadPreference()V

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode$2;->this$0:Lcom/android/camera/ui/GridSettingPopupFocusMode;

    #getter for: Lcom/android/camera/ui/GridSettingPopupFocusMode;->mSeekBarLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/ui/GridSettingPopupFocusMode;->access$100(Lcom/android/camera/ui/GridSettingPopupFocusMode;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/GridSettingPopupFocusMode$2;->this$0:Lcom/android/camera/ui/GridSettingPopupFocusMode;

    iget-object v0, v0, Lcom/android/camera/ui/GridSettingPopup;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 137
    :cond_0
    return-void
.end method
