.class Lcom/android/camera/ui/EffectSurfacePopup$1;
.super Ljava/lang/Object;
.source "EffectSurfacePopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EffectSurfacePopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/EffectSurfacePopup;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/EffectSurfacePopup;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/camera/ui/EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/EffectSurfacePopup;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 89
    .local v0, index:I
    iget-object v1, p0, Lcom/android/camera/ui/EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/EffectSurfacePopup;

    #getter for: Lcom/android/camera/ui/EffectSurfacePopup;->mSelectedIndex:I
    invoke-static {v1}, Lcom/android/camera/ui/EffectSurfacePopup;->access$000(Lcom/android/camera/ui/EffectSurfacePopup;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/EffectSurfacePopup;

    #setter for: Lcom/android/camera/ui/EffectSurfacePopup;->mSelectedIndex:I
    invoke-static {v1, v0}, Lcom/android/camera/ui/EffectSurfacePopup;->access$002(Lcom/android/camera/ui/EffectSurfacePopup;I)I

    .line 91
    iget-object v1, p0, Lcom/android/camera/ui/EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/EffectSurfacePopup;

    iget-object v1, v1, Lcom/android/camera/ui/AbstractSettingPopup;->mPreference:Lcom/android/camera/preferences/IconListPreference;

    iget-object v2, p0, Lcom/android/camera/ui/EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/EffectSurfacePopup;

    #getter for: Lcom/android/camera/ui/EffectSurfacePopup;->mSelectedIndex:I
    invoke-static {v2}, Lcom/android/camera/ui/EffectSurfacePopup;->access$000(Lcom/android/camera/ui/EffectSurfacePopup;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/preferences/IconListPreference;->setValueIndex(I)V

    .line 93
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 94
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/EffectSurfacePopup;

    #getter for: Lcom/android/camera/ui/EffectSurfacePopup;->mSelectedIndex:I
    invoke-static {v2}, Lcom/android/camera/ui/EffectSurfacePopup;->access$000(Lcom/android/camera/ui/EffectSurfacePopup;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->setEffect(I)V

    .line 95
    iget-object v1, p0, Lcom/android/camera/ui/EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/EffectSurfacePopup;

    #getter for: Lcom/android/camera/ui/EffectSurfacePopup;->mEffectCropView:Lcom/android/camera/ui/EffectCropView;
    invoke-static {v1}, Lcom/android/camera/ui/EffectSurfacePopup;->access$100(Lcom/android/camera/ui/EffectSurfacePopup;)Lcom/android/camera/ui/EffectCropView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/EffectCropView;->updateVisible()V

    .line 97
    iget-object v1, p0, Lcom/android/camera/ui/EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/EffectSurfacePopup;

    iget-object v1, v1, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/EffectSurfacePopup$1;->this$0:Lcom/android/camera/ui/EffectSurfacePopup;

    iget-object v1, v1, Lcom/android/camera/ui/AbstractSettingPopup;->mListener:Lcom/android/camera/ui/AbstractSettingPopup$Listener;

    invoke-interface {v1}, Lcom/android/camera/ui/AbstractSettingPopup$Listener;->onSettingChanged()V

    goto :goto_0
.end method
