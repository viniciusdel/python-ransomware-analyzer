.class Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffsetUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method private constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 4

    .prologue
    .line 915
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/design/widget/CollapsingToolbarLayout$1;)V
    .locals 5

    .prologue
    .line 915
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Landroid/support/design/widget/AppBarLayout;I)V
    .locals 14

    .prologue
    .line 918
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    move v11, v2

    invoke-static {v10, v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$302(Landroid/support/design/widget/CollapsingToolbarLayout;I)I

    move-result v10

    .line 920
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$000(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v10

    if-eqz v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$000(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v10

    :goto_0
    move v3, v10

    .line 921
    move-object v10, v1

    invoke-virtual {v10}, Landroid/support/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v10

    move v4, v10

    .line 923
    const/4 v10, 0x0

    move v5, v10

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v10

    move v6, v10

    :goto_1
    move v10, v5

    move v11, v6

    if-ge v10, v11, :cond_2

    .line 924
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    move v11, v5

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v7, v10

    .line 925
    move-object v10, v7

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-object v8, v10

    .line 926
    move-object v10, v7

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$400(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v10

    move-object v9, v10

    .line 928
    move-object v10, v8

    iget v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mCollapseMode:I

    packed-switch v10, :pswitch_data_0

    .line 923
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 920
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 930
    :pswitch_0
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v10

    move v11, v3

    sub-int/2addr v10, v11

    move v11, v2

    add-int/2addr v10, v11

    move-object v11, v7

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v11

    if-lt v10, v11, :cond_0

    .line 931
    move-object v10, v9

    move v11, v2

    neg-int v11, v11

    invoke-virtual {v10, v11}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v10

    goto :goto_2

    .line 935
    :pswitch_1
    move-object v10, v9

    move v11, v2

    neg-int v11, v11

    int-to-float v11, v11

    move-object v12, v8

    iget v12, v12, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->mParallaxMult:F

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v10

    goto :goto_2

    .line 942
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$500(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-nez v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$600(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 943
    :cond_3
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v11

    move v12, v2

    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v12}, Landroid/support/design/widget/CollapsingToolbarLayout;->getScrimTriggerOffset()I

    move-result v12

    move v13, v3

    add-int/2addr v12, v13

    if-ge v11, v12, :cond_6

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v10, v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(Z)V

    .line 946
    :cond_4
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$600(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_5

    move v10, v3

    if-lez v10, :cond_5

    .line 947
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 951
    :cond_5
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v11}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v11

    sub-int/2addr v10, v11

    move v11, v3

    sub-int/2addr v10, v11

    move v5, v10

    .line 953
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$700(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/design/widget/CollapsingTextHelper;

    move-result-object v10

    move v11, v2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-float v11, v11

    move v12, v5

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 956
    move v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    move v11, v4

    if-ne v10, v11, :cond_7

    .line 959
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Landroid/support/design/widget/AppBarLayout;->getTargetElevation()F

    move-result v11

    invoke-static {v10, v11}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 964
    :goto_4
    return-void

    .line 943
    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    .line 962
    :cond_7
    move-object v10, v1

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    goto :goto_4

    .line 928
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
