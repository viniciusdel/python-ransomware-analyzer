.class Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewElevationComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 1589
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 7

    .prologue
    .line 1592
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getZ(Landroid/view/View;)F

    move-result v5

    move v3, v5

    .line 1593
    move-object v5, v2

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getZ(Landroid/view/View;)F

    move-result v5

    move v4, v5

    .line 1594
    move v5, v3

    move v6, v4

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 1595
    const/4 v5, -0x1

    move v0, v5

    .line 1599
    :goto_0
    return v0

    .line 1596
    :cond_0
    move v5, v3

    move v6, v4

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 1597
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 1599
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 1589
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v3

    move v0, v3

    return v0
.end method
