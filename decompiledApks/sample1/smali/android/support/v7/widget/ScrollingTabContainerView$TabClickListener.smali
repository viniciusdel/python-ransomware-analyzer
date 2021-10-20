.class Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ScrollingTabContainerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V
    .locals 4

    .prologue
    .line 571
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/support/v7/widget/ScrollingTabContainerView$1;)V
    .locals 5

    .prologue
    .line 571
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .prologue
    .line 573
    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    check-cast v6, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    move-object v2, v6

    .line 574
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/app/ActionBar$Tab;->select()V

    .line 575
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-static {v6}, Landroid/support/v7/widget/ScrollingTabContainerView;->access$200(Landroid/support/v7/widget/ScrollingTabContainerView;)Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v6

    move v3, v6

    .line 576
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 577
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;

    invoke-static {v6}, Landroid/support/v7/widget/ScrollingTabContainerView;->access$200(Landroid/support/v7/widget/ScrollingTabContainerView;)Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v6

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 578
    move-object v6, v5

    move-object v7, v5

    move-object v8, v1

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 576
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 578
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 580
    :cond_1
    return-void
.end method
