.class Landroid/support/design/widget/CollapsingToolbarLayout$1;
.super Ljava/lang/Object;
.source "CollapsingToolbarLayout.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CollapsingToolbarLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V
    .locals 4

    .prologue
    .line 213
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout$1;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout$1;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->access$002(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v3

    .line 218
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout$1;->this$0:Landroid/support/design/widget/CollapsingToolbarLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 219
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
