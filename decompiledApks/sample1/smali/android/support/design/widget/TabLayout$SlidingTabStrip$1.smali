.class Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;


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

.field final synthetic val$startLeft:I

.field final synthetic val$startRight:I

.field final synthetic val$targetLeft:I

.field final synthetic val$targetRight:I


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout$SlidingTabStrip;IIII)V
    .locals 8

    .prologue
    .line 1633
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v6, v0

    move v7, v2

    iput v7, v6, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$startLeft:I

    move-object v6, v0

    move v7, v3

    iput v7, v6, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$targetLeft:I

    move-object v6, v0

    move v7, v4

    iput v7, v6, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$startRight:I

    move-object v6, v0

    move v7, v5

    iput v7, v6, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$targetRight:I

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/support/design/widget/ValueAnimatorCompat;)V
    .locals 8

    .prologue
    .line 1636
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/design/widget/ValueAnimatorCompat;->getAnimatedFraction()F

    move-result v3

    move v2, v3

    .line 1637
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->this$1:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$startLeft:I

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$targetLeft:I

    move v6, v2

    invoke-static {v4, v5, v6}, Landroid/support/design/widget/AnimationUtils;->lerp(IIF)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$startRight:I

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/TabLayout$SlidingTabStrip$1;->val$targetRight:I

    move v7, v2

    invoke-static {v5, v6, v7}, Landroid/support/design/widget/AnimationUtils;->lerp(IIF)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->access$1900(Landroid/support/design/widget/TabLayout$SlidingTabStrip;II)V

    .line 1640
    return-void
.end method
