.class Lcom/android/gallery3d/app/AbstractGalleryActivity$3;
.super Ljava/lang/Object;
.source "AbstractGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/app/AbstractGalleryActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/gallery3d/app/AbstractGalleryActivity$3;->this$0:Lcom/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 189
    return-void
.end method
