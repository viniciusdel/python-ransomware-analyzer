.class Landroid/support/design/internal/ScrimInsetsFrameLayout$1;
.super Ljava/lang/Object;
.source "ScrimInsetsFrameLayout.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;


# direct methods
.method constructor <init>(Landroid/support/design/internal/ScrimInsetsFrameLayout;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 9

    .prologue
    .line 66
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-static {v4}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->access$000(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 67
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    new-instance v4, Landroid/graphics/Rect;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v3, v4}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->access$002(Landroid/support/design/internal/ScrimInsetsFrameLayout;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 69
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-static {v3}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->access$000(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 73
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-static {v4}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->access$000(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-static {v4}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->access$100(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 74
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;->this$0:Landroid/support/design/internal/ScrimInsetsFrameLayout;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 75
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 73
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method
