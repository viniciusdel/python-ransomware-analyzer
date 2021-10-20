.class Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Lollipop;
.super Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;
.source "ItemTouchUIUtilImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Lollipop"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;-><init>()V

    return-void
.end method

.method private findMaxElevation(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)F
    .locals 10

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v1

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v8

    move v3, v8

    .line 49
    const/4 v8, 0x0

    move v4, v8

    .line 50
    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v3

    if-ge v8, v9, :cond_2

    .line 51
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object v6, v8

    .line 52
    move-object v8, v6

    move-object v9, v2

    if-ne v8, v9, :cond_1

    .line 50
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 55
    :cond_1
    move-object v8, v6

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v8

    move v7, v8

    .line 56
    move v8, v7

    move v9, v4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 57
    move v8, v7

    move v4, v8

    goto :goto_1

    .line 60
    :cond_2
    move v8, v4

    move v0, v8

    return v0
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    sget v4, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    .line 66
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Float;

    if-eqz v3, :cond_0

    .line 67
    move-object v3, v1

    move-object v4, v2

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 69
    :cond_0
    move-object v3, v1

    sget v4, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 70
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;->clearView(Landroid/view/View;)V

    .line 71
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 18

    .prologue
    .line 35
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move v10, v7

    if-eqz v10, :cond_0

    .line 36
    move-object v10, v3

    sget v11, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    move-object v8, v10

    .line 37
    move-object v10, v8

    if-nez v10, :cond_0

    .line 38
    move-object v10, v3

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    move-object v8, v10

    .line 39
    const/high16 v10, 0x3f800000    # 1.0f

    move-object v11, v0

    move-object v12, v2

    move-object v13, v3

    invoke-direct {v11, v12, v13}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Lollipop;->findMaxElevation(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)F

    move-result v11

    add-float/2addr v10, v11

    move v9, v10

    .line 40
    move-object v10, v3

    move v11, v9

    invoke-static {v10, v11}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 41
    move-object v10, v3

    sget v11, Landroid/support/v7/recyclerview/R$id;->item_touch_helper_previous_elevation:I

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 44
    :cond_0
    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-super/range {v10 .. v17}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Honeycomb;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 45
    return-void
.end method
