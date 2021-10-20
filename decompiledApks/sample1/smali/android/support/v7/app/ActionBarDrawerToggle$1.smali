.class Landroid/support/v7/app/ActionBarDrawerToggle$1;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ActionBarDrawerToggle;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarDrawerToggle;)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-static {v2}, Landroid/support/v7/app/ActionBarDrawerToggle;->access$000(Landroid/support/v7/app/ActionBarDrawerToggle;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-static {v2}, Landroid/support/v7/app/ActionBarDrawerToggle;->access$100(Landroid/support/v7/app/ActionBarDrawerToggle;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-static {v2}, Landroid/support/v7/app/ActionBarDrawerToggle;->access$200(Landroid/support/v7/app/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 202
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-static {v2}, Landroid/support/v7/app/ActionBarDrawerToggle;->access$200(Landroid/support/v7/app/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
