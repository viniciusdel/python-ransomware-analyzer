.class Landroid/support/design/internal/NavigationMenuPresenter$HeaderViewHolder;
.super Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;
.source "NavigationMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 293
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/internal/NavigationMenuPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 294
    return-void
.end method
