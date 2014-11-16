.class Lcom/android/camera/module/PanoramaModule$5;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/PanoramaModule;->createContentView()V
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
    .line 692
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$5;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .locals 7
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 695
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule$5;->this$0:Lcom/android/camera/module/PanoramaModule;

    #getter for: Lcom/android/camera/module/PanoramaModule;->mCaptureState:I
    invoke-static {v2}, Lcom/android/camera/module/PanoramaModule;->access$400(Lcom/android/camera/module/PanoramaModule;)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 696
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule$5;->this$0:Lcom/android/camera/module/PanoramaModule;

    #getter for: Lcom/android/camera/module/PanoramaModule;->mProgressArea:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/module/PanoramaModule;->access$1900(Lcom/android/camera/module/PanoramaModule;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 697
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule$5;->this$0:Lcom/android/camera/module/PanoramaModule;

    #getter for: Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/module/PanoramaModule;->access$2000(Lcom/android/camera/module/PanoramaModule;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 698
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule$5;->this$0:Lcom/android/camera/module/PanoramaModule;

    #getter for: Lcom/android/camera/module/PanoramaModule;->mProgressArea:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/module/PanoramaModule;->access$1900(Lcom/android/camera/module/PanoramaModule;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule$5;->this$0:Lcom/android/camera/module/PanoramaModule;

    const v3, 0x7f0c0066

    invoke-virtual {v2, v3}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 701
    .local v0, leftIndicator:Landroid/view/View;
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule$5;->this$0:Lcom/android/camera/module/PanoramaModule;

    const v3, 0x7f0c0067

    invoke-virtual {v2, v3}, Lcom/android/camera/module/PanoramaModule;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 702
    .local v1, rightIndicator:Landroid/view/View;
    if-ne p1, v6, :cond_2

    .line 703
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 704
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 710
    .end local v0           #leftIndicator:Landroid/view/View;
    .end local v1           #rightIndicator:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 706
    .restart local v0       #leftIndicator:Landroid/view/View;
    .restart local v1       #rightIndicator:Landroid/view/View;
    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 707
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
