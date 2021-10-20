.class Landroid/support/design/widget/Snackbar$10;
.super Ljava/lang/Object;
.source "Snackbar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/Snackbar;->animateViewOut(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/Snackbar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/Snackbar;I)V
    .locals 5

    .prologue
    .line 574
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/Snackbar$10;->this$0:Landroid/support/design/widget/Snackbar;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/design/widget/Snackbar$10;->val$event:I

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 577
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/Snackbar$10;->this$0:Landroid/support/design/widget/Snackbar;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/Snackbar$10;->val$event:I

    invoke-static {v2, v3}, Landroid/support/design/widget/Snackbar;->access$300(Landroid/support/design/widget/Snackbar;I)V

    .line 578
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 584
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 581
    return-void
.end method
