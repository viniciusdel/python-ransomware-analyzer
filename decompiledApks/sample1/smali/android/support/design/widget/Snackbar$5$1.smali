.class Landroid/support/design/widget/Snackbar$5$1;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar$5;->onViewDetachedFromWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/design/widget/Snackbar$5;


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar$5;)V
    .locals 4

    .prologue
    .line 482
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/Snackbar$5$1;->this$1:Landroid/support/design/widget/Snackbar$5;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 485
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/Snackbar$5$1;->this$1:Landroid/support/design/widget/Snackbar$5;

    iget-object v1, v1, Landroid/support/design/widget/Snackbar$5;->this$0:Landroid/support/design/widget/Snackbar;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/support/design/widget/Snackbar;->access$300(Landroid/support/design/widget/Snackbar;I)V

    .line 486
    return-void
.end method
