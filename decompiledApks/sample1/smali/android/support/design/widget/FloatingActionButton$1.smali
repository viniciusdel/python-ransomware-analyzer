.class Landroid/support/design/widget/FloatingActionButton$1;
.super Ljava/lang/Object;
.source "FloatingActionButton.java"

# interfaces
.implements Landroid/support/design/widget/ShadowViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/FloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/FloatingActionButton;


# direct methods
.method constructor <init>(Landroid/support/design/widget/FloatingActionButton;)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRadius()F
    .locals 3

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButton;->getSizeDimension()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/design/widget/FloatingActionButton;->access$201(Landroid/support/design/widget/FloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    .line 145
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 11

    .prologue
    .line 136
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v5}, Landroid/support/design/widget/FloatingActionButton;->access$000(Landroid/support/design/widget/FloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v5

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 138
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v7}, Landroid/support/design/widget/FloatingActionButton;->access$100(Landroid/support/design/widget/FloatingActionButton;)I

    move-result v7

    add-int/2addr v6, v7

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v8}, Landroid/support/design/widget/FloatingActionButton;->access$100(Landroid/support/design/widget/FloatingActionButton;)I

    move-result v8

    add-int/2addr v7, v8

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v9}, Landroid/support/design/widget/FloatingActionButton;->access$100(Landroid/support/design/widget/FloatingActionButton;)I

    move-result v9

    add-int/2addr v8, v9

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/FloatingActionButton$1;->this$0:Landroid/support/design/widget/FloatingActionButton;

    invoke-static {v10}, Landroid/support/design/widget/FloatingActionButton;->access$100(Landroid/support/design/widget/FloatingActionButton;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/design/widget/FloatingActionButton;->setPadding(IIII)V

    .line 140
    return-void
.end method
