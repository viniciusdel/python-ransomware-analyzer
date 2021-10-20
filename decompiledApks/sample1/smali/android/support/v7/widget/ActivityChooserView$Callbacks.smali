.class Landroid/support/v7/widget/ActivityChooserView$Callbacks;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActivityChooserView;)V
    .locals 4

    .prologue
    .line 552
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActivityChooserView;Landroid/support/v7/widget/ActivityChooserView$1;)V
    .locals 5

    .prologue
    .line 552
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ActivityChooserView$Callbacks;-><init>(Landroid/support/v7/widget/ActivityChooserView;)V

    return-void
.end method

.method private notifyOnDismissListener()V
    .locals 2

    .prologue
    .line 628
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/widget/ActivityChooserView;->access$1000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 629
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/widget/ActivityChooserView;->access$1000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 631
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    .line 588
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v6}, Landroid/support/v7/widget/ActivityChooserView;->access$700(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v6

    if-ne v5, v6, :cond_1

    .line 589
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v5}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    move-result v5

    .line 590
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v5}, Landroid/support/v7/widget/ActivityChooserView;->access$000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    move-object v2, v5

    .line 591
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v5}, Landroid/support/v7/widget/ActivityChooserView;->access$000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I

    move-result v5

    move v3, v5

    .line 592
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v5}, Landroid/support/v7/widget/ActivityChooserView;->access$000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v5

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v5

    move-object v4, v5

    .line 593
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 594
    move-object v5, v4

    const/high16 v6, 0x80000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v5

    .line 595
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v5}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v6}, Landroid/support/v7/widget/ActivityChooserView;->access$800(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 598
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/support/v7/widget/ActivityChooserView;->access$602(Landroid/support/v7/widget/ActivityChooserView;Z)Z

    move-result v5

    .line 599
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v6}, Landroid/support/v7/widget/ActivityChooserView;->access$900(Landroid/support/v7/widget/ActivityChooserView;)I

    move-result v6

    invoke-static {v5, v6}, Landroid/support/v7/widget/ActivityChooserView;->access$500(Landroid/support/v7/widget/ActivityChooserView;I)V

    goto :goto_0

    .line 601
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method

.method public onDismiss()V
    .locals 3

    .prologue
    .line 621
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->notifyOnDismissListener()V

    .line 622
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v1, :cond_0

    .line 623
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    iget-object v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V

    .line 625
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 557
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object v9, v1

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-object v6, v9

    .line 558
    move-object v9, v6

    move v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I

    move-result v9

    move v7, v9

    .line 559
    move v9, v7

    packed-switch v9, :pswitch_data_0

    .line 582
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 561
    :pswitch_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    const v10, 0x7fffffff

    invoke-static {v9, v10}, Landroid/support/v7/widget/ActivityChooserView;->access$500(Landroid/support/v7/widget/ActivityChooserView;I)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 564
    :pswitch_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z

    move-result v9

    .line 565
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v9}, Landroid/support/v7/widget/ActivityChooserView;->access$600(Landroid/support/v7/widget/ActivityChooserView;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 567
    move v9, v3

    if-lez v9, :cond_0

    .line 568
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v9}, Landroid/support/v7/widget/ActivityChooserView;->access$000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActivityChooserModel;->setDefaultActivity(I)V

    goto :goto_0

    .line 573
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v9}, Landroid/support/v7/widget/ActivityChooserView;->access$000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z

    move-result v9

    if-eqz v9, :cond_3

    move v9, v3

    :goto_1
    move v3, v9

    .line 574
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v9}, Landroid/support/v7/widget/ActivityChooserView;->access$000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;

    move-result-object v9

    move v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;

    move-result-object v9

    move-object v8, v9

    .line 575
    move-object v9, v8

    if-eqz v9, :cond_2

    .line 576
    move-object v9, v8

    const/high16 v10, 0x80000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v9

    .line 577
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-virtual {v9}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object v10, v8

    invoke-virtual {v9, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 580
    :cond_2
    goto :goto_0

    .line 573
    :cond_3
    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 559
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 608
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v3}, Landroid/support/v7/widget/ActivityChooserView;->access$700(Landroid/support/v7/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 609
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v2}, Landroid/support/v7/widget/ActivityChooserView;->access$000(Landroid/support/v7/widget/ActivityChooserView;)Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 610
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v7/widget/ActivityChooserView;->access$602(Landroid/support/v7/widget/ActivityChooserView;Z)Z

    move-result v2

    .line 611
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;

    invoke-static {v3}, Landroid/support/v7/widget/ActivityChooserView;->access$900(Landroid/support/v7/widget/ActivityChooserView;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/ActivityChooserView;->access$500(Landroid/support/v7/widget/ActivityChooserView;I)V

    .line 616
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    return v0

    .line 614
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method
