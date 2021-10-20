.class Landroid/support/design/internal/NavigationMenuPresenter$1;
.super Ljava/lang/Object;
.source "NavigationMenuPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/internal/NavigationMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/internal/NavigationMenuPresenter;


# direct methods
.method constructor <init>(Landroid/support/design/internal/NavigationMenuPresenter;)V
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 305
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    check-cast v5, Landroid/support/design/internal/NavigationMenuItemView;

    move-object v2, v5

    .line 306
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 307
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/design/internal/NavigationMenuItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v5

    move-object v3, v5

    .line 308
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$000(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;

    move-result-object v5

    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z

    move-result v5

    move v4, v5

    .line 309
    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    if-eqz v5, :cond_0

    .line 310
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    invoke-static {v5}, Landroid/support/design/internal/NavigationMenuPresenter;->access$100(Landroid/support/design/internal/NavigationMenuPresenter;)Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuPresenter$NavigationMenuAdapter;->setCheckedItem(Landroid/support/v7/view/menu/MenuItemImpl;)V

    .line 312
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuPresenter;->setUpdateSuspended(Z)V

    .line 313
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/NavigationMenuPresenter$1;->this$0:Landroid/support/design/internal/NavigationMenuPresenter;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/design/internal/NavigationMenuPresenter;->updateMenuView(Z)V

    .line 314
    return-void
.end method
