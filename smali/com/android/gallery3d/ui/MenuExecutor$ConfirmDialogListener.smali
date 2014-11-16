.class Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;
.super Ljava/lang/Object;
.source "MenuExecutor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/ui/MenuExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmDialogListener"
.end annotation


# instance fields
.field private final mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

.field final synthetic this$0:Lcom/android/gallery3d/ui/MenuExecutor;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    .locals 0
    .parameter
    .parameter "actionId"
    .parameter "listener"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 253
    #setter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActionId:I
    invoke-static {p1, p2}, Lcom/android/gallery3d/ui/MenuExecutor;->access$402(Lcom/android/gallery3d/ui/MenuExecutor;I)I

    .line 254
    iput-object p3, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    .line 255
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 276
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 259
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    iget-object v1, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->this$0:Lcom/android/gallery3d/ui/MenuExecutor;

    #getter for: Lcom/android/gallery3d/ui/MenuExecutor;->mActionId:I
    invoke-static {v1}, Lcom/android/gallery3d/ui/MenuExecutor;->access$400(Lcom/android/gallery3d/ui/MenuExecutor;)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    #calls: Lcom/android/gallery3d/ui/MenuExecutor;->onMenuClicked(ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V
    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/ui/MenuExecutor;->access$500(Lcom/android/gallery3d/ui/MenuExecutor;ILcom/android/gallery3d/ui/MenuExecutor$ProgressListener;)V

    .line 269
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/gallery3d/ui/MenuExecutor$ConfirmDialogListener;->mListener:Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/MenuExecutor$ProgressListener;->onConfirmDialogDismissed(Z)V

    goto :goto_0
.end method
