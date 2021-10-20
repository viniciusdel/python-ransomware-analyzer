.class Landroid/support/design/widget/CoordinatorLayout$1;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$1;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 7

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    if-ne v3, v4, :cond_0

    .line 122
    const/4 v3, 0x0

    move v0, v3

    .line 130
    :goto_0
    return v0

    .line 123
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CoordinatorLayout$1;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 126
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CoordinatorLayout$1;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0

    .line 130
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/view/View;

    move-object v5, v2

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout$1;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v3

    move v0, v3

    return v0
.end method
