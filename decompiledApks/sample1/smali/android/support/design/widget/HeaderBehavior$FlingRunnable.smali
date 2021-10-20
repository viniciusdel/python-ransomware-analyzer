.class Landroid/support/design/widget/HeaderBehavior$FlingRunnable;
.super Ljava/lang/Object;
.source "HeaderBehavior.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/HeaderBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private final mLayout:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final mParent:Landroid/support/design/widget/CoordinatorLayout;

.field final synthetic this$0:Landroid/support/design/widget/HeaderBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 283
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    .line 284
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    .line 285
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    invoke-static {v1}, Landroid/support/design/widget/HeaderBehavior;->access$000(Landroid/support/design/widget/HeaderBehavior;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    invoke-static {v1}, Landroid/support/design/widget/HeaderBehavior;->access$000(Landroid/support/design/widget/HeaderBehavior;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mParent:Landroid/support/design/widget/CoordinatorLayout;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->this$0:Landroid/support/design/widget/HeaderBehavior;

    invoke-static {v4}, Landroid/support/design/widget/HeaderBehavior;->access$000(Landroid/support/design/widget/HeaderBehavior;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/design/widget/HeaderBehavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    move-result v1

    .line 293
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/HeaderBehavior$FlingRunnable;->mLayout:Landroid/view/View;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 295
    :cond_0
    return-void
.end method
