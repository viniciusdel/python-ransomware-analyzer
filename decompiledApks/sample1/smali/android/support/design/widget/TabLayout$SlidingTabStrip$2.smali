.class Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;
.super Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)V
    .locals 5

    .prologue
    .line 1642
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->val$position:I

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/ValueAnimatorCompat$AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 4

    .prologue
    .line 1651
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->val$position:I

    invoke-static {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->access$2002(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)I

    move-result v2

    .line 1652
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->access$2102(Landroid/support/design/widget/TabLayout$SlidingTabStrip;F)F

    move-result v2

    .line 1653
    return-void
.end method

.method public onAnimationEnd(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 4

    .prologue
    .line 1645
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->val$position:I

    invoke-static {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->access$2002(Landroid/support/design/widget/TabLayout$SlidingTabStrip;I)I

    move-result v2

    .line 1646
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout$SlidingTabStrip$2;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->access$2102(Landroid/support/design/widget/TabLayout$SlidingTabStrip;F)F

    move-result v2

    .line 1647
    return-void
.end method
