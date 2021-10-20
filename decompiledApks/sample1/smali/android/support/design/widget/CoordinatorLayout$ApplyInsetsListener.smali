.class final Landroid/support/design/widget/CoordinatorLayout$ApplyInsetsListener;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ApplyInsetsListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/CoordinatorLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 4

    .prologue
    .line 2522
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$ApplyInsetsListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5

    .prologue
    .line 2525
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$ApplyInsetsListener;->this$0:Landroid/support/design/widget/CoordinatorLayout;

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/design/widget/CoordinatorLayout;->access$000(Landroid/support/design/widget/CoordinatorLayout;Landroid/support/v4/view/WindowInsetsCompat;)V

    .line 2526
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method
