.class Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Gingerbread;
.super Ljava/lang/Object;
.source "ItemTouchUIUtilImpl.java"

# interfaces
.implements Landroid/support/v7/widget/helper/ItemTouchUIUtil;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Gingerbread"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FF)V
    .locals 11

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 106
    move-object v6, v1

    move v7, v4

    move v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    move-object v6, v2

    move-object v7, v1

    move-object v8, v3

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v6

    .line 108
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    .line 109
    return-void
.end method


# virtual methods
.method public clearView(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 113
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 14

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, v6

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 125
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    invoke-direct/range {v8 .. v13}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Gingerbread;->draw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FF)V

    .line 127
    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 14

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move v8, v6

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 134
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    move v13, v5

    invoke-direct/range {v8 .. v13}, Landroid/support/v7/widget/helper/ItemTouchUIUtilImpl$Gingerbread;->draw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FF)V

    .line 136
    :cond_0
    return-void
.end method

.method public onSelected(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 119
    return-void
.end method
