.class Landroid/support/design/widget/ViewGroupUtilsHoneycomb;
.super Ljava/lang/Object;
.source "ViewGroupUtilsHoneycomb.java"


# static fields
.field private static final IDENTITY:Landroid/graphics/Matrix;

.field private static final sMatrix:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRectF:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/design/widget/ViewGroupUtilsHoneycomb;->sMatrix:Ljava/lang/ThreadLocal;

    .line 28
    new-instance v0, Ljava/lang/ThreadLocal;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/design/widget/ViewGroupUtilsHoneycomb;->sRectF:Ljava/lang/ThreadLocal;

    .line 29
    new-instance v0, Landroid/graphics/Matrix;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Landroid/support/design/widget/ViewGroupUtilsHoneycomb;->IDENTITY:Landroid/graphics/Matrix;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V
    .locals 8

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 54
    move-object v5, v3

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v5, v3

    move-object v6, v0

    if-eq v5, v6, :cond_0

    .line 55
    move-object v5, v3

    check-cast v5, Landroid/view/View;

    move-object v4, v5

    .line 56
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    invoke-static {v5, v6, v7}, Landroid/support/design/widget/ViewGroupUtilsHoneycomb;->offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 57
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v5

    .line 60
    :cond_0
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    move-result v5

    .line 62
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v5

    if-nez v5, :cond_1

    .line 63
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    move-result v5

    .line 65
    :cond_1
    return-void
.end method

.method public static offsetDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 12

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    sget-object v5, Landroid/support/design/widget/ViewGroupUtilsHoneycomb;->sMatrix:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Matrix;

    move-object v3, v5

    .line 33
    move-object v5, v3

    if-nez v5, :cond_1

    .line 34
    new-instance v5, Landroid/graphics/Matrix;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move-object v3, v5

    .line 35
    sget-object v5, Landroid/support/design/widget/ViewGroupUtilsHoneycomb;->sMatrix:Ljava/lang/ThreadLocal;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 40
    :goto_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-static {v5, v6, v7}, Landroid/support/design/widget/ViewGroupUtilsHoneycomb;->offsetDescendantMatrix(Landroid/view/ViewParent;Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 42
    sget-object v5, Landroid/support/design/widget/ViewGroupUtilsHoneycomb;->sRectF:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    move-object v4, v5

    .line 43
    move-object v5, v4

    if-nez v5, :cond_0

    .line 44
    new-instance v5, Landroid/graphics/RectF;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move-object v4, v5

    .line 46
    :cond_0
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 47
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-result v5

    .line 48
    move-object v5, v2

    move-object v6, v4

    iget v6, v6, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    move-object v7, v4

    iget v7, v7, Landroid/graphics/RectF;->top:F

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    move-object v8, v4

    iget v8, v8, Landroid/graphics/RectF;->right:F

    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v8, v9

    float-to-int v8, v8

    move-object v9, v4

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 50
    return-void

    .line 37
    :cond_1
    move-object v5, v3

    sget-object v6, Landroid/support/design/widget/ViewGroupUtilsHoneycomb;->IDENTITY:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method
