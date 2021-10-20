.class Landroid/support/v7/widget/ToolbarWidgetWrapper$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ToolbarWidgetWrapper;I)V
    .locals 5

    .prologue
    .line 593
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    .line 594
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 610
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    .line 611
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 603
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    if-nez v2, :cond_0

    .line 604
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {v2}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->access$000(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->val$visibility:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 606
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 598
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;

    invoke-static {v2}, Landroid/support/v7/widget/ToolbarWidgetWrapper;->access$000(Landroid/support/v7/widget/ToolbarWidgetWrapper;)Landroid/support/v7/widget/Toolbar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 599
    return-void
.end method
