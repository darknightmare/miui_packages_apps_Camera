.class Lcom/android/camera/ui/FocusIndicatorRotateLayout$StartAction;
.super Ljava/lang/Object;
.source "FocusIndicatorRotateLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusIndicatorRotateLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$StartAction;->this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;Lcom/android/camera/ui/FocusIndicatorRotateLayout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout$StartAction;-><init>(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$StartAction;->this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    #getter for: Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I
    invoke-static {v0}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->access$200(Lcom/android/camera/ui/FocusIndicatorRotateLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$StartAction;->this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    iget-object v0, v0, Lcom/android/camera/ui/RotateLayout;->mChild:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/FocusIndicatorRotateLayout$StartAction;->this$0:Lcom/android/camera/ui/FocusIndicatorRotateLayout;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/ui/FocusIndicatorRotateLayout;->mState:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/FocusIndicatorRotateLayout;->access$202(Lcom/android/camera/ui/FocusIndicatorRotateLayout;I)I

    .line 94
    :cond_0
    return-void
.end method
