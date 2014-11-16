.class Lcom/android/camera/ui/EvControlBar$1;
.super Ljava/lang/Object;
.source "EvControlBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/EvControlBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/EvControlBar;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/EvControlBar;)V
    .locals 0
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/camera/ui/EvControlBar$1;->this$0:Lcom/android/camera/ui/EvControlBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/EvControlBar$1;->this$0:Lcom/android/camera/ui/EvControlBar;

    const/4 v1, 0x1

    #setter for: Lcom/android/camera/ui/EvControlBar;->mDown:Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/EvControlBar;->access$002(Lcom/android/camera/ui/EvControlBar;Z)Z

    .line 173
    return-void
.end method
