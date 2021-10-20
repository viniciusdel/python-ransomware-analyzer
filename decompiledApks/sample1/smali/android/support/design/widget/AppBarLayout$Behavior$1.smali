.class Landroid/support/design/widget/AppBarLayout$Behavior$1;
.super Ljava/lang/Object;
.source "AppBarLayout.java"

# interfaces
.implements Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;->animateOffsetTo(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/AppBarLayout$Behavior;

.field final synthetic val$child:Landroid/support/design/widget/AppBarLayout;

.field final synthetic val$coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/AppBarLayout$Behavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/support/design/widget/AppBarLayout;)V
    .locals 6

    .prologue
    .line 819
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/design/widget/AppBarLayout$Behavior$1;->this$0:Landroid/support/design/widget/AppBarLayout$Behavior;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/design/widget/AppBarLayout$Behavior$1;->val$coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Landroid/support/design/widget/AppBarLayout$Behavior$1;->val$child:Landroid/support/design/widget/AppBarLayout;

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 6

    .prologue
    .line 822
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/AppBarLayout$Behavior$1;->this$0:Landroid/support/design/widget/AppBarLayout$Behavior;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/AppBarLayout$Behavior$1;->val$coordinatorLayout:Landroid/support/design/widget/CoordinatorLayout;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/AppBarLayout$Behavior$1;->val$child:Landroid/support/design/widget/AppBarLayout;

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/design/widget/ValueAnimatorCompat;->getAnimatedIntValue()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/design/widget/AppBarLayout$Behavior;->setHeaderTopBottomOffset(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    move-result v2

    .line 824
    return-void
.end method
