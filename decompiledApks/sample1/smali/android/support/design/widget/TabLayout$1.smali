.class Landroid/support/design/widget/TabLayout$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TabLayout;->createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 4

    .prologue
    .line 661
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout$1;->this$0:Landroid/support/design/widget/TabLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 664
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    check-cast v3, Landroid/support/design/widget/TabLayout$TabView;

    move-object v2, v3

    .line 665
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$TabView;->getTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 666
    return-void
.end method
